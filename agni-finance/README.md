# Agentic Audit Brief: Agni Finance

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

- Project: Agni Finance (`agni-finance`)
- Website: [https://agni.finance/](https://agni.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: mantle
- Contract surface: 93 unique implementations (93 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,189,631.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Agni Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb0bcbe0d2b197b7a8fb7e66d6a0dd6a91cb985d6`, chain 5000)
- UnnamedContract (`0xbe592efcf174b3e0e4208dc8c1658822d017568f`, chain 5000)
- AgniFactory (`0x25780dc8fc3cfbd75f33bfdab65e969b603b2035`, chain 5000)
- AgniPoolDeployer (`0xe9827b4ebeb9ae41fc57efdddd79edddc2ea4d03`, chain 5000)
- MixedRouteQuoterV1 (`0xcdbd1c6cfc89af8a518e23b0c71996b90a12befc`, chain 5000)
- Multicall3 (`0x05f3105fc9fc531712b2570f1c6e11dd4bcf7b3c`, chain 5000)
- NFTDescriptor (`0x70153a35c3005385b45c47cdcfc7197c1a22477a`, chain 5000)
- NonfungiblePositionManager (`0x218bf598d1453383e2f4aa7b14ffb9bfb102d637`, chain 5000)
- OutputCodeHash (`0x5cfa0f1c4067c90a50b973e5f98cd265de5df724`, chain 5000)
- Quoter (`0x9488c05a7b75a6fefdcae4f11a33467bcba60177`, chain 5000)
- QuoterV2 (`0xc4aadc921e1cdb66c5300bc158a313292923c0cb`, chain 5000)
- SmartRouter (`0xb52b1f5e08c04a8c33f4c7363fa2de23b9bc169f`, chain 5000)
- SwapRouter (`0x319b69888b0d11cec22caa5034e25fffbdc88421`, chain 5000)
- TickLens (`0xecdba665aa209247cd334d0d037b913528a7bf67`, chain 5000)
- TransparentUpgradeableProxy (`0xcb814b767d41b4bd94da6abb860d25b607ad5764`, chain 5000)
- WMANTLE (`0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 77 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 16 of 93 unique; 77 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 93
- Raw deployments: 93
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgniFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-378710 | `0x25780dc8fc3cfbd75f33bfdab65e969b603b2035` | ⚠️ Unaudited |
| AgniPoolDeployer | unknown | project_anchor | own_supporting | 0 | mantle | unit-378721 | `0xe9827b4ebeb9ae41fc57efdddd79edddc2ea4d03` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-378720 | `0xcdbd1c6cfc89af8a518e23b0c71996b90a12befc` | ⚠️ Unaudited |
| Multicall3 | unknown | project_anchor | own_supporting | 0 | mantle | unit-378709 | `0x05f3105fc9fc531712b2570f1c6e11dd4bcf7b3c` | ⚠️ Unaudited |
| NFTDescriptor | unknown | project_anchor | own_supporting | 0 | mantle | unit-378713 | `0x70153a35c3005385b45c47cdcfc7197c1a22477a` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 1 | mantle | unit-378723 | `0x218bf598d1453383e2f4aa7b14ffb9bfb102d637` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | mantle | unit-378724 | `0xcb814b767d41b4bd94da6abb860d25b607ad5764` | ⚠️ Unaudited |
| OutputCodeHash | unknown | project_anchor | own_supporting | 0 | mantle | unit-378712 | `0x5cfa0f1c4067c90a50b973e5f98cd265de5df724` | ⚠️ Unaudited |
| Quoter | unknown | project_anchor | own_supporting | 0 | mantle | unit-378715 | `0x9488c05a7b75a6fefdcae4f11a33467bcba60177` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-378719 | `0xc4aadc921e1cdb66c5300bc158a313292923c0cb` | ⚠️ Unaudited |
| SmartRouter | unknown | project_anchor | own_supporting | 0 | mantle | unit-378717 | `0xb52b1f5e08c04a8c33f4c7363fa2de23b9bc169f` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | mantle | unit-378711 | `0x319b69888b0d11cec22caa5034e25fffbdc88421` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | mantle | unit-378722 | `0xecdba665aa209247cd334d0d037b913528a7bf67` | ⚠️ Unaudited |
| WMANTLE | unknown | project_anchor | own_supporting | 0 | mantle | unit-378714 | `0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x00fa16d7aa3aa6d76ddc3ae26c4221e763e07032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05664a81b15384bfd287c96dbde9c033447fb32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x062682ac476ea82773bde408c46207bd1c1e251d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x077e4c7f653ffe83cb560d994adff5685b3f0e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0a85ec2fca05e46c66534d5c7de9ed5a94e27218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0b7e80f0e664ae80bbe0c56f7908ef14f5898b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0bc31d78e06ef928658e0b6ab50460552f3d91c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0dc832e8ca4a7e1ce073096709474a5422029db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x17d9e369b894ae94e1d69aefc63d94f8acadad51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1ab505c0fbaf06147400332fa57c7fa23298c1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x21e82d19ebee5bd80f16edb75aa9eb8ea1e251ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x27a200e056012053cea5f5ba53b36eff90180653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x31fa04284049bd9c3aff46503482270f0be4bc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x33cadc27aa972ff1eff9763ef1e74c22d967f8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x370d6f3ad9a75182dc2aee4835dbb4dc49ad98d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3eb6e0ae3cd8848f4e90047e2bb17b98722401ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x45bcfa4002846350f127967435882b71cc4dbc15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x49c8bb51c6bb791e8d6c31310ce0c14f68492991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4a5fa5741229b93361846e69bec6eba81f47b499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4aec270a5025eafb0e2020d9e64bfa6b8704c0ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4cba08a0880c502ab1e10cdc93dbc74c23524ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x503ca2ad7c9c70f4157d14cf94d3ef5fa96d7032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d470e5e213eba2dcd9e0aa1a9ae4ee2763d162d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5eac88978ace9f123bb3159a6b091423175b5fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6178d8a071cd576be357453c71c9a1a48054db9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6ba348e82bfbabf1a8a7749079eee6ceed2ad481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6d7c6271fb6eda99536d9ea31762e93843af6303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x70f0c400171158c29b61a3e79c92c72e95679541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x713dcd6dc9433234afb5536f1b5e18c3659bb216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x765cd3c8ab7f872b4ddcaeefd32714d5a13bcc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7697549f73b8114ef53377d120256b475aa226a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x76ab65b315fa80824a8e8a201b0322b411466e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x790f0599c0ceec569d4eacfab742f59ff4fc4a31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7928b198a33b4a1ac7d67a0aaf8b9d7ff0926b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7abf563cad62493dcafd5a0f88baabddb4e5a5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7baa287aa8ceab3e95470349c28f99f19e9f21a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7c549b0ec4fac4f1fd09c3eab69cf03295a6017d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7e8480ff1ddf6c69439fdc4419e3eb03e04ee131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8002eb63e37728ddf15bd42bf2607cbbba714b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8684e81b44602e6edc88783ee3e40e05f0626ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x882a2c07bf04decca36be060b07d8bc0ee50d2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8c2a1852634c3fced498a035b15bb1f2d1ffb975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8cf5bcbcfaf22c6d48cc321fda4a90089dd23db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8e8a453bc0d968bbb284766aa4fe018a367e3106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x976c7cefed9744ab244f2f8de9b83ceabc3af006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x97dfa04df8f9ca4ff1f389a81474f7a82989847b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9b5c0a9c7778406c2c9ec042038db7d0654313c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9b8e7caeeb447a0506aa80deb59775fa15ce85b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9bd4a262b9471c600544b1563f6d669c29483ae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9cecf546dc36a2daa5ec7375c3cf35fed1add7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9e4a792a1e7bb58d700ac6f25b6f452ed8de0aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1d0391b276678a9ea2e1a4c83bdecd29389395c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa6116e927d3d16cfa7e4ed4f0a624052c3dbf3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xae411e11d9fa2773ceac200cc2c73f17324fc93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb04a19ef7853c52ede6fbb28f8ffbecb73329ed7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-378716 | `0xb0bcbe0d2b197b7a8fb7e66d6a0dd6a91cb985d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb322f6ab923c89082df533629e71747d18a63a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb5e1744abd1437cfdb996d22e1da32367ed52eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb6c833da4c74bac551d9c2769fcbde463ee10469` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-378718 | `0xbe592efcf174b3e0e4208dc8c1658822d017568f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc224311295e2ebe9b28dd92e902c14fa256b41cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc82b43b1564855e0d4c984712323c00705ed43cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc9d8a235e5000ab75bbcc200be902746c649be70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcb14fcc857ec4627dcf39f7fa34ccdbbc52acc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcbdb79e090bb51bfd44cc932428e2684a88cfb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xccc6a1c40bcfd5458ce3ebb731644fc62e3041e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd37a73e6ffe4bc37e4d973d92459e842b3570436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd7d3e1116277a0f8b6f23cc64d5ea56982822dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd8eea7a4e3eb412507664d8495180d63792084f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdc295a765dbb51b0948a86f835e7ca37ba4f3e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdd4fe16d307f01f6cd49c0e0198f74e46d3b46cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2db835566f8677d6889fffc4f3304e8df5fc1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe97af5784f43f9b8632559ecd1511333543a241c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xecefad547dd6e5556065df7797d9fc892b5ea864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf0ab070fdcfe7ef171f82d0b15e1bea577b0daf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf3faf04d1fef0bce0a3ccd7a817810b9071fda36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf8340a835067d71c5cd82f8d1f2f3f9304031bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf9ae3cc6d6483722b94d7075c9b366bcbbbab9d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfcffc00183aa97d5420de25e3440751c6042c621` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 77
- Live contracts: 0
- Unknown liveness contracts: 77
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=77

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00fa16d7aa3aa6d76ddc3ae26c4221e763e07032` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x05664a81b15384bfd287c96dbde9c033447fb32f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x062682ac476ea82773bde408c46207bd1c1e251d` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x077e4c7f653ffe83cb560d994adff5685b3f0e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x0a85ec2fca05e46c66534d5c7de9ed5a94e27218` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x0b7e80f0e664ae80bbe0c56f7908ef14f5898b1d` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x0bc31d78e06ef928658e0b6ab50460552f3d91c4` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x0dc832e8ca4a7e1ce073096709474a5422029db3` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x17d9e369b894ae94e1d69aefc63d94f8acadad51` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0x1ab505c0fbaf06147400332fa57c7fa23298c1ea` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x21e82d19ebee5bd80f16edb75aa9eb8ea1e251ff` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0x27a200e056012053cea5f5ba53b36eff90180653` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x31fa04284049bd9c3aff46503482270f0be4bc5e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x33cadc27aa972ff1eff9763ef1e74c22d967f8f9` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x370d6f3ad9a75182dc2aee4835dbb4dc49ad98d5` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x3eb6e0ae3cd8848f4e90047e2bb17b98722401ab` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x45bcfa4002846350f127967435882b71cc4dbc15` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x49c8bb51c6bb791e8d6c31310ce0c14f68492991` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x4a5fa5741229b93361846e69bec6eba81f47b499` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x4aec270a5025eafb0e2020d9e64bfa6b8704c0ae` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x4cba08a0880c502ab1e10cdc93dbc74c23524ac7` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0x503ca2ad7c9c70f4157d14cf94d3ef5fa96d7032` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x5d470e5e213eba2dcd9e0aa1a9ae4ee2763d162d` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x5eac88978ace9f123bb3159a6b091423175b5fae` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0x6178d8a071cd576be357453c71c9a1a48054db9f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x6ba348e82bfbabf1a8a7749079eee6ceed2ad481` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0x6d7c6271fb6eda99536d9ea31762e93843af6303` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x70f0c400171158c29b61a3e79c92c72e95679541` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x713dcd6dc9433234afb5536f1b5e18c3659bb216` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x765cd3c8ab7f872b4ddcaeefd32714d5a13bcc65` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0x7697549f73b8114ef53377d120256b475aa226a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x76ab65b315fa80824a8e8a201b0322b411466e94` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x790f0599c0ceec569d4eacfab742f59ff4fc4a31` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x7928b198a33b4a1ac7d67a0aaf8b9d7ff0926b1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x7abf563cad62493dcafd5a0f88baabddb4e5a5b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x7baa287aa8ceab3e95470349c28f99f19e9f21a6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x7c549b0ec4fac4f1fd09c3eab69cf03295a6017d` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x7e8480ff1ddf6c69439fdc4419e3eb03e04ee131` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x8002eb63e37728ddf15bd42bf2607cbbba714b3f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x8684e81b44602e6edc88783ee3e40e05f0626ecc` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x882a2c07bf04decca36be060b07d8bc0ee50d2ff` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x8c2a1852634c3fced498a035b15bb1f2d1ffb975` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x8cf5bcbcfaf22c6d48cc321fda4a90089dd23db5` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x8e8a453bc0d968bbb284766aa4fe018a367e3106` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x976c7cefed9744ab244f2f8de9b83ceabc3af006` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x97dfa04df8f9ca4ff1f389a81474f7a82989847b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x9b5c0a9c7778406c2c9ec042038db7d0654313c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x9b8e7caeeb447a0506aa80deb59775fa15ce85b6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x9bd4a262b9471c600544b1563f6d669c29483ae4` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x9cecf546dc36a2daa5ec7375c3cf35fed1add7a2` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0x9e4a792a1e7bb58d700ac6f25b6f452ed8de0aad` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xa1d0391b276678a9ea2e1a4c83bdecd29389395c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xa6116e927d3d16cfa7e4ed4f0a624052c3dbf3d5` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xae411e11d9fa2773ceac200cc2c73f17324fc93b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xb04a19ef7853c52ede6fbb28f8ffbecb73329ed7` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xb322f6ab923c89082df533629e71747d18a63a62` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0xb5e1744abd1437cfdb996d22e1da32367ed52eeb` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xb6c833da4c74bac551d9c2769fcbde463ee10469` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xc224311295e2ebe9b28dd92e902c14fa256b41cf` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0xc82b43b1564855e0d4c984712323c00705ed43cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xc9d8a235e5000ab75bbcc200be902746c649be70` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xcb14fcc857ec4627dcf39f7fa34ccdbbc52acc06` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xcbdb79e090bb51bfd44cc932428e2684a88cfb40` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xccc6a1c40bcfd5458ce3ebb731644fc62e3041e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xd37a73e6ffe4bc37e4d973d92459e842b3570436` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0xd7d3e1116277a0f8b6f23cc64d5ea56982822dde` | non_address_book | unknown | unknown | unverified | n/a | `0x63a7e6ac788167e166aa66689b90889500d3abd3` |
| unverified unclassified | UnnamedContract<br>`0xd8eea7a4e3eb412507664d8495180d63792084f3` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xdc295a765dbb51b0948a86f835e7ca37ba4f3e03` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xdd4fe16d307f01f6cd49c0e0198f74e46d3b46cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xe2db835566f8677d6889fffc4f3304e8df5fc1df` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xe97af5784f43f9b8632559ecd1511333543a241c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xecefad547dd6e5556065df7797d9fc892b5ea864` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xf0ab070fdcfe7ef171f82d0b15e1bea577b0daf2` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xf3faf04d1fef0bce0a3ccd7a817810b9071fda36` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xf8340a835067d71c5cd82f8d1f2f3f9304031bd3` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xf9ae3cc6d6483722b94d7075c9b366bcbbbab9d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |
| unverified unclassified | UnnamedContract<br>`0xfcffc00183aa97d5420de25e3440751c6042c621` | non_address_book | unknown | unknown | unverified | n/a | `0x5c1fc91c33fde6ffb3c17f861b402622e16b7305` |

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
| needs_review | 93 |

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
