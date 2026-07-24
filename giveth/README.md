# Agentic Audit Brief: Giveth

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Giveth (`giveth`)
- Website: [https://giveth.io](https://giveth.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, gnosis, optimism, polygon-zkevm
- Contract surface: 151 unique implementations (153 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $117,788.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Giveth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum, gnosis, optimism, polygon-zkevm. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 31 contracts are derived from known codebases. 31 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2a3dd3eb832af982ec71669e178424b10dca2ede`, chain 1)
- UnnamedContract (`0x2b0ee142dcfe7c2dd150cdbd7b6832f6e9977f51`, chain 1)
- UnnamedContract (`0x87de995f6744b75bbe0255a973081142adb61f4d`, chain 1)
- UnnamedContract (`0x88ad09518695c6c3712ac10a214be5109a655671`, chain 1)
- UnnamedContract (`0x99c9fc46f92e8a1c0dec1b1747d010903e884be1`, chain 1)
- UnnamedContract (`0xc763b6b3d0f75167db95daa6a0a0d75dd467c4e1`, chain 1)
- UnnamedContract (`0xd10bac02a02747cb293972f99981f4faf78e1626`, chain 1)
- UnnamedContract (`0xf924ff0f192f0c7c073161e0d62ce7635114e74f`, chain 1)
- UnnamedContract (`0x0018c6413bfe5430ff9ba4bd7ac3b6aa89bebd9b`, chain 10)
- UnnamedContract (`0x165e6dad9772c8cb44015edd5bd8b012a84bd276`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000042`, chain 10)
- UnnamedContract (`0x528cdc92eab044e1e39fe43b9514bfdab4412b98`, chain 10)
- UnnamedContract (`0x8fc7c1109c08904160d6ae36482b79814d45eb78`, chain 10)
- UnnamedContract (`0xd10bac02a02747cb293972f99981f4faf78e1626`, chain 10)
- UnnamedContract (`0xe3ac7b3e6b4065f4765d76fdc215606483bf3bd1`, chain 10)
- UnnamedContract (`0xf924ff0f192f0c7c073161e0d62ce7635114e74f`, chain 10)
- UnnamedContract (`0x0018c6413bfe5430ff9ba4bd7ac3b6aa89bebd9b`, chain 100)
- UnnamedContract (`0x85dc9beb2571298c9197ec16fafa556a85e41eae`, chain 100)
- UnnamedContract (`0xbf945292dc5cbbc8b742083f87d502699cb27414`, chain 100)
- UnnamedContract (`0xc0dbdca66a0636236fabe1b3c16b1bd4c84bb1e1`, chain 100)
- UnnamedContract (`0xd10bac02a02747cb293972f99981f4faf78e1626`, chain 100)
- UnnamedContract (`0xe70494225312c6b1167c15134dab66730f36708d`, chain 100)
- UnnamedContract (`0xe96adbd48d57ef7a5ee8fa622c1cd7fc7731630e`, chain 100)
- UnnamedContract (`0xf4ef9a155dd268e321afa7b9391e0602a7b09588`, chain 100)
- UnnamedContract (`0xf924ff0f192f0c7c073161e0d62ce7635114e74f`, chain 100)
- UnnamedContract (`0x4fb9b10ecde1b048dbc79abeab3793edc93a0d54`, chain 1101)
- UnnamedContract (`0x50f99d234872d99e4324bd287c50da3317cb3473`, chain 1101)
- UnnamedContract (`0xa1769a425ea1197f32d8c3e0fbe3f92eadacc21a`, chain 1101)
- UnnamedContract (`0xddafb91475bbf6210a151fa911ac8fda7de46ec2`, chain 1101)
- GIV (`0x900db999074d9277c5da2a43f252d74366230da0`, chain 1)
- TokenProxy (`0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 31/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 31 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 118 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 31 of 151 unique; 120 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 148
- Unique implementations: 151
- Raw deployments: 153
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GIV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386813 | `0x900db999074d9277c5da2a43f252d74366230da0` | ⚠️ Unaudited |
| PermittableToken | token | project_anchor | own_supporting | 1 | gnosis | unit-386841 | `0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: ethereum `0xbeba1666c62c65e58770376de332891b09461eeb`; gnosis `0x08ea9f608656a4a775ef73f5b187a2f1ae2ae10e`; gnosis `0xb7189a7ea38fa31210a79fe282aec5736ad5fa57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (148)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01db9f9a32d4d11d82882bf705e01c39e0ddb5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042065416c5c665dc196076745326af3cd840d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07955be2967b655cf52751fce7ccc8c61ea594e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16393737d09d2722ad13dca3ca8c3db957699f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1762d3e9d7ae6bc7a2a70c25a4aca69391c148f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f96a42cdfe3c3e90d1b58561d8731de63223bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2140ecdc45c89ca112523637824513bae72c8671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2180560e79d68f8e3adbd38f3b81bb9b48d9ff9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ace71c97b33cc4729cf772ae268934f7ab5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2745c24822f542bbffb41c6cb20edf766b5619f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x280f04a988513610584057bf3fde1f56f4d22ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2946f6d458f8cf8723a1d9e95043831d3937461e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386808 | `0x2a3dd3eb832af982ec71669e178424b10dca2ede` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386809 | `0x2b0ee142dcfe7c2dd150cdbd7b6832f6e9977f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dca02c93988d3ae2451c588610c62671d38c961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a6ed6fd76035684cadef38cf49a2fffa782b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea1a3839d8ca9a7ff3c567a9f36f4c4dbecc3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3efa9b4b936d8dcb4887ba147c8192f8f872502e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a4ee2855a7dc328524babb07d7f505b201133e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46d811fa0a435ea9bce8cae11ebf9fbd0a60256d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b86181abcaefc008b561e27c0aee64bb5eb8dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf681894abec828b212c906082b444ceb2f6cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f386c4dae45a94619aee4852d92780fbd34ed56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51af994bd8d586e81f8f48d68a47e16c4a179726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5275e7264ab0bb75d970e7442de0aadd0c0b85ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x543fb43e829cceec32b623dfed83ef3622bfb9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c6dfbb807be694841a0f1b84cbc49d8fc98ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56478532d0d6451e87dcc32fe9701cc6c7daf036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a91b345244d3a285b30287b4c63c154ecbd2b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1e78f12025d8d05920134f4a64ddbddaa924be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6943a218d58135793f1fe619414ed476c37ad65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69c707d975e8d883920003cc357e556a4732cd03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8d0afddbd29a0954feeb73904923fc8f73c480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea6c65e14661c0bcab5bc862fe5e7d3b5630c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7169e52d3d221a22b78e5a5edb87651651391f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71d5ba4e37de72415f685490b684538aae8f0424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71f12d03e1711cb96e11e1a5c12da7466699db8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7259b1612b464c65205b7dcdc5ba9fd7aec24dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72748535e7fdbf564d0ac4cd18c3ebd96f81e8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75df5af045d91108662d8080fd1fefad6aa0bb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77ebfdfcc906ddcda0c42b866f26a8d5a2bb0572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bff37bda2318125c6b895d4f2b50bcd9e0cc40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c14be235e385854ffb40c33bbe1f59c98778e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c24d0061b484b267f286aa2dce891220db254b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e7669bdff02f2ee75b68b91fb81c2b38f9228c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b67a43b69914e611710c62e629dabb2f7ac6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c2e0e3b5328e599a3cba95d97090fa7d0fde8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872796bf7fe754754d2bee2c66d7de9b04a5c943` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386811 | `0x87de995f6744b75bbe0255a973081142adb61f4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386812 | `0x88ad09518695c6c3712ac10a214be5109a655671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d321fc71abcd71045e7686c450d06e26cc1dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9e7c13f98291fe90b38e020bcb046f4a4dd21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eb3b7d8498a6716904577b2579e1c313d48e347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94447a6f0e6be5a4df198882ffd285a763bf98c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386814 | `0x99c9fc46f92e8a1c0dec1b1747d010903e884be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b912b3ea71a04065ff82d3936d518ed6e38039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ac7d6fdb51a1ffea31c4107b3f3e2e537aa2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8cbad2ff217cb9c32ca8d3903e2a2b65578a846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa60a7d801230a26193194210e3f758dc8c49faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a18f960221c6d56871c29e5dd7b838e79c2e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11c0c3ce15a998fe403b36f2606c3be78ec2540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba7bc1adf0c9a252922760075e607f510cca85c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386815 | `0xc763b6b3d0f75167db95daa6a0a0d75dd467c4e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd76de5c57004d47d0216ec7dabd3c72d8c49057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceb06ecea3f588cb60e39bd4db7869013c6f65a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e3e318154716bd9d007e1e6b021eab246ff98d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386816 | `0xd10bac02a02747cb293972f99981f4faf78e1626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd116e81265f4aa1db8e4851feef7061afd9f9e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd40355b17643bc26554c9a9bbc95b5cabd92c2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd83893f31aa1b6b9d97c9c70d3492fe38d24d218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd925002f88279776deb4907ba7f8dc173e2ea7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde1fcfb0851916ca5101820a69b13a4e276bd81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ca72ff3434b131765c62cbcbc26060f7aba03d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3316d623bcdcbd878df25903a791aef1c26b543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7228b4ebad37ba031a8b63473727f991e262dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe804fe5fb14b02aba636f37fb6e1c7a08b2f4b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe877fb7e5347111504a1fc4ffa727c5d9adeb866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe969c2724d2448f1d1a6189d3e2aa1f37d5998c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4c5ab9b36437f969888be99af42fc9087005a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb6e0994d1184bac66615ad4035b022b3676c36d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed84a648b3c51432ad0fd1c2cd2c45677e9d4064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee4f8db4410bebd74a76cb711d096c5e66d0473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b456250dc9990662a6f25808cc74a6d1131ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26391fbb1f77481f80a7d646ac08ba3817ea891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6edfa16926f30b0520099028a145f4e06fd54ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf714c3aa632ece07eeba241803b26f806ea17908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf886bfeacc24202967d053075fa9658cf1245e00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386817 | `0xf924ff0f192f0c7c073161e0d62ce7635114e74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1f9cf28ecdb12110aa8086e6fd343ea06035cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386818 | `0x0018c6413bfe5430ff9ba4bd7ac3b6aa89bebd9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b2402144bb366a632d14b83f244d2e0e21bd39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b3e006a6af5126e625c0e228adf31ea494246a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x126783a6cb203a3e35344528b26ca3a0489a1485` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386819 | `0x165e6dad9772c8cb44015edd5bd8b012a84bd276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1aafb0d5aab9ffbe09d4d30c9fd90d695c4f0881` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-386820 | `0x1d68124e65fafc907325e3edbf8c4d84499daa8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x226392543f7c2d29349b0e8f6b899a0d05d08d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ac383909ff12f8a119220eec16dd081bb22f48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f2c819210191750f2e11f7cfc5664a0eb4fd5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x301c739cf6bfb6b47a74878bdeb13f92f13ae5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35d3fef295a14f7109c78487f516da112ecf46bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x383c34c04ca46a322454ff483ea8ccc16bc34434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b197f5cda3516bd49e193df6f1273f3f16d414a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3fb1579e1a43881d775889ddbe92dfdcd9c10b22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386821 | `0x4200000000000000000000000000000000000042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4a330d059b67e1b4fc575500cd805d70725ea1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x51b5123a7b0f9b2ba265f9c4c8de7d78d52f510f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386822 | `0x528cdc92eab044e1e39fe43b9514bfdab4412b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x53b56de645b9de6e5a40ace047d1c74e8b42eccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6cbdd436210e19621efaa15db5c730038166b2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6dcc0484472523ed9cdc017f711bcbf909789284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x796dff6d74f3e27060b71255fe517bfb23c93eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c9fc5741288cdfdd83ceb07f3ea7e22618d79d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386823 | `0x8fc7c1109c08904160d6ae36482b79814d45eb78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x91175aee6dac41b9c1f749ded077568ad93b84ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9194b6ccdbd27bd3738772efff3dd571a9bacbbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95fcf30706f3b1e28c8f3d72f4b80fa3a1615b2f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-386824 | `0x969e1d236289742c9d36ea1c7124cddb84397772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa321448d90d4e5b0a732867c18ea198e75cac48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa5f208e072434bc67592e4c49c1b991ba79bca46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa6a377d75ca5c9052c9a77ed1e865cc25bd97bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae9d7fe007b3327aa64a32824aaac52c42a6e624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb91e3638f82a1facb28690b37e3aae45d2c33808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0946f51ddd63e12c51b23f5814b43c9bc8aa700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2cafef7809ae0e37c62f9de9b15f11975567ea8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386825 | `0xd10bac02a02747cb293972f99981f4faf78e1626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd153f27e98c33c57d543326681b4be7a0c94a632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386826 | `0xe3ac7b3e6b4065f4765d76fdc215606483bf3bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe69fe4b24e6288df707b68bcc2ad15c42ae50f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf13e93af5e706ab3073e393e77bb2d7ce7bec01f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386827 | `0xf924ff0f192f0c7c073161e0d62ce7635114e74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfbc2f62b6a366a177d44706f04b74ae2d60bd556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe8cd454b4a1ca468b57d79c0cc77ef5b6f64585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386828 | `0x0018c6413bfe5430ff9ba4bd7ac3b6aa89bebd9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386829 | `0x85dc9beb2571298c9197ec16fafa556a85e41eae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386830 | `0xbf945292dc5cbbc8b742083f87d502699cb27414` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386831 | `0xc0dbdca66a0636236fabe1b3c16b1bd4c84bb1e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386832 | `0xd10bac02a02747cb293972f99981f4faf78e1626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386833 | `0xe70494225312c6b1167c15134dab66730f36708d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386834 | `0xe96adbd48d57ef7a5ee8fa622c1cd7fc7731630e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386835 | `0xf4ef9a155dd268e321afa7b9391e0602a7b09588` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-386836 | `0xf924ff0f192f0c7c073161e0d62ce7635114e74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386837 | `0x4fb9b10ecde1b048dbc79abeab3793edc93a0d54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386838 | `0x50f99d234872d99e4324bd287c50da3317cb3473` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386839 | `0xa1769a425ea1197f32d8c3e0fbe3f92eadacc21a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-386840 | `0xddafb91475bbf6210a151fa911ac8fda7de46ec2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 117
- Live contracts: 0
- Unknown liveness contracts: 117
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=117

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x042065416c5c665dc196076745326af3cd840d15` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16393737d09d2722ad13dca3ca8c3db957699f1d` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25ace71c97b33cc4729cf772ae268934f7ab5fa1` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2745c24822f542bbffb41c6cb20edf766b5619f5` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38a6ed6fd76035684cadef38cf49a2fffa782b67` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ea1a3839d8ca9a7ff3c567a9f36f4c4dbecc3ee` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bf681894abec828b212c906082b444ceb2f6cf6` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77ebfdfcc906ddcda0c42b866f26a8d5a2bb0572` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0b912b3ea71a04065ff82d3936d518ed6e38039` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd76de5c57004d47d0216ec7dabd3c72d8c49057` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0e3e318154716bd9d007e1e6b021eab246ff98d` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde1fcfb0851916ca5101820a69b13a4e276bd81f` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe969c2724d2448f1d1a6189d3e2aa1f37d5998c1` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf26391fbb1f77481f80a7d646ac08ba3817ea891` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe1f9cf28ecdb12110aa8086e6fd343ea06035cc` | non_address_book | unknown | unknown | unverified | n/a | `0x9996571372066a1545d3435c6935e3f9593a7ef5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01db9f9a32d4d11d82882bf705e01c39e0ddb5cf` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07955be2967b655cf52751fce7ccc8c61ea594e2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1762d3e9d7ae6bc7a2a70c25a4aca69391c148f0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f96a42cdfe3c3e90d1b58561d8731de63223bda` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2140ecdc45c89ca112523637824513bae72c8671` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2180560e79d68f8e3adbd38f3b81bb9b48d9ff9f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x280f04a988513610584057bf3fde1f56f4d22ca9` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2946f6d458f8cf8723a1d9e95043831d3937461e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2dca02c93988d3ae2451c588610c62671d38c961` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3efa9b4b936d8dcb4887ba147c8192f8f872502e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41a4ee2855a7dc328524babb07d7f505b201133e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46d811fa0a435ea9bce8cae11ebf9fbd0a60256d` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b86181abcaefc008b561e27c0aee64bb5eb8dbe` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c36d2919e407f0cc2ee3c993ccf8ac26d9ce64e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f386c4dae45a94619aee4852d92780fbd34ed56` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51af994bd8d586e81f8f48d68a47e16c4a179726` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5275e7264ab0bb75d970e7442de0aadd0c0b85ae` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x543fb43e829cceec32b623dfed83ef3622bfb9d5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54c6dfbb807be694841a0f1b84cbc49d8fc98ed7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56478532d0d6451e87dcc32fe9701cc6c7daf036` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a91b345244d3a285b30287b4c63c154ecbd2b7e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f1e78f12025d8d05920134f4a64ddbddaa924be` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6943a218d58135793f1fe619414ed476c37ad65a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69c707d975e8d883920003cc357e556a4732cd03` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c8d0afddbd29a0954feeb73904923fc8f73c480` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ea6c65e14661c0bcab5bc862fe5e7d3b5630c2f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7169e52d3d221a22b78e5a5edb87651651391f89` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71d5ba4e37de72415f685490b684538aae8f0424` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71f12d03e1711cb96e11e1a5c12da7466699db8d` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7259b1612b464c65205b7dcdc5ba9fd7aec24dfb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72748535e7fdbf564d0ac4cd18c3ebd96f81e8e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75df5af045d91108662d8080fd1fefad6aa0bb59` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bff37bda2318125c6b895d4f2b50bcd9e0cc40e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c14be235e385854ffb40c33bbe1f59c98778e24` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c24d0061b484b267f286aa2dce891220db254b3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e7669bdff02f2ee75b68b91fb81c2b38f9228c2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82b67a43b69914e611710c62e629dabb2f7ac6ab` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83c2e0e3b5328e599a3cba95d97090fa7d0fde8b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x872796bf7fe754754d2bee2c66d7de9b04a5c943` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89d321fc71abcd71045e7686c450d06e26cc1dc8` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b9e7c13f98291fe90b38e020bcb046f4a4dd21d` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8eb3b7d8498a6716904577b2579e1c313d48e347` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94447a6f0e6be5a4df198882ffd285a763bf98c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5ac7d6fdb51a1ffea31c4107b3f3e2e537aa2a1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6439ca0fcba1d0f80df0be6a17220fed9c9038a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8cbad2ff217cb9c32ca8d3903e2a2b65578a846` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa60a7d801230a26193194210e3f758dc8c49faf` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0a18f960221c6d56871c29e5dd7b838e79c2e94` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb11c0c3ce15a998fe403b36f2606c3be78ec2540` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba7bc1adf0c9a252922760075e607f510cca85c5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xceb06ecea3f588cb60e39bd4db7869013c6f65a5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd116e81265f4aa1db8e4851feef7061afd9f9e3a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd40355b17643bc26554c9a9bbc95b5cabd92c2cd` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd83893f31aa1b6b9d97c9c70d3492fe38d24d218` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd925002f88279776deb4907ba7f8dc173e2ea7a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1ca72ff3434b131765c62cbcbc26060f7aba03d` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3316d623bcdcbd878df25903a791aef1c26b543` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7228b4ebad37ba031a8b63473727f991e262dcd` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe804fe5fb14b02aba636f37fb6e1c7a08b2f4b16` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe877fb7e5347111504a1fc4ffa727c5d9adeb866` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb4c5ab9b36437f969888be99af42fc9087005a5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb6e0994d1184bac66615ad4035b022b3676c36d` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed84a648b3c51432ad0fd1c2cd2c45677e9d4064` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeee4f8db4410bebd74a76cb711d096c5e66d0473` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0b456250dc9990662a6f25808cc74a6d1131ea9` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6edfa16926f30b0520099028a145f4e06fd54ed` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf714c3aa632ece07eeba241803b26f806ea17908` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf886bfeacc24202967d053075fa9658cf1245e00` | non_address_book | unknown | unknown | unverified | n/a | `0xbf3d6f830ce263cae987193982192cd990442b53` |
| optimism | unverified unclassified | UnnamedContract<br>`0x226392543f7c2d29349b0e8f6b899a0d05d08d47` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2ac383909ff12f8a119220eec16dd081bb22f48e` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2f2c819210191750f2e11f7cfc5664a0eb4fd5e6` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x301c739cf6bfb6b47a74878bdeb13f92f13ae5e7` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x35d3fef295a14f7109c78487f516da112ecf46bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x383c34c04ca46a322454ff483ea8ccc16bc34434` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3b197f5cda3516bd49e193df6f1273f3f16d414a` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3fb1579e1a43881d775889ddbe92dfdcd9c10b22` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9194b6ccdbd27bd3738772efff3dd571a9bacbbd` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x95fcf30706f3b1e28c8f3d72f4b80fa3a1615b2f` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0xc2cafef7809ae0e37c62f9de9b15f11975567ea8` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd153f27e98c33c57d543326681b4be7a0c94a632` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf13e93af5e706ab3073e393e77bb2d7ce7bec01f` | non_address_book | unknown | unknown | unverified | n/a | `0xe1ce7720f9b434ec98382f776e5c3a48c8ba6673` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0b2402144bb366a632d14b83f244d2e0e21bd39c` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0b3e006a6af5126e625c0e228adf31ea494246a3` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x126783a6cb203a3e35344528b26ca3a0489a1485` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1aafb0d5aab9ffbe09d4d30c9fd90d695c4f0881` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x4a330d059b67e1b4fc575500cd805d70725ea1f3` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x51b5123a7b0f9b2ba265f9c4c8de7d78d52f510f` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x53b56de645b9de6e5a40ace047d1c74e8b42eccb` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6cbdd436210e19621efaa15db5c730038166b2f3` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6dcc0484472523ed9cdc017f711bcbf909789284` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x796dff6d74f3e27060b71255fe517bfb23c93eed` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7c9fc5741288cdfdd83ceb07f3ea7e22618d79d2` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0x91175aee6dac41b9c1f749ded077568ad93b84ca` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa321448d90d4e5b0a732867c18ea198e75cac48e` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa5f208e072434bc67592e4c49c1b991ba79bca46` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa6a377d75ca5c9052c9a77ed1e865cc25bd97bf3` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xae9d7fe007b3327aa64a32824aaac52c42a6e624` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb91e3638f82a1facb28690b37e3aae45d2c33808` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xc0946f51ddd63e12c51b23f5814b43c9bc8aa700` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xe69fe4b24e6288df707b68bcc2ad15c42ae50f04` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xfbc2f62b6a366a177d44706f04b74ae2d60bd556` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |
| optimism | unverified unclassified | UnnamedContract<br>`0xfe8cd454b4a1ca468b57d79c0cc77ef5b6f64585` | non_address_book | unknown | unknown | unverified | n/a | `0xe2e2d9e31d7e1cc1178fe0d1c5950f6c809816a3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Giveth GIVeconomy Contracts Code Review.pdf](https://github.com/lastperson/code-reviews/blob/main/Giveth%20GIVeconomy%20Contracts%20Code%20Review.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13183] Giveth GIVeconomy Contracts Code Review.pdf — no match: Report states 10 contracts in scope under Distributors, TokenDistro, and Tokens folders, but only 5 are explicitly named in the review. The other 5 are not identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Giveth GIVeconomy Contracts Code Review.pdf | GardenUnipoolTokenDistributor | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | UnipoolTokenDistributor | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | TokenDistro | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | BridgeToken | unmatched — not counted | — | mentioned in line-by-line review | no |
| Giveth GIVeconomy Contracts Code Review.pdf | TokenERC677 | unmatched — not counted | — | mentioned in line-by-line review | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x900db999074d9277c5da2a43f252d74366230da0` | GIV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x4f4f9b8d5b4d0dc10506e5551b0513b61fd59e75` | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 148 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13183] Giveth GIVeconomy Contracts Code Review.pdf

Fork inheritance lineage and inherited audits are included when available.
