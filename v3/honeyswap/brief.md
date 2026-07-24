# Agentic Audit Brief: Honeyswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Honeyswap (`honeyswap`)
- Website: [https://honeyswap.org/](https://honeyswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: gnosis, polygon, polygon-mumbai
- Contract surface: 269 unique implementations (269 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $601,861.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Honeyswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across gnosis, polygon, polygon-mumbai. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b21081c6f8b1990f53fc76279cc41ba22d7afe2`, chain 100)
- UnnamedContract (`0x0e25b918c9fb2fea5d42011d1f4b9f8c61b453e7`, chain 100)
- UnnamedContract (`0x4ba7362f9189572cbb1216819a45aba0d0b2d1cb`, chain 100)
- UnnamedContract (`0x59a15718992a42082ab2306bc6cbd662958a178c`, chain 100)
- UnnamedContract (`0x6f38d112b13eda1e3abafc61e296be2e27f15071`, chain 100)
- UnnamedContract (`0x7714eb44754cb9db6d65b61f3352df12600dc593`, chain 100)
- UnnamedContract (`0x8ccbeab14b5ac4a431fffc39f4bec4089020a155`, chain 100)
- UnnamedContract (`0xbc4fb635636b81e60a4e356c4dceb53cac507d03`, chain 100)
- UnnamedContract (`0xc08fbc829a879470c15916aad14e85905e6ab901`, chain 100)
- UnnamedContract (`0xe71331aef803baec606423b105e4d1c85f012c00`, chain 100)
- UnnamedContract (`0xeb24f7001437188baf2d5ef0b0fcfadad4564517`, chain 100)
- UnnamedContract (`0xed062e26c8f41a9088d060156edc7fc6c17d5825`, chain 100)
- UnnamedContract (`0xfbd0b2726070a9d6aff6d7216c9e9340eae68b2a`, chain 100)
- UnnamedContract (`0x1109052d0155657520ca1869ae25a0a5ad51d24e`, chain 137)
- UnnamedContract (`0x2ae82037c7c9e6af4d24bb0781f6477f29cb160d`, chain 137)
- UnnamedContract (`0x44e4fcfed14e1285c9e0f6eae77d5fdd0f196f85`, chain 137)
- UnnamedContract (`0x517b5c25ee5f972857bd4fd5bffbbd23b1c9bcb7`, chain 137)
- UnnamedContract (`0x8c9968a2b16bc1cd0ead74f5eef25e899e795501`, chain 137)
- UnnamedContract (`0xbc9d027eb4b1d9622f217de10f07dc74b7c81eeb`, chain 137)
- UnnamedContract (`0xc5f12618bc930aab89bfc53b9d20288dfaaf3166`, chain 137)
- UnnamedContract (`0xeac1dc5ccf09e2b816f9544878cd513728fa6af7`, chain 137)
- UnnamedContract (`0xec7904e20b69f60966d6c6b9dc534355614dd922`, chain 137)
- UnnamedContract (`0xf0c8376065fadfacb706cafbaac96b321069c015`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 23 own, 70 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 176 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 23 of 269 unique; 246 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 268
- Unique implementations: 269
- Raw deployments: 269
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MiniMeToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-241878 | `0x71850b7e9ee3f13ab46d67167341e4bdc905eef9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (268)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x01950a7d7a82c424825a14e3c1d181f10c99c151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03eb9e299e76953874c274dc2016cf0c3c2b69d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x058fad765f4b33e3fb9e16b37973efc00249cbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0661c511e6affdf4e16d5a62cd8899ebe583dc43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09327b72157cfe804feee57dfceb50a0ca1af26a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241873 | `0x0b21081c6f8b1990f53fc76279cc41ba22d7afe2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x0b3b17f9705783bb51ae8272f3245d6414229b36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241874 | `0x0e25b918c9fb2fea5d42011d1f4b9f8c61b453e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x102d55784c56688c4f1153a6aeecab79a9889516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x10aa05eabdece76a2f7ddc2bb6d824a0d740b323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x11449fb5969e15e9e3c299d8c2633fdb1eaf3630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x130fe5ddab4dd4a129b1c3ba4bec5f008e94fb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x14e1326445077e2e170eb48785a849e30d502994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1613059b4fbfc2fe2de7e1acaadcf5897cca0346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x186f0bf13d2c1d06ebb296aae0eab9a5008f776d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x198d66044fba4bb87eaba6d03e80d68862b4b3e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1a0d15f1f6d90c2b71eba3859a1f30c91e5af9b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b0a523912141d406d1021bd51d8c3180c71bb6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f0164f1a07e36e4b7f19ed6f209ddc4a7331d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2038976e96cde0187820bd84e6b36d595e979bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x230d3b7d94d838086c88b1d195bd41bc5dbfe1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x244171bc8506be8963d08d10d42f6b45aeb076f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x250030af5ccb531fdc008e77b5664ec8b83a3287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2c3ac82981979af1611f6efb17a4a3a04d1f9245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3067d8d57dabf8105382f5f47c845a7275a8edc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x336ebb4def4da4fad6936874b8c952e800024653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3380856e87f56a7491f7e90a5f3680bf1ae66875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x34c1ec33990bfdffb3e50fb396dd82acff6d80e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x360229267a176a11db407a5cc54734fed6313024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x363bf4ff9c6f0ef616b144fddfb4401d4898e53c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3802a31d1df26e57e44de2ed57e9103b49e9268b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x3c9fdcf51c3447f629fc61f6aaaf2ac3ea852040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3d15077165b638e4868ae196cb2783d342d1b432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3d276fac0841c861026d54aa904e41861c8481e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3e42a61b685d870902f8e7745e9f4682c61eb6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3e436327f27131405860ec9478b4e26071d9a83a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3ee8dabfbead0d29bc118272f0e26878c76c6c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3f619cba13545d0ded9ddd1677e5750b2997f93d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4037f97fcc94287257e50bd14c7da9cb4df18250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x41ab49872ed459c840d0caecd47fcdc201c48307` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4499948d089330df05795b08aa23a964027b9cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44e4fcfed14e1285c9e0f6eae77d5fdd0f196f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x47427e941948c1797fdefdf00e29f2abbbc7de6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4790d9a35c653481df31b914d2022a5ccf016c15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241875 | `0x4ba7362f9189572cbb1216819a45aba0d0b2d1cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4de3793a50474304a61276ad927e30eed35f0ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e18915179a846f90b0342f16e0b274090733ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e4ea6845d7656d569dc4ccc7b68bb3023720837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4fdc6f0684128f1234c4c053e7fe998324c1839a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x5651fb1116da6ff7d2ff79af18d8b4439d2ab59f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241876 | `0x59a15718992a42082ab2306bc6cbd662958a178c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5ac45d239f85caec1de2c8757b63efc18184b53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5af14598f309bdc15a1c74bab98fb8e7b90fb99f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5bf08398305bfd69d452712938c4ffd476470a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5c31656effac2609d28fe901a59e28a93dc9f431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d03e459d1cabff7af228b3a66fc097756ec60ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5dacc18b919ea4e0e02863de587b406ad68bdf34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x6015b94e02c6cf3f96c59c8775b252695a00fd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x62f0362f801e1486f1087ea6d4048390eb93cf48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x646e555928ebc2752730aa344ee959ce846e75ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x66e4dd4f2f882d0c01ef377a843fc979ead66c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x68e18891159475c21e9f98bbb8b33234769328b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241877 | `0x6f38d112b13eda1e3abafc61e296be2e27f15071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6f937495013c7dc42af752d3e0bcc090bd34f7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x714273a7d7544e8a46aad25b69f718f69d8acfbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x737220f0093de46af2aac7501dd95a3f0525d65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7390d41cc179248e23c1bfc9004a467e5b78771a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x75409fa02734668b1c0e351dbc51e93bbd402a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7570c560ccab8455a6726ad54978e6d1ce6fda7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241879 | `0x7714eb44754cb9db6d65b61f3352df12600dc593` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x792281c15227f16bbec04425b60c5b9b678a1c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7aa47999b2dd02996a1014b462f1f6e4e8b59e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7abedb1460c661ce86791f4d33c29032570999d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7c1c6c8a2bd925850cbc227e27aacb6bc1690430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7d006144857c17013f843c385dec300c9d034fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x80f841cfb94317ed10841bca60bc74ec6f59fe04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x812672c031210b439a5befc8f397d639e97e3738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8187a963f1a3de040e957661d2ba31eed22dc465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x89a0fde9843a72a13d993a47a859700f518dfd8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8af13ba3fe8c4279d868dd0720f989ea03692e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8c9968a2b16bc1cd0ead74f5eef25e899e795501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8ca04f6c6be2a2dbf77ddce5fd7a791f31c364ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241880 | `0x8ccbeab14b5ac4a431fffc39f4bec4089020a155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d02d7f2726c8947c01472106a1b6d9dbf14ce7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d5abb64205d6a4f204ce10ba48542f5a244b36c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8ee864e13e4754713db2150f2b584180ee479fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x934da3d016b0499d5b9c118a5f65c92fca922564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x96570478019593592e789fa4afb9946b07549b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa09e33c8dcb1f95f7b79d7fc75a72aadf69eb319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa1516f2de0233031f0ee81b5b8c08a808f15e3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa22dbe10ef96674d5094fadd6e2af62c7618965e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa268dfd49e633c68933d7fc77fa99a867c0b86bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa3667a22e2a95374f0bfe6ce3d287762f48c0ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa54dee0cca6037179b0cc427e50fd3ab3d68a7b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa6ae41ca3cc7fe6b77cdd71e2a8879cee15d6148` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xaafca6b0c89521752e559650206d7c925fd0e530` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xac9ca92d16e8bc0505eda84573d614ffecd8a293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xaed31afb0fe2fe8ccdb56595a689cf96a234c50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xaf0e33997d62b19cff226ac52febea105dfcd1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb0200960dd137b5084554be632cd5990cc2a0a90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb10ee07356b175a3bec591745296ed93d2f857f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb4a75cf740c14e125b684d4f5a39f2ca19e137ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb8923ed029daab31457bbfe7e4716dfc0bf46033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xba13a6414c677d9e7bd3c0bde5ba4055bf2e72f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241881 | `0xbc4fb635636b81e60a4e356c4dceb53cac507d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbd060d1701ade4197b17b2ed5732a58353c4103c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241882 | `0xc08fbc829a879470c15916aad14e85905e6ab901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc7120cb97283b5527a24fd5b9971c6deb362f08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xca7db3a0a34a85aabc64a6d40d11603b8de875c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd1a3dd30bc63dc90be2fc0c3ec7fe188e48ff402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd1fc61d57d7201c3645ef84d30df6da5ed2e21ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd38eb36b7e8b126ff1e9fdd007bc4050b6c6ab7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd68a43e2fb638dff7862b088fd2040bb92c2b27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd99e36f8ab6a2ee14051d5678f93567b6096657b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xda1beaa1d642d66f414196f051c70ab5afe8278a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xda6e7cb23fca42d47cd0890feafde005405a4a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe2b44f206f4ce313c6d3b85496a7f85194ec10fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe352d277bb31e96d4b80f7fe85749b3761a8735e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe4fdeff6633e5d4408c94e6736795b8cd6eeb4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe5dc46a00ff9ffe609401982303183e91bb4dbbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241883 | `0xe71331aef803baec606423b105e4d1c85f012c00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe7ce233fa80811caa7a290c73ea1d43787868692` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-241884 | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xea62e1082d47e95fc6d8d2830fb847289cf30c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeac1dc5ccf09e2b816f9544878cd513728fa6af7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xeac7fbf38a6e1b7e38bd11cea16850cded67817e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb1e88e554fe78f66e5aad1f1e1d5b922f079dbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241885 | `0xeb24f7001437188baf2d5ef0b0fcfadad4564517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xec7904e20b69f60966d6c6b9dc534355614dd922` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241886 | `0xed062e26c8f41a9088d060156edc7fc6c17d5825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf60cd4f86141d7fe4a1a9961451ea09230a14617` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf66eb91773f7c51dc65b31259952e3bd98cb1207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf674e14c3c1488f7d259907438f15d38a143def1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf7d36d4d46cda364edc85e5561450183469484c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf80d62c74aaef8f97d1fba4a6ec15a63e3cd4e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf890310ebf232f56f9255405ad814f775d2b8a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf9c0eba79d452d3f426f12117de5a10676a812d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfab761b1630c8829761e6952b06af50e98c495a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfb13cc44b3e79e05713002b9aa3776eaa7164bd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241887 | `0xfbd0b2726070a9d6aff6d7216c9e9340eae68b2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfc9c308608d2bf56faaad456b574e07c5cef08bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfefd4c1feb7d6b93a84e8364dba1380d0d4095c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01d464be5866dc2bca4dc30269d08406d2f6dc46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x022ed1710cd17193c9ed05d516e8ea64b036a44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x039731911a844091e2c18d3cb28787318f888aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03daa61d8007443a6584e3d8f85105096543c19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x060539e05ebcaa92af533ad9cb2121df23426bf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0643cd09cbe6c2a405eff4d165acd9206804623a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0661c511e6affdf4e16d5a62cd8899ebe583dc43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09327b72157cfe804feee57dfceb50a0ca1af26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09b00bd2fb2c96b988fe4c921c9111a5a524e54e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d5f966f1b8966033a1e8c7220c9bd7f4d7a2f32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0ea7ac6da7b5d69fbbd32038ce62a9da1d096a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ed8867edabd4d0b5045e45a39077d97a6b78cbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241888 | `0x1109052d0155657520ca1869ae25a0a5ad51d24e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1162faf333dd3ab813d06691f8eed25b2d933bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x124c3ae1efbf30c61966989d150738978d16849a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1613059b4fbfc2fe2de7e1acaadcf5897cca0346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1788caee7eec8a5a7e25d4c7993133a91e83b446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18d1de55199e24896a2220cdefcf6dd644e07376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a0d15f1f6d90c2b71eba3859a1f30c91e5af9b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1b35f10413859d25cf63d27336ef0434acf113fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e00b599ca67c45e8da98d2c4253763299f7d9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e5beacf50483673a8f364ca26342885de11125f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f0164f1a07e36e4b7f19ed6f209ddc4a7331d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x205f76d6ddd95d7ba53b131506ea851b04568899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x283318ba87c3d71606e159b29b22948d8424cfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28ff773bc5ea4e86b371fcfd31cc3271bb1c3c8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241889 | `0x2ae82037c7c9e6af4d24bb0781f6477f29cb160d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x2c8c19e83cbcba9f942baf14666f0c7189f41e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3380856e87f56a7491f7e90a5f3680bf1ae66875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x346880305b57c5a8aaf4170d951f13e91c0be0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x363bf4ff9c6f0ef616b144fddfb4401d4898e53c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3af3ff120aeb43df7fc73cdd5e83b03dbfc81a9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x3e7f5a5dc128291171401fbefac648652c6e6180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ee8dabfbead0d29bc118272f0e26878c76c6c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x425f7e1024cb86de06970fe6ef8423cf6424e5c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241890 | `0x44e4fcfed14e1285c9e0f6eae77d5fdd0f196f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4781c6b12dde851622e0656e6c97ad8d91a13b08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241892 | `0x517b5c25ee5f972857bd4fd5bffbbd23b1c9bcb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53c22f4c05a68c544f4ea2e43f286b0b91efe50b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x53e2b00c4b2e00ff1cb8b7bee44927793cae01f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5430a0d8d9b9be8ab4f94bf3553ec2a6184164f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ac45d239f85caec1de2c8757b63efc18184b53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d03e459d1cabff7af228b3a66fc097756ec60ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5dacc18b919ea4e0e02863de587b406ad68bdf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62f3b99ef24f5070b9ae80552e321ec89abfc71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64a35cafb5fe1f70f4df29a9bc550e93a11369f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x6645516fed458f900b5c89a095e0a6d099c6d529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6697f41d690baa226b49cd0074be5715a8d54d04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x696ee62e8684aac9c046b372dc7b4626cad86335` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x6a10a3012bfb0a59b01aa9d1972b167103b04e22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f937495013c7dc42af752d3e0bcc090bd34f7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73d5427de87864959195c82c1b5fb251edbe14d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75409fa02734668b1c0e351dbc51e93bbd402a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7570c560ccab8455a6726ad54978e6d1ce6fda7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7659cd9b0cbe58b8f2d608ac23c4b93833e05d7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7817a805598822985310b859c9e507a535b0c9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a308c1f774162f57ccbd7432d5b45160390c10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7aa47999b2dd02996a1014b462f1f6e4e8b59e7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7b9cd2d5ecfe44c8b64e01b93973491bbdae879b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7ede100965b1e870d726cd480dd41f2af1ca0130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8187a963f1a3de040e957661d2ba31eed22dc465` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241893 | `0x8c9968a2b16bc1cd0ead74f5eef25e899e795501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ca04f6c6be2a2dbf77ddce5fd7a791f31c364ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d02d7f2726c8947c01472106a1b6d9dbf14ce7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x901eb48a8394ea3a135c6ac611030d297da9dc8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x92f0155e2354461e8ad278dfa37ad7da03fe9051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x989d0fbd6778eda0940cd39b22f64c5f9f87a663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x992aa39502d76e594b80b4102f5fea692fe0d537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99f6d45f89bdb0e020440cdddd202f6970f6de08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x9e1b16b6f25356a1f02f1391529bd98ba461905c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa22dbe10ef96674d5094fadd6e2af62c7618965e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa25958b0c9bbee1821db5ce3d85bc56848fddf78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3667a22e2a95374f0bfe6ce3d287762f48c0ab7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xa3740e43fd85aaddb2fc2754ff0c03c134337219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa54dee0cca6037179b0cc427e50fd3ab3d68a7b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6ab2fd47b96b9d2b3e40764a34e98ca4b13e0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa705d3ea8eeb5816de3e36d277261a4a29ee5879` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xa767dad3bc47c59e15141e6f29609fe22f4b63aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xa8a99e55bc2c033f0dae577acc50ef4dd399a495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad340d0cd0b117b0140671e7cb39770e7675c848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaed31afb0fe2fe8ccdb56595a689cf96a234c50b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241894 | `0xbc9d027eb4b1d9622f217de10f07dc74b7c81eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd060d1701ade4197b17b2ed5732a58353c4103c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf881bd0672053860e8dca1d629e7aa80d2c4e4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc271f2382ec150de7536168f10c988766eb0815b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc5aa5bef46697d537ef4afcc04b91de166a899e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241895 | `0xc5f12618bc930aab89bfc53b9d20288dfaaf3166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xced81cf4a2442eca1e9610d6d74ce0b309753d93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xcfed1594a5b1b612dc8199962461cec148f14e68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd233d46ddeceef8cc8679f281ee5892f94c2945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd608ec04f748c9e1982a6965e422722e9506e061` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xde63dbe180340918be86eb8221b832ad2e045081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfd13d58f8f1bdd86ce2490df76e52320797870f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2bb5d086b5d735d69374846e2b4d5eed0fb2664` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe4dc19d2d6dbe4ef45764e90ad45b0dc4616aa7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4fdeff6633e5d4408c94e6736795b8cd6eeb4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe71331aef803baec606423b105e4d1c85f012c00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241896 | `0xeac1dc5ccf09e2b816f9544878cd513728fa6af7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241897 | `0xec7904e20b69f60966d6c6b9dc534355614dd922` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xee261cf86cff35d8657a4b5d4d1546b4d72c5314` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xef680131a19179795797cd855661d174253e8801` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-241898 | `0xf0c8376065fadfacb706cafbaac96b321069c015` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf0e29cc532c198bdd09bf0c4e37c47dd68b32200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf73758043d9911aedaa7519c8fcf76bb32f39ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb13cc44b3e79e05713002b9aa3776eaa7164bd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfefd4c1feb7d6b93a84e8364dba1380d0d4095c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241899 | `0x0643cd09cbe6c2a405eff4d165acd9206804623a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241900 | `0x1b35f10413859d25cf63d27336ef0434acf113fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241901 | `0x41b0039fcc760b8899b3d11e954a7a7b5dfc9e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241902 | `0x53f03714e7d2bbf6498d9cb2b26854daa2ecc7a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241903 | `0x5b0f8d8f47e3fdf7ee1c337abca19dbba98524e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241904 | `0x6645516fed458f900b5c89a095e0a6d099c6d529` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241905 | `0x6a10a3012bfb0a59b01aa9d1972b167103b04e22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241906 | `0x6c66ec1437dadc26070b731cce0086f9aef41b4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241907 | `0x7817a805598822985310b859c9e507a535b0c9d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241908 | `0x92f0155e2354461e8ad278dfa37ad7da03fe9051` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241909 | `0x99dfa87ea183e0e21f977255f768ae453ffeba64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241910 | `0x9d51fd641e420692e981ddf4345b1917ee16e880` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241911 | `0xb1576a9be5ec445368740161174f3dd1034ff8be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241912 | `0xb7e098cb86b120363a935730970a3758861ba458` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241913 | `0xc271f2382ec150de7536168f10c988766eb0815b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241914 | `0xd1cf4cf213ff1dec94b4879356ab481b47369dfd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241915 | `0xd233d46ddeceef8cc8679f281ee5892f94c2945c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241916 | `0xe5ff665bd031bc044f47ba5611f5450d69b733f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241917 | `0xe97999f411333e3b712104aa04fc06b149bd12ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-mumbai | unit-241918 | `0xf0e29cc532c198bdd09bf0c4e37c47dd68b32200` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 177
- Live contracts: 0
- Unknown liveness contracts: 177
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=1, unverified unclassified=176

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0xcfed1594a5b1b612dc8199962461cec148f14e68` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x01950a7d7a82c424825a14e3c1d181f10c99c151` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x03eb9e299e76953874c274dc2016cf0c3c2b69d8` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x058fad765f4b33e3fb9e16b37973efc00249cbbf` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x0661c511e6affdf4e16d5a62cd8899ebe583dc43` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x09327b72157cfe804feee57dfceb50a0ca1af26a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x102d55784c56688c4f1153a6aeecab79a9889516` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x10aa05eabdece76a2f7ddc2bb6d824a0d740b323` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x11449fb5969e15e9e3c299d8c2633fdb1eaf3630` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x130fe5ddab4dd4a129b1c3ba4bec5f008e94fb14` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x14e1326445077e2e170eb48785a849e30d502994` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1613059b4fbfc2fe2de7e1acaadcf5897cca0346` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x186f0bf13d2c1d06ebb296aae0eab9a5008f776d` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x198d66044fba4bb87eaba6d03e80d68862b4b3e6` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1a0d15f1f6d90c2b71eba3859a1f30c91e5af9b8` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1b0a523912141d406d1021bd51d8c3180c71bb6b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1f0164f1a07e36e4b7f19ed6f209ddc4a7331d90` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x2038976e96cde0187820bd84e6b36d595e979bd9` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x230d3b7d94d838086c88b1d195bd41bc5dbfe1a5` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x244171bc8506be8963d08d10d42f6b45aeb076f0` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x250030af5ccb531fdc008e77b5664ec8b83a3287` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x2c3ac82981979af1611f6efb17a4a3a04d1f9245` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3067d8d57dabf8105382f5f47c845a7275a8edc2` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3380856e87f56a7491f7e90a5f3680bf1ae66875` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x34c1ec33990bfdffb3e50fb396dd82acff6d80e8` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x360229267a176a11db407a5cc54734fed6313024` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x363bf4ff9c6f0ef616b144fddfb4401d4898e53c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3802a31d1df26e57e44de2ed57e9103b49e9268b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3d15077165b638e4868ae196cb2783d342d1b432` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3d276fac0841c861026d54aa904e41861c8481e8` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3e42a61b685d870902f8e7745e9f4682c61eb6b7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3e436327f27131405860ec9478b4e26071d9a83a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3ee8dabfbead0d29bc118272f0e26878c76c6c2c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3f619cba13545d0ded9ddd1677e5750b2997f93d` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x41ab49872ed459c840d0caecd47fcdc201c48307` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x44e4fcfed14e1285c9e0f6eae77d5fdd0f196f85` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x47427e941948c1797fdefdf00e29f2abbbc7de6a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x4790d9a35c653481df31b914d2022a5ccf016c15` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x4e18915179a846f90b0342f16e0b274090733ac7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x4e4ea6845d7656d569dc4ccc7b68bb3023720837` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x4fdc6f0684128f1234c4c053e7fe998324c1839a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5ac45d239f85caec1de2c8757b63efc18184b53a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5af14598f309bdc15a1c74bab98fb8e7b90fb99f` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5bf08398305bfd69d452712938c4ffd476470a9b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5c31656effac2609d28fe901a59e28a93dc9f431` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5d03e459d1cabff7af228b3a66fc097756ec60ed` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5dacc18b919ea4e0e02863de587b406ad68bdf34` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x62f0362f801e1486f1087ea6d4048390eb93cf48` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x66e4dd4f2f882d0c01ef377a843fc979ead66c3e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x68e18891159475c21e9f98bbb8b33234769328b1` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x6f937495013c7dc42af752d3e0bcc090bd34f7ab` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x714273a7d7544e8a46aad25b69f718f69d8acfbb` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x737220f0093de46af2aac7501dd95a3f0525d65c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7390d41cc179248e23c1bfc9004a467e5b78771a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x75409fa02734668b1c0e351dbc51e93bbd402a6f` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7570c560ccab8455a6726ad54978e6d1ce6fda7c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7aa47999b2dd02996a1014b462f1f6e4e8b59e7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7abedb1460c661ce86791f4d33c29032570999d2` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7c1c6c8a2bd925850cbc227e27aacb6bc1690430` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7d006144857c17013f843c385dec300c9d034fe0` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x80f841cfb94317ed10841bca60bc74ec6f59fe04` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8187a963f1a3de040e957661d2ba31eed22dc465` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x89a0fde9843a72a13d993a47a859700f518dfd8e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8af13ba3fe8c4279d868dd0720f989ea03692e29` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8c9968a2b16bc1cd0ead74f5eef25e899e795501` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8ca04f6c6be2a2dbf77ddce5fd7a791f31c364ea` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8d02d7f2726c8947c01472106a1b6d9dbf14ce7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8d5abb64205d6a4f204ce10ba48542f5a244b36c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x934da3d016b0499d5b9c118a5f65c92fca922564` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x96570478019593592e789fa4afb9946b07549b32` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa09e33c8dcb1f95f7b79d7fc75a72aadf69eb319` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa1516f2de0233031f0ee81b5b8c08a808f15e3e5` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa22dbe10ef96674d5094fadd6e2af62c7618965e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa268dfd49e633c68933d7fc77fa99a867c0b86bb` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa3667a22e2a95374f0bfe6ce3d287762f48c0ab7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa54dee0cca6037179b0cc427e50fd3ab3d68a7b4` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa6ae41ca3cc7fe6b77cdd71e2a8879cee15d6148` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xaed31afb0fe2fe8ccdb56595a689cf96a234c50b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xaf0e33997d62b19cff226ac52febea105dfcd1e9` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xb0200960dd137b5084554be632cd5990cc2a0a90` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xb4a75cf740c14e125b684d4f5a39f2ca19e137ec` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xb8923ed029daab31457bbfe7e4716dfc0bf46033` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xba13a6414c677d9e7bd3c0bde5ba4055bf2e72f7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xbd060d1701ade4197b17b2ed5732a58353c4103c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xc7120cb97283b5527a24fd5b9971c6deb362f08e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xca7db3a0a34a85aabc64a6d40d11603b8de875c0` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xd1a3dd30bc63dc90be2fc0c3ec7fe188e48ff402` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xd1fc61d57d7201c3645ef84d30df6da5ed2e21ee` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xd38eb36b7e8b126ff1e9fdd007bc4050b6c6ab7c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xd68a43e2fb638dff7862b088fd2040bb92c2b27d` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xd99e36f8ab6a2ee14051d5678f93567b6096657b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xda1beaa1d642d66f414196f051c70ab5afe8278a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xda6e7cb23fca42d47cd0890feafde005405a4a44` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xe2b44f206f4ce313c6d3b85496a7f85194ec10fb` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xe352d277bb31e96d4b80f7fe85749b3761a8735e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xe4fdeff6633e5d4408c94e6736795b8cd6eeb4ac` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xe5dc46a00ff9ffe609401982303183e91bb4dbbc` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xea62e1082d47e95fc6d8d2830fb847289cf30c45` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xeac1dc5ccf09e2b816f9544878cd513728fa6af7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xeb1e88e554fe78f66e5aad1f1e1d5b922f079dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xec7904e20b69f60966d6c6b9dc534355614dd922` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xf60cd4f86141d7fe4a1a9961451ea09230a14617` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xf674e14c3c1488f7d259907438f15d38a143def1` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xf890310ebf232f56f9255405ad814f775d2b8a02` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xf9c0eba79d452d3f426f12117de5a10676a812d3` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xfb13cc44b3e79e05713002b9aa3776eaa7164bd7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xfefd4c1feb7d6b93a84e8364dba1380d0d4095c7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x01d464be5866dc2bca4dc30269d08406d2f6dc46` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x022ed1710cd17193c9ed05d516e8ea64b036a44f` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x039731911a844091e2c18d3cb28787318f888aa3` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x03daa61d8007443a6584e3d8f85105096543c19c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x060539e05ebcaa92af533ad9cb2121df23426bf3` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x0661c511e6affdf4e16d5a62cd8899ebe583dc43` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x09327b72157cfe804feee57dfceb50a0ca1af26a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x09b00bd2fb2c96b988fe4c921c9111a5a524e54e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x0d5f966f1b8966033a1e8c7220c9bd7f4d7a2f32` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x0ed8867edabd4d0b5045e45a39077d97a6b78cbe` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1162faf333dd3ab813d06691f8eed25b2d933bed` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x124c3ae1efbf30c61966989d150738978d16849a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1613059b4fbfc2fe2de7e1acaadcf5897cca0346` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1788caee7eec8a5a7e25d4c7993133a91e83b446` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x18d1de55199e24896a2220cdefcf6dd644e07376` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1a0d15f1f6d90c2b71eba3859a1f30c91e5af9b8` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1e00b599ca67c45e8da98d2c4253763299f7d9ea` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1e5beacf50483673a8f364ca26342885de11125f` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x1f0164f1a07e36e4b7f19ed6f209ddc4a7331d90` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x205f76d6ddd95d7ba53b131506ea851b04568899` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x283318ba87c3d71606e159b29b22948d8424cfa8` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x28ff773bc5ea4e86b371fcfd31cc3271bb1c3c8c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3380856e87f56a7491f7e90a5f3680bf1ae66875` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x346880305b57c5a8aaf4170d951f13e91c0be0a7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x363bf4ff9c6f0ef616b144fddfb4401d4898e53c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3af3ff120aeb43df7fc73cdd5e83b03dbfc81a9e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x3ee8dabfbead0d29bc118272f0e26878c76c6c2c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x425f7e1024cb86de06970fe6ef8423cf6424e5c1` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x4781c6b12dde851622e0656e6c97ad8d91a13b08` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x53c22f4c05a68c544f4ea2e43f286b0b91efe50b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5430a0d8d9b9be8ab4f94bf3553ec2a6184164f1` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5ac45d239f85caec1de2c8757b63efc18184b53a` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5d03e459d1cabff7af228b3a66fc097756ec60ed` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x5dacc18b919ea4e0e02863de587b406ad68bdf34` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x62f3b99ef24f5070b9ae80552e321ec89abfc71b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x64a35cafb5fe1f70f4df29a9bc550e93a11369f9` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x6697f41d690baa226b49cd0074be5715a8d54d04` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x6f937495013c7dc42af752d3e0bcc090bd34f7ab` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x73d5427de87864959195c82c1b5fb251edbe14d4` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x75409fa02734668b1c0e351dbc51e93bbd402a6f` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7570c560ccab8455a6726ad54978e6d1ce6fda7c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7659cd9b0cbe58b8f2d608ac23c4b93833e05d7e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7a308c1f774162f57ccbd7432d5b45160390c10d` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x7aa47999b2dd02996a1014b462f1f6e4e8b59e7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8187a963f1a3de040e957661d2ba31eed22dc465` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8ca04f6c6be2a2dbf77ddce5fd7a791f31c364ea` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x8d02d7f2726c8947c01472106a1b6d9dbf14ce7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x901eb48a8394ea3a135c6ac611030d297da9dc8b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x989d0fbd6778eda0940cd39b22f64c5f9f87a663` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x992aa39502d76e594b80b4102f5fea692fe0d537` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0x99f6d45f89bdb0e020440cdddd202f6970f6de08` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa22dbe10ef96674d5094fadd6e2af62c7618965e` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa25958b0c9bbee1821db5ce3d85bc56848fddf78` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa3667a22e2a95374f0bfe6ce3d287762f48c0ab7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa54dee0cca6037179b0cc427e50fd3ab3d68a7b4` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa6ab2fd47b96b9d2b3e40764a34e98ca4b13e0d8` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xa705d3ea8eeb5816de3e36d277261a4a29ee5879` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xad340d0cd0b117b0140671e7cb39770e7675c848` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xaed31afb0fe2fe8ccdb56595a689cf96a234c50b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xbd060d1701ade4197b17b2ed5732a58353c4103c` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xbf881bd0672053860e8dca1d629e7aa80d2c4e4d` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xced81cf4a2442eca1e9610d6d74ce0b309753d93` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xd608ec04f748c9e1982a6965e422722e9506e061` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xdfd13d58f8f1bdd86ce2490df76e52320797870f` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xe2bb5d086b5d735d69374846e2b4d5eed0fb2664` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xe4fdeff6633e5d4408c94e6736795b8cd6eeb4ac` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xe71331aef803baec606423b105e4d1c85f012c00` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xf73758043d9911aedaa7519c8fcf76bb32f39ccb` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xfb13cc44b3e79e05713002b9aa3776eaa7164bd7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |
| unverified unclassified | UnnamedContract<br>`0xfefd4c1feb7d6b93a84e8364dba1380d0d4095c7` | non_address_book | unknown | unknown | unverified | n/a | `0xdf456b614fe9ff1c7c0b380330da29c96d40fb02` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits & Security](https://wiki.1hive.org/projects/honeyswap/audits-and-security.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20513] Audits & Security — no match: Extracted three contracts explicitly listed in the 'Relevant contracts' section of the internal audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audits & Security | ReferralRewarder | unmatched — not counted | — | listed in relevant contracts section | no |
| Audits & Security | HSFToken | unmatched — not counted | — | listed in relevant contracts section | no |
| Audits & Security | HoneyFarm | unmatched — not counted | — | listed in relevant contracts section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 268 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20513] Audits & Security

Fork inheritance lineage and inherited audits are included when available.
