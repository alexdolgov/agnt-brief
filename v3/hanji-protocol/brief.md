# Agentic Audit Brief: Hanji Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hanji Protocol (`hanji-protocol`)
- Website: [https://hanji.io](https://hanji.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 459 unique implementations (459 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $961,006.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hanji Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base. Structural roles: 4 core, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), infra (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (3), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (4), layerzero (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x15c8cb4e336b1e478d155d813830129fb225eee3`, chain 8453)
- UnnamedContract (`0xc032b6dfec3511a00cde9ea341d140f4733609de`, chain 8453)
- UnnamedContract (`0xf455b3c0756908c6a2f44a7f7390053cfe354eea`, chain 8453)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (3 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 450 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 6 of 459 unique; 453 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 453
- Unique implementations: 459
- Raw deployments: 459
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-241636 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-241635 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| LBTC | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241637 | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-241615 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WXTZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91f9cc2649ac70a071602cade9b0c1a5868af51d` | ⚠️ Unaudited |
| WXTZ | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-241629 | `0xc9b53ab2679f573e480d01e0f49e2b5cfb7a3eab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (453)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000cba59e478119cce726e0bef9aca3bacd3097f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x002498acceff134416d22ad3046a6c47c27bb675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x017a81ff27f4017a676bd7cda1294aa2371d44bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02bd5d42c9fa540bd483d353f34e1d70d538ccc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02bdbd98214dbfe49babd58d913c3d3ad6d093df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03c73175a227c9a86a6413eaacd9876a34c372a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05cb62e909abda28541587348fafd9b18a9a9ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x067c7407a62e45cb99c0d88b9700ebd8bbb62dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0684998ec6e768bb0770406fd3e0e674a52b42af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07bc9d7156abe4e2d9bf982b8b6deff857cf9b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07efb83f3e69a2957bb1ab38cc31c813bf129ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0891275b419b51527e87edc2865f6df560aa0635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08faef2ec10d2b3c74d383d2c0778ff947dc31b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09db7faaa8def35ec8acde39aab587dec929b493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bd330bd0756c63278ccbc94cfccac614dda8162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d99656c890c098eaac137a145624b43ac908bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0db171075ecddaf9ae741eae77af0b93dadde234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f100bdcc0fb0e6b9a1708068f128c995252812f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f5c2b47b8f5f578ca98a050b24cd72300204868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fb2e10b071ca944e240faf7bb7dcee5790e1047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fd413ea7ed448ef244ea3e767bd581ce4251187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10b31bf88b022d1c2ca959b63784cdc9425c8ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10d00c9e119a603bed98700f8b2bfbb66bdf4d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11453eb2137501a2f84978173fdbd8a4528f13c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x118c37e77928bd902599839f4ee3045299bbfd01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x123bd7527c2cedfcef71ef9c2ed01cfb8b7702f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13412c20dc74b6c4e1c71084b2d42611a90286d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13784d11336f8960768525b0001978d680a6dc8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1418c75ebc89b4c56817d139a919bf000b543f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1535f494bd3445467777d4988c8083bb63f44b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1562a5922caf381864b5f095ea3bc19bbac2e6cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15c24e368d3a1dce187a81956af63a576b522bef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241611 | `0x15c8cb4e336b1e478d155d813830129fb225eee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15dc741284ebd03d4eeccd9f51006453602067c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15df7f6ee8caa32a8d4fcf3e56cf2b4a9d7b6bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15e99897de4bdc4c7664ae55309782684296a7d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1636625b8898a16fb46410442076e674c13a649f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16649591e17ef84b989e9beab55881f9cf2cb544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x179fc40fdb959fa14a90096578a5376aef859856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17ddd0d2fedf70121bd84f94e4eb070f39c348fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17eebc00b2bc379e52395a366d4b26804e617ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1819b50746fc944d35bd87394fa91980247144c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1944435592fa0591c91888262afa4874a7d879e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a2d41e73f6175a5da13254e1254b1f1073e26f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a582b54a66ce70aa381b059ac035c292faca20a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ac27aabd5eb767d9331f18e2a59362274b144f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1adcacf725e927d8b42f61ebc879da7e15c6e395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bcf61e8210a7a044a763d6861cebd520c418c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f14171afe9cf85d15bd164913ad9a42be4fd9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x202bf01e4dc4a191f01b1c424c01fbe8ca0a0324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x205b2e094394dccac6184e97b01c5e11e693e24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20663c070c840ed9d76e6a5f3ac926f81cdd6b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2090d3dbfe3213b73872b59c1d4d76883e2fc8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22277def743613549159c24a1a4f1da5d40a3010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x226e0099e3efd1c9c7d69dff09dee32435f2025a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x231ef221b0edb3c9043065dbdd0aa30a2eef88cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23a6ed59fafc2f65f5e188cd9889e736cafcb467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2508f65eadc4305b1fb78f516abfe70e7d43825e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x251b178bf50f82b77fab475da1b793c5f9af478a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25c48bfb22424d5bf6befb3f4aa84322051a8b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25ce9e924eb1c433b33c533ae3f8a014da8b7103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25da933c421588ba16c4e2c91c489a97a0335684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25e048adffb7f3e8ed4990320a4a9af3bca6b9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25f82202a79ed79e7be2d6741dfde9f618bf4600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2626e0e348c7db70e16c267a72f2ad5291d88bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x265aa4039ce758b44132aabb8e20a12ed01b1171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x276037199a344ce55e1c51e605094ba16e8531a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28445288a10f5482d88f4902f2d8dfceba026005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29f8e52e0f44967c9a2e39f58d381ee58001e298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a708890723eca52d1f5502d38f93d15da4e1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2aa9a74568206087b3cdb9dee0ce258abdd823e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b0071a73e997c837ff1f7f13351ce061bc14072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b0a4fdad8f9c5912d291f4ce7d01d83fe5f6852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b3cf6c559fe74c1333b640306bc2678d9cc05bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c40a31e46d22b1a6a3eb095f1f5a8b30b9891e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d23729cd2be2eaf891d350a59b24f5ff263551d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d274a33aa61c3952a8cd09b111b8d61806ce412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e019427051d5059fc728855f94e907f5bf9281c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fe95686ef912c4b81eef86c8f75764d0d0c2832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x303d6511b36e8c3983bea773d36176968b62b048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x310f2bb5ab08ae5a6269af0ac344aa3e376f2812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3168bf24a31823fc3e470559641d0df324f3bf65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x317bfc3f176744264fb7ea8157b76e1efcbd8067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31b22f7fd64d6cc38a0ae05a929e0af8cfde71c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x323b25b9ec0ad1ba9a39aac17a7bb27d9049f1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x326bb6457067d4dcf2c2220e19770b21cc96aba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34784e61365306496a38408dc2ce0b7f6db4bf75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34de25c26d28aceb846a68fbc66c68fd0c31e9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3510eff73e0c5c3692dcec302b54dbe5ee003aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3592fad5ad84776907971246ceca1140dfb77706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3619c22a81cbecf1fd48c0ce040aa977eab271a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x365fb63b6d8d0bf91fb06da2843487c2049c9c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x369aee75c19b1d3f95a17313114b49e6de1e5e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x370465a9d6b69ddc0a5ecf35282a9c6bf0d8a2e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x387970c82084926906dd9e83f0a1540ad10a07f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3901fc5d7fac1a097ffd26548c432314fad69992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x397db7938387449061019598cc1b13889d2da1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x399899f0aef094c975f235a8b5802288e28d8e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39c31a5796c5fed66bcc92d20261f6a00e22051b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a370bd509d11f24525424ec56ebfcf24ecb90bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b252128cb5908856d1ae9166aec73cb10c52686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b6fe3da86770d0027854e4be57262b63a620632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bc2233abc9a413f3902d5eb5cf5a712501ad6ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3be143c5dfb0397920b7eb82f80c2050927b7298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d0c206141ff2f4e1422e2cefecd0a18556755c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d444ca4113df31c1d1a4457a2340d5ae1598fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d66538cb47ce8e0ef29b519bb590586e319e750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e516cf6292ddbf87d400b4f134fec6b45485f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e5b49e95c4549e62480ba1dde2470a729049318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fe3e4b36137ffce14c3d6e7c0575d54c28eddd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41e2ab0604f6dba0a5feba2f5d745de1e98a55dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42b48a5eb86cf1b1add036abcc2314a5ae6e73b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43ad1e5912938f8e645e7b1cbe468b872a97f9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x442fada58996a53455fa0635ac5ee97cc25d800a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x443a32badad602dac9ce5bbccf8f6adf746553db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44951e019ccb81f4064ccfeec8756578258fefb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45616a8a96662f113be7b79892122a7888122d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x456be92b2283cd28d928f3630b5db4c0b10233d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x462d46b7902db842bdfd524d6a4230602ada17bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x464a9ce441ec0029460349adb6e7c717d71d3735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4667be037859161b8c86e13a3d2ec809edaf45cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46ca459f209cc7438d0020bde4284965b7d35d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4716f2f3d86412c0661c2f0ad5b4e430b9d30424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x475e3be524782a1303e54a299d3fe302da47d2af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x479777563c9c82e5e28549ebe477a733dbcd4bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47b4003b57c151fe6e85c34a224947d090fb2114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48197d328e011d394ec7e869de326f7be9506d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x481e9207b1f0613cf0a2a54ab6fa4316531c4b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a1062bd8125b2d2a8df1aa290a99a43cdafc844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a3463e59a6686e8748450f8a0059fb0758e4287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a8c484058c379dc286c13e7aadc991de47d1a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ae466a93cf8023e841d2b28e48c0df138f38077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4b5e7287210df180bcf159f25f0dfe0a80b14a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ba330035a1bd29ad0b354238ff2233a597c2476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ba6e0d4d1676b4f649195c56e8be4992b9e0558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bc20be7211403795d237e043a1d3dc330659e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c3b14718f36c8f900c8f617b8cbe87dbbea2228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f4f577116bd9982b9fd644a36b98f8022e0e162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f79d3b8e07647d40f6dc7644822feb0a132a8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fb0e80c4a8127e9df1ad8f44fd4ca0251698fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ff526825c7162c342932a92b1c23ae263730ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5068972860409e7b21e26120874698a397105aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51a9a594293ebfff56f11326e12addf37da42681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53936e276036a44c5a5c9d865c6096db231ad56e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5469a9cd4b748d520594cd2027ea4a3192f32178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54994577ee28f968835185098ab00ccb088c9333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x553038e8e5b18ba6370cdef4d6c8998fe1e3286b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5598f42ef8ac688269feec969e54bba2988c0f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x559c823bee53a0ec20265e82b90c1a1ad77f0b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x568c32cafe2d756d83a5abcf14e21152388c5c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56bcfb9dc84fbe6f5a64288490aeda95c38cb15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57c01b773b3d7b3ab385243f6aed1afa9cb7d2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57dafd63aa581657b0a76db413f371e17a1b0cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59c91fdb433a0b9973c8d3d86cf8ab5c5f14060d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a11326cb3b2f93b9b74951a153a76f46a1e1010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b6f6077eed99f6b9d81f4245adc91cce99afeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bcb5b01600e222c0e217a8b5038e0eca0632174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c0894d9d2ebcfff070819ab416f90e876303c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c28a12c8ebaf8524a2ba1fdc62565571aec87f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c3ddd6b908273e93236678019c7a986a7ad5a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c4a432595733ead68ccb9e3243f8085fade3587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d5c6e996b889282cd36becc8a3b1aa00d28b85d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5da21366ab68c529077e7d104195a4a22073595d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5fe223fd1244669c1f6d2fbdd198c30ebf140248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ffe36a51c88251c0458584d222e296a2ae8ec60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x603180fa34c54f127c5b9c35e32f2412ddd5c780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61d357dac44a85b9350389a80df12aa1ad41f5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x621cb3736deec7c5c3dc5af9063adc1f1a271803` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-241618 | `0x628a1d48aee56cb1b8a3187d0064e246fa30eb28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x628da4827c6f16cfa7279d428753e64620235553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x631f1a79722e2bd727d513684dd4d0010af04a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x641811c8aa3fb03dd464fb0fb68d4b68eb7a20a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64cfb7d1c0699d6ccda3a5efa68601a5356a4c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6587243346992c44578e391b215bc46d1bf1dfa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6590d317f0d4bf3831780fd8bab3076316649049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65c388ef1c751c43cbf4445d6fb180a87f852fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65dbb1e29b7d04c90546ce0f6e4a4743a80b2cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66672de0d193c5e988d40f6b9d948c2dc811c865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66a11a190ea85d2dd2f676bda056da89cafc2458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66dc89bce95f937a04dd938666894ccfbe6c4f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x674fabc66c78482014c706b16513425b75a820d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x677cc7524c834f0269713bd429c529d8c920c6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67a53e435781a16f5ead85d1beb31b757bb4faf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6803bd6c3b104af63f5266ee8acff2058ceb8f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68772a55fc53721c2ff2149b72b0a451838c3bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6891f8e08cf08afa51165e2fa1e62c1ce24e9c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68e64d3eb1fea0cb1ea6655f5a9b958be92c2698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x691abc9d3a95537e67b7edeeb7bc83b220f82a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69ae796d5c4018f033a0a18eebd6d1cd431b9451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69bb3c405838aa624f94015d4d47c6ad5f1f5974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a9217e8098f10d4d5fe96c6df166afcb03c9a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c3fd0d328107cc225d25ec387bd80ed83e11cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c690f2f5a83d08c18afd200ea9c26031bfcd629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d5c1e06b1642994b9196bdcc64b485ed2a76a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d5fcd208c4b11ab61eace40e553457792b41094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f94f0a83a6067579576e0b3130eacc7bbce7efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6fae4b9bba0840908d6322b803c69ebce8ff30d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x701951a13aca352559ac064bc68a52f956c6e3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x711230eecf1d503295f75ae3e27cfa37781ee208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x718e3aebcaedbd40e11252cd77ac4f43be5d7c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x726d3ca269e7af4d90e33e8db2ee08149bf704a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x729022f381e4e3bd65fe22f7f128f8c270771f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73def175a52df32f10497aaa75276f304a05fe72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74076e450a967463eb63493a98605c41670449ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x751ec8bd1397075beaf3d4b02388f583b12c1a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7579eed1044cd7d7e48453fd3221ad8a49a15714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75ea556c290fecb1d4c2dd9d8e078ac00deb768f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x760a8f40efc1a279237194489e0511223ee7b50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7704d61f054aa71e949913d8deaf8556ee48c88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x778f6d65e4ce192d508ec1eb73a90e80bffffd3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7827b961a60dcc64a6437ecfd4a532669f4210ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79035445ab723db2dfc9efc80ccea89110d90915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x794c98ef36774d7950ab5dac2fa6580d473d0066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7af2a44426c2e2f3893580c2d25e5d59f59c683e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b3d93bab3426d0a12bb83041ff751aabb072bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b81b254544996d4d2944931b57aeab12bb5fcf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bded26deaf0afcb0b1a7e0f3d08dfb07d866050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7cec501b1ebf1cf75a1a9e47a1687fd04020df0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7db24501f04205ed501394635276ff6f670d0474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f78922cc014c2dca20484d9511626391998bc2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x804748db52a43b7855550eef0e71d986ad4e81ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x80e7c35d8af5d1eb38a60b2e2c0b4f402927eac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81350dae9c2483cd99e141e065e02aa3eeb014fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81c6a878d0c154c2d0a3f2fc1b7fe2255361aea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82cbe72e4db1a1d95bce93522cf47736f647a1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84a77a5eaaaadb95839c0beb9d728b7f4c094080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8534b8f2b8c74f7e6644ba2b3439b26db79e762e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8598a859c0d1a94c5d3819ba6a28d6689825d874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85c65e1d8060e898ed743cab83096bbf5198a7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86a865477b569029a36704bad5c68eda4a9c7ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87092466f2d410f373959dbc2acdba9697c24017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87dbae0a61f403b7168efeb375a31d3f343fc99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87fe8c2282bbca930e40dcefe29461a14b5f6e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x882ff3827dbdb13b070034ebfc5c366a1fbefe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8968b605edab833b9ce59c375e2cafafdef579cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89e85c4270305491292e19a18afb519312078b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a186170383a7a22dc69b6cd7952f2198f60234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8bc3f0b3c4fe838ca5777be93dc301ff36fc7047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8c2c95d9e56a4afbcf5febb5127189aa4bca7134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d8cfd71333ef7ddaa2a71d7cae260983f8a2aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8dbb25a6835b9a657745aaae4a08474b2668b81a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e3cf076c924c8fb01d574776742f217793c6314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ec31c3fcdcdc0dcccb53bf16685b62db6fcc824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ee7ea69731a375cc069fc0b004dc9e4d2f48671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ef94028497ad9d669048f8fe3c94d2e3fa24dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fb47cb1d6e8099732bcb86372553439202cf94c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9100fe1a1308e7357e2b496cf23fb9d362f6f511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91c826945f3128d5e0d870ce2d693a0d05e7eb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91cbc51b8a5c5da0934c40d6f276f06a007f314d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x943c53c592fa110abf7371642f57d7adc21293b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94516cb6b45370c8f1cd8fd978b5d685c340875f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x947c13afe52b8676144664e12487544718089267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x948b27995274e755ba6f71208943446fb2b0ac05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95b928282ed034bb54b21a961cfd58881c119532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x963236377197b84cc10bd36da11475bf1fb93f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x968be9478cb623e82409b2c0c59f9f7444c325ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96c28a5045978baf24fa688128c894b2d4e91780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96ec2947e73837f0899544ed2672c306e97c6cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97495676c898e2ef2daf69659052853ea30ee27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97c2badc62ee819a15d6cd0901c3c51c1f6b5686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x985a7dbba874cb42059433660aef47133e85ae77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x988142bcee58f39acfcf491da14e1f245f30c27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98a8b2710b0da936e8a8cb53b182e7a10c4cacc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98c6478d82a56f171d9be56d3532b6f43ba1cae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99af616db8396758e1fc57429aedd9d27da63574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b6159a14796434e85472995cf962765300e1e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bbec161c6b5776d7675d4c8124e82f21c0cf986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ca28875b5d80a284f10ad2dae11cca4d049e1d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d092ca0c2a3c379a9f74879db23d95424febd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d5728a76caf004338df8eb632afd9084b61242a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d877a81423fe6ca7531981ebcc903152ca719d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dd25d8ddab60323d3987e0c2b80710fe9ac7215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e075831c5864c715950f41761e12141ee35e90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e66785ef9a3267932f531869bbbe119f178a3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9eb2e46f60e9458e16df3943858f66a982f06ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ef68c587d326a59aa03bb4286d79d5be16eac60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f0e9b9e90d60d245859b0f4737a844f215c6ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fb2d4fc7e29c325aa212fe5a5c7bb6166728237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa096ce103cb9364846e402d161a11c57e86a6ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0bc6fdf7021a22121f05a6918d2dcb4ada98b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa16b18335822de764a0ceb00d124c00a92a411cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1a21db9d8a9d2728e19e6738aa0f814bb2a8791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1ea028f312d9aec6c662ebfeabfc2847d314a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa292bae56ab6ce211a91950f53e17c140b46f4c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2ef907c46a6fa40af17a6196bdf99426f3157ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa33372eb10067902844e06ad25111745d8c06f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa36a43cc23b7cea698e7a2024b21513a6183c1ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa40a7469e6b19669b310d0e3704592034e2f8565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa433737cb9b07f504d33ba2d452a75a6fabaa614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4af2fc125a7694f5e57770a5d90b6569321b3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa526a139a9b3d97e5992586b60d8782affb27fec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa576cd010b1178e0960a4debc86af1ab9059cc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5dda8e57645f0d690ae283e6d0a266d2b9b4e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5f3335fbedf95a101c750c7281724e8f01bf18c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6496ebf7e445172823aa7cb4c74d5f60be353e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6a739fbd23426a058faceaa4c41b752847cb611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6f027de8df9cde1758803dcdd4dc332bf07ff99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa73d880193a96b1c1917680de7b9b8225e717569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa79e185382d4613edc9f098a35b8135ba9846e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7dad6c1f51aa2b9c522bf6e60862963355ada65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa92056ed4d1b764596eaf347df6d70afef5a0afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa938f902c8a0c18b2041f789f43072e5646c88d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa0d350d3e29137e60b87d9a5f1fe9dab241cddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab8bb6f0eb33af699472aedc9ba133e4026892a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab9e2acd3b7995d04ed67c197a75885a1a85a625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaba352e2577905a0d4334569714f75b20e64ce36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaba3ca5115aba2b7db99daefcb6d512d5af6e187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xabf45ddf3d01cbc1ead81a288b436e795bac7b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac56876cd44a89a8d9a59b5b88344da23e025164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac6bb35f849f1704adb4f84136dff95987d814ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae4f5d3522f5bc87e67dc6c7e67ae4e019fa1eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0035f8195d35d9b8ef8c838d9e19a85287bf285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0470fed5024795bfd8e66c40d1b7e5fb83d64ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb1b59c9b703868d1e03c1d2633da298e68417f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb22c64e5a3baa6f08c7563c2ff4a04de3a659ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb47855c21130ed378d5abcc305643e380b19b7f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4871603440e1e5625f723f6c6c07280e5fbd7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4a221768fccbc33f091f88dee4f28a5f5e8cd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4cb999828087813f4834fafa375f3baaa07b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4ddc2874e7edccc62b2e1905fc290b6cc1f5c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb56feaf11ed61c97b16f547b5b629e34522a0ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5de7d444c9fac524b2861bd0662b7a4b716a606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb663baebb603ee2f138528426f0df64881293aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6abe99cd747afb2829eba48fd28bc01fccdbcd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6fedcbbd84714942e5d1f8dc3741127e90a4ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb71234641c34014f8b7f18b41e8b8cf6d7081370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb74c3463de93f68d86e21b911ee8f04c5caf29e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb825f72c6c9751f0054b6e1fae7aa781f1748e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb85fc6cc2709d316727167643506781283cebdb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb975f704b95bd77800a4fa9137a3256594204038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba07525901622332f54d7b9dd352ee456c4baf8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb2a8db7ef583edb85c44e0e9e3cd6208a9d4c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbb17235dfa415ee13330a083083aada09ca7505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc3d0fc1a19d61283ace41e690949c696542defe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd4101013c0afbc162eecab221400523465a23c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe5df4cd93275f6d1911820dcec9d914539e06e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbebcb8a02c77d263c7b4ef16e3f196cc81c4cd3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf81790d62fda25b510b51bb7ab7b368ce2d74bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf9c04fc6abc4b87957d57c861a4c56c6704a104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbff33451d085500139cb96138edf9f718ee01cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc00a57649f5ea74e29582ae5b662b2f47d002e8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241627 | `0xc032b6dfec3511a00cde9ea341d140f4733609de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc065f1c191c7be2df8e45166defcbfdaca714c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc12b168c4593f22c33f09a8c079b18c3e6a6b614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc14156e4064f69317c0957e03c0af114cba47927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc181837bc726ff87dbb1b8e0cf3c459d16d7281d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1b2469a84e3d997b323f10072cab5fa34e97f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1f4753b97e9652c6417af61334ed13da615f791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2c201b829650619645f750be700942a4041c34a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2e4d9b04afef988c29264e2ab096c9afa3b0e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2f6d5594787d0e2b960d755966ead5e39c5c42f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc313cfad727285825e0af1087109d4662660933a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc39cffff960bb638ef7dcd12267ec1a00ed9623b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc48e4b0cfbbc70c2b19e36f9355978f8ad8e2ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4a302ae36326db2b2d9043feb85cd773b83fcf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc561ef27be2e70a9b249255dd45355f9c45f79d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5728bfec578023055190c72f4553597132a1cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc64b139f0874f9bf74692ae1df513ed4f9a43224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7264db7c78dd418632b73a415595c7930a9eea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc76ae4251bfbe9a2206631121b2a1bbd09b64fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc81de6fb9c0a1a327c16d4876615162292b45aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9f137df46e8df9dec7071af6260f798eb122bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca9b0bc11d40f75d424a8f4a2900be234d202439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcad1f3c16cc5e32de26c519a9f1e37cb5b6a747e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcddaad3f4c9f915a61942db72084eb69c85435b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdf3e26fbabf1e2eb3b859dea3c1e2cd37cd4eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce8f776051b6ef68ea1184499fee4eb22b118e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf585de63b163ca5b9f73638ef9f4896ba9263d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfac4fd74bccc7023c11859b7ec3e4c18430353c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0acadc26097daa1e0a80997ed63eef98c2f3923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd269f54c48179b38ba7467faeddc135d58df7c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4212cc6eee874e43ed7af4bfd6f696bfd4eb98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd466a343ef427253800c5a3c184128bafd1a7725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd48a8f8c2d97b96679ef7e7c5e588164ca437adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd574cae5d0699dc580aedc80a78327b9c8037ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd678b7a3f04a4954bce6c343dbfe6c07f34d30f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6b1cdf0a1f3572258ed8cfc88ea1442d98d801a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7596874ff3e6d4c90c0348c17c485318cbb47fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9543197dcd3bc425f67925cbe1f81fb7934e625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda3b9ae4c421106d964f2a98aed214960e6db8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda62f767683b584bb94ea2449a0578001a629bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb3be573df46e4210ab55cd31d5841be2006a69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb6e5161b3365b481769b656b46a2705bcf0d370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdbdfbcf737c4f95c4544450d42a1f3010e1a5577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcdd4cb16b855b49cf8ba321073fefe6039689f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcee992fccdbffac04b7a09be7a41e448b61e87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd3b9507f5767348b89b4a94c67e75c6d4b5bf9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde3bdf0facb663be7f075eccb097fd6b90757349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfa0c1ce230e3520c9351717c08dd66fffacf339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfa1d50f72f33f251148df5a9e273f69021e78f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0343ec99dbfd2e323ad92e8455b136aedfb5b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0b29d22373ba27e5f6cefc1dfc324a4a68e3e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0d120a56b8516e5e9c58ba1943a648b6d311e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1284813de72b9fb5ea61523b7fbf24861fc9ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1b7ee35a80a60a218ba695ee4dcfff8b3d27083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe24d2be1e35f270ba0c2139b004807f26bb61ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe39d50cc8a9a15081d5bfa3ec3c0f310a2152ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3c7ec19ab069c8b0cd2c71687477b3253e0699d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4d9758a80379bb4240312c81f70ca3e488d1417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5e4a53d98a5ed053ab8efacea1811fa3418fe3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6246a4456187dc164ee1b3225825fa0d6452a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe62625b668f27f333974bbab0300df0dbc1f6e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6709d3e1ad242cd115030fe2cd94c3dbf348ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6a5172440586a843a3c3aa5549002c2e2f0b472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6a99105eb44a735c871969c65ef00108c9433b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe76cd5345f4d9582db2223c8abf8b1c3212ccbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe92b5ece67ae1dd17152593a8bbb7ca285e69f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe92de906228c1ea07d16b824926b38b2037a06e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9fad433bcdcc1f173c81382b6d35968c44de69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeaa9fae201df379d1e0721e95393d4e489faa9f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeae9fce3daf920a9ae820d9c57de9380e4852919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb48946cbf6e2081762c9f90f4181a8a0e323ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee5922afd5224b27cd0d33f7ca0b4e13d5aa07ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefa65401556f73a87630c75ff839e7a0823b4783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0049e1c650c998a4e8751c24f5684a7b68a7bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf004c9cd0e40a3e010530f3fc41344e35cee0cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf016dc5a620daad90b91337e0c335b7e1794054a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0b20526e0c5dfcf9ce583266dd4a389119d1f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0d4fd6595e25bff0f0ab0df42f959ef3fcb84f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0d5a9380f0dc97a064ea5a8e549c5c01a9988cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf17926eaeea5e4bcaba4585db6092bd37b79c3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2a65f85852501f90c2434a775514bb043b924db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2d9338c4a391a6b5cd6e0ee60e0b14f05d7d536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3fbbf7a2291284668c220d0cd08660ec754a7c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241632 | `0xf455b3c0756908c6a2f44a7f7390053cfe354eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf461afc0fbae72fa1d29ec6941b71de805d7e66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf468fe7f762e70dba4389d42efde233684526de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf52d1bb490d56005bcf88092e2ddb5ab3b996a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf566fea31437137e4ec5aa0ec5a31f11564d654f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf56900d53beacb733a1eec41c89216b8f095bf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf70fa9cba14864c6c6f58f70e1008b4eb1b109fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf717ecfa917bc59c1f8055c7aa85e286bbf29552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf738af7ea874794051ca9a14690a283de769daa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf75bb3097fe8b90d915da84c31a457ffc8c4e5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf83e5f5ff961d08d6b7091e7719befdfecdb0251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf8fd3d85dfc7617ef3ed16f4d1ba8d52582985ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa14e78a26f1b194db74748de80dd239d184fb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa3d38012344899d1f78c0d7dd2079f90732cfb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa6630b3786140934ae1cc68fa536c68aaaec0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbbda22cf946ac7d3dbf758d72546ae201c455ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc32f8869915c22aeceb0bf4a5f0c6f676f08cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcbd51dd0fdb4de9e73976eef209a41d5d10c7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd3dc40730bde0f6c9ceeffda5e304e01a6ab221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdb4f0eeca12d523601f15f9076ada8c16a25467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdfb1c3aa47547917558fc9c24c51a0550bbc1b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe59c88c34c91ada29001bea3147bbebac1069f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe91a8d588551c1c7873517144645ca47dfd6206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff07d70489a020685d3a8e1dda91527ebeb5b540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff0f59b2904fdebb9d789fbbb335f56890b020f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff2d53a42a74bec3b00e71df2ed691abbb078e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff515cd0be6e515a2f4cfdc87716534ee4223222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffade1e5b4b96d615136dfa5b88ab67c3fd8b350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffb1369799702c84c382463a9eb58901830655be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hanji Protocol Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Hanji/OnchainCLOB/Hanji%20Protocol%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [Hanji Liquidity Vault Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Hanji/Liquidity%20Vault/Hanji%20Liquidity%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11585] Hanji Protocol Security Audit Report.pdf — no match: Extracted contract names from scope table and deployed contracts list. Audit date from cover page.
- [11586] Hanji Liquidity Vault Security Audit Report.pdf — no match: Extracted 14 contract names from the scope table and deployments table. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hanji Protocol Security Audit Report.pdf | HanjiTrie | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiLOB | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiLOBFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiTrieFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiErrors | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiFP24 | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiHelper | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiWatchDog | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | HanjiWatchDogFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Protocol Security Audit Report.pdf | OnchainCLOB | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | OnchainCLOBFactory | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | TrieLib | unmatched — not counted | — | mentioned in findings (e.g., TrieLib.sol) | no |
| Hanji Protocol Security Audit Report.pdf | WatchDog | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | Helper | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | TrieFactory | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | Proxy | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Protocol Security Audit Report.pdf | Trie | unmatched — not counted | — | deployed contract listed in Deployments table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPManagerFactory | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ErrorReporter | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPManager | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | Proxy | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ProxyLOB | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | RfqProxyLOB | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | Ecdsa | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | RfqOrderLib | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ProxyLOBBatch | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | ProxyPyth | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | TokenValueCalculator | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | PythPriceHelper | unmatched — not counted | — | listed in scope table | no |
| Hanji Liquidity Vault Security Audit Report.pdf | LPManagerHelper | unmatched — not counted | — | listed in deployments table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 453 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11585] Hanji Protocol Security Audit Report.pdf
- [11586] Hanji Liquidity Vault Security Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
