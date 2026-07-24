# Agentic Audit Brief: IMPOSSIBLE

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 17 (0 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: IMPOSSIBLE (`impossible`)
- Website: [https://impossible.finance](https://impossible.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: aurora, avalanche, boba, bsc, ethereum, kava, moonbeam, polygon
- Contract surface: 129 unique implementations (129 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $152,485.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for IMPOSSIBLE. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across aurora, bsc, ethereum, moonbeam, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`, chain 1)
- UnnamedContract (`0xb0e1fc65c1a741b4662b813eb787d369b8614af1`, chain 1)
- UnnamedContract (`0x0da6ed8b13214ff28e9ca979dd37439e8a88f6c4`, chain 56)
- UnnamedContract (`0x1abd0067f60513f152ff14e9cd26a62c820d022c`, chain 56)
- UnnamedContract (`0x1d37f1e6f0cce814f367d2765ebad5448e59b91b`, chain 56)
- UnnamedContract (`0x8f2a0d8865d995364dc6843d51cf6989001f989e`, chain 56)
- UnnamedContract (`0x918d7e714243f7d9d463c37e106235dcde294ffc`, chain 56)
- UnnamedContract (`0xb0e1fc65c1a741b4662b813eb787d369b8614af1`, chain 56)
- UnnamedContract (`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`, chain 137)
- UnnamedContract (`0xb0e1fc65c1a741b4662b813eb787d369b8614af1`, chain 137)
- ImpossibleDecentralizedIncubatorAccessToken (`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 116 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 129 unique; 118 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 120
- Unique implementations: 129
- Raw deployments: 129
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/impossiblefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 14 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IFTokenStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2efedebd6e29963511589731a33311196f00eacb` | ⚠️ Unaudited |
| ImpossibleDecentralizedIncubatorAccessToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-387393 | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ⚠️ Unaudited |
| ImpossibleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2` | ⚠️ Unaudited |
| ImpossibleRouterExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2` | ⚠️ Unaudited |
| ImpossibleSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4233ad9b8b7c1ccf0818907908a7f0796a3df85f` | ⚠️ Unaudited |
| ImpossibleWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x45a3a315277fbc1bce0611c4398b32e0317fd7c1` | ⚠️ Unaudited |
| StableXFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08823b2f32c96e120ed15d595c4dc3069c41963c` | ⚠️ Unaudited |
| StableXMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c028235dcbc7f9de8926f8ef36feea55b4e4100` | ⚠️ Unaudited |
| StableXRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cce099ae70f17fb74adfc9b00dbdf208a5e5fb3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (120)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387389 | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387390 | `0xb0e1fc65c1a741b4662b813eb787d369b8614af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0246f87125973acab0293bb851dac34f7644344a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06a194b9ba05137df24ec5bcde247421fc8e2984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06cf7a5f0df909db2a3d19b2cfc9600c8e0adcce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08854c0703bc7f56a871157a2bf98b185cab6b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0996c0eedbeb02571e26372b47dcde21a08d9709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09d70db37cede94d1664c0b2fbd4d1b7ec9a88e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c0c475e32212b748c328e451ab3862ffe07369e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387394 | `0x0da6ed8b13214ff28e9ca979dd37439e8a88f6c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e67e457a457d8378c42f3942888ed66978f5a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1051b6886d699d2d9ee480451efe226f3a033cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10b7f1efbd9cc85c1223e619dc2bd63f025c4b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x169757602708295ddb1f89161c95bbc913ad8de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16ebcac4e6243d8d94f391baf7873933dc4fb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x177d399639c3fcbadbeb9a26d0f79ec4bade1e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17aa5354e25922a23b952a28fbda63a0c7d9b09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18be671d4221e9c7f2642a0182f3b3fb7913cd3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387395 | `0x1abd0067f60513f152ff14e9cd26a62c820d022c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387396 | `0x1d37f1e6f0cce814f367d2765ebad5448e59b91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dd1efe759e423ac1434909283d059693f104449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eb1c7bda507df1e9cd4bf082948451e6aa1e2ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252b23b524f8a93506c02ff355780ced62ea4004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26ef7035648f5d0a13aa0a1dacc75e85d5465013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x285458d2dce37cd16d769528a1f5db3f267b1cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2af7d4da7639d8d8974e401486b243d090e4a7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c43bc85a4a08757666219e0305a98b6cbdbb7ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30951130404da60cfde0725e0bd6e0161f1dccf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3103cea5e03902daeaf0fb8164542fe17942752e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x314062be53367be0cc2a4a3141f4021618b7c2ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33a9db0561ec7b4ebda60699e8fa8203dcf740f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x349693ca57cffc6f5fd47eaf879812ad200b1144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35de9fda52b41e77b442416eeae5ffc16cd9e2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36e0802040bb8eb89f1106860fdc41981d621817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38535bf2f371700c92f35fdc677b628ef12cd433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x389f1b7c2d3e30deb77db0de041c742a6533c5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a529421d307005e2b15dc1f73d2b0b48d8ca3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d02a86623cbb7f824ac9cfeea4eea4a50e6273d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ea59d32026fcfbec17764438ad4a6c43456a7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fb1d5c391f950c6033ee8577e847dea5b3a4681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4024653a1b56fd4fc9b35083972520dcc13fdfee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49c8f56b2900390117bbd69ecb7f23b2ad6b8d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a01ec7b5aabf8ed45ae24497ee349be1f138022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c08cfc0508c036a1582ba3d28f087057c9f34bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53e36e2565e8113df6c1c675b3bc7ec1788cd1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55ce59c6d8ebe7ad7dffd50821cab4db0fc9d8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59c6ff8b61ccaf5e0d48539b3b6624da79113ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cb506ea9bc7da8863e78e8390001a7f79145d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60b8c6fd80b49f31c1c11d3ce7bc462cd6e3b1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624c000e077212ad77b406925144330b252cbc43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66518cfe4d16763e6e54e13a0f6c3c27f165d4e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66f1c19572299e1bc3bba20aa35b1a49439375f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x671ee75ecb3ce312f67282e4bf00ad606e60abe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6812c71b7db9df2c381207bd795f54845c9e1bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69b9737aff26bc528ffee4cc3257407be6a13252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x718a7ffacbb59409b43dbf114444a981a6d96bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75d41de5bdf2e9df46ba4f56a024bbe4b11c75ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a3b84cb2b9e4841fe37233b12b665647786f1c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f80e4ec6fe009c7a5a039294af956744bc853bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fc32f60a92b6c109f3c74fea3eaaab9ad062292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82b1e8d73e8a2874f24d2406729c16e5eb5d086e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82ded09198b725b0ba23d6a7669b6c911ed695bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x843626d70f7f4b9e9a8a56596d34470e347aeb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x876c8535d6b6fba397d8938f5e99297f5942c0b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cf06837a0bd587500b59da5627771c1ac94cfd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387397 | `0x8f2a0d8865d995364dc6843d51cf6989001f989e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387398 | `0x918d7e714243f7d9d463c37e106235dcde294ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956dec81b7d73b4a00c7525858ae3827f03acbe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b87c7624adfb490676e9262a6fe2918c5f3e9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9df80e3dd83c011d1258c6fcd2d723f487751ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab8b6a6f6310213ea332f52f8ac2044084c6fca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac8126ff4690551819c1919268124e2074f9823c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb077b5c6ec5d439e7303e32234354bc1ab0157ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0b2fd6fe766eae258e26add5e74987e21fa36b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387399 | `0xb0e1fc65c1a741b4662b813eb787d369b8614af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb18a0aa34dfa926af7227097d3b83ed349a9e3e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb278163b1d2da632d51190001bbb95d45c3b191a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4239e11cc41562288cf9f9162540066b491d2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb561f9f117acaa5512f2790354f59202b0c3642b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5ec81d77eeec04f885e089f724e93e3a9a578b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba8eba5234c876736b22573076e63f0ca3ff726a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb6b410a4b7185a380163dfaf6ec3112b9a38b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf42ad1c9d0267e067af20c7b392b6ae20533077` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-387400 | `0xbf9d97eaf551877e4710d8e9d0519f79e03e5e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5a00c937c19cfd33063a9a389c506a0df7d2fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc74f1ef1683271b56afdaf2da110cadf31a57979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7fa7951187f91153851b0f9ab2d032abd0f2f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc80991f9106e26e43bf1c07c764829a85f294c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc6f313d29534b436a6d26eee8ebcb1ec33bfa53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-387401 | `0xccf4881b849d94c15c98567ba71b08ed829aba33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd2356f8bec54e44d9a07cc552c7bb05a9aeb1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce4cf2251489bee010719c5e4cfd8afcc3d1d376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcff5b537f797ac5b78821220afa11f1b5fc9ea83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd19eadff1f68b4b968d26c3b541a9f305b483b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd464a9928d13d9e0e6ca820ed7b1700c5d6045e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d47a9b298b7e3c5919d376aad20fa4970fb73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9793757ebd044d09cae2de3cd99e18eba221864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc700f0723d7d81f3291761a22c4109045cce084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddcb61ae2cf88289e6baed915b746f7d65aa3303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdef74d7e15884581d6e17f2546f18ade4228b793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe105c5dfa299b151de659dabc6111801bb363e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe393a1a2ed07d7a0f6058baa77e8c0213bcb1925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe706d285b299fbb8d2781f1ac681e285e003ecf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8280fb99ded28dec191d30441a894a75291f144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeedf6fa9198866a4fdc49b5e512122315db9a146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3e637e9956c09ef049b5e8e813e5565127ac368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf41125198d7483ca2eb0287baa4f8ad757d265ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6c72d65a1a59bda10ba92327c25c3ae9a846e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf822d45ce11859ab2a018493bad4e8c9817649cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf97c4646173edffb79b757c5fb212a9850ddc743` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387391 | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387392 | `0xb0e1fc65c1a741b4662b813eb787d369b8614af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x45603612891b6406a06854813e18443fc8ec7c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x559f7afc3312ec94a8cc0dd6275716c68d345787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xba91cd800c96bba63a618affef477ae33f8287d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfcaf13227dcbfa2dc2b1928acfca03b85e2d25dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x45a3a315277fbc1bce0611c4398b32e0317fd7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xba91cd800c96bba63a618affef477ae33f8287d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xde64a479f2b17bc5adbe906015840b7ce0022c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xfcaf13227dcbfa2dc2b1928acfca03b85e2d25dd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 108
- Live contracts: 0
- Unknown liveness contracts: 108
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=108

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| aurora | unverified unclassified | UnnamedContract<br>`0x45a3a315277fbc1bce0611c4398b32e0317fd7c1` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |
| aurora | unverified unclassified | UnnamedContract<br>`0xba91cd800c96bba63a618affef477ae33f8287d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |
| aurora | unverified unclassified | UnnamedContract<br>`0xde64a479f2b17bc5adbe906015840b7ce0022c8e` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |
| aurora | unverified unclassified | UnnamedContract<br>`0xfcaf13227dcbfa2dc2b1928acfca03b85e2d25dd` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06cf7a5f0df909db2a3d19b2cfc9600c8e0adcce` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0996c0eedbeb02571e26372b47dcde21a08d9709` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c0c475e32212b748c328e451ab3862ffe07369e` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1051b6886d699d2d9ee480451efe226f3a033cb4` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x169757602708295ddb1f89161c95bbc913ad8de2` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x16ebcac4e6243d8d94f391baf7873933dc4fb8b7` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x177d399639c3fcbadbeb9a26d0f79ec4bade1e95` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x252b23b524f8a93506c02ff355780ced62ea4004` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2af7d4da7639d8d8974e401486b243d090e4a7fc` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c43bc85a4a08757666219e0305a98b6cbdbb7ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3103cea5e03902daeaf0fb8164542fe17942752e` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x314062be53367be0cc2a4a3141f4021618b7c2ba` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x349693ca57cffc6f5fd47eaf879812ad200b1144` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x38535bf2f371700c92f35fdc677b628ef12cd433` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x389f1b7c2d3e30deb77db0de041c742a6533c5dd` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3a529421d307005e2b15dc1f73d2b0b48d8ca3a0` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d02a86623cbb7f824ac9cfeea4eea4a50e6273d` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3fb1d5c391f950c6033ee8577e847dea5b3a4681` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4024653a1b56fd4fc9b35083972520dcc13fdfee` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a01ec7b5aabf8ed45ae24497ee349be1f138022` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c08cfc0508c036a1582ba3d28f087057c9f34bb` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x60b8c6fd80b49f31c1c11d3ce7bc462cd6e3b1ca` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66518cfe4d16763e6e54e13a0f6c3c27f165d4e1` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x671ee75ecb3ce312f67282e4bf00ad606e60abe3` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6812c71b7db9df2c381207bd795f54845c9e1bcb` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x718a7ffacbb59409b43dbf114444a981a6d96bf0` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a3b84cb2b9e4841fe37233b12b665647786f1c0` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x82ded09198b725b0ba23d6a7669b6c911ed695bc` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x876c8535d6b6fba397d8938f5e99297f5942c0b4` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x956dec81b7d73b4a00c7525858ae3827f03acbe0` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b87c7624adfb490676e9262a6fe2918c5f3e9c4` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xab8b6a6f6310213ea332f52f8ac2044084c6fca2` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb4239e11cc41562288cf9f9162540066b491d2c3` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb561f9f117acaa5512f2790354f59202b0c3642b` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xba8eba5234c876736b22573076e63f0ca3ff726a` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb6b410a4b7185a380163dfaf6ec3112b9a38b07` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc80991f9106e26e43bf1c07c764829a85f294c71` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd2356f8bec54e44d9a07cc552c7bb05a9aeb1eb` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xce4cf2251489bee010719c5e4cfd8afcc3d1d376` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcff5b537f797ac5b78821220afa11f1b5fc9ea83` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd464a9928d13d9e0e6ca820ed7b1700c5d6045e5` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdef74d7e15884581d6e17f2546f18ade4228b793` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe393a1a2ed07d7a0f6058baa77e8c0213bcb1925` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe8280fb99ded28dec191d30441a894a75291f144` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeedf6fa9198866a4fdc49b5e512122315db9a146` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf6c72d65a1a59bda10ba92327c25c3ae9a846e10` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf822d45ce11859ab2a018493bad4e8c9817649cc` | non_address_book | unknown | unknown | unverified | n/a | `0x7323b13669028780c6450a620064e30654a5be2c` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08854c0703bc7f56a871157a2bf98b185cab6b08` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x10b7f1efbd9cc85c1223e619dc2bd63f025c4b5e` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x18be671d4221e9c7f2642a0182f3b3fb7913cd3b` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1dd1efe759e423ac1434909283d059693f104449` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1eb1c7bda507df1e9cd4bf082948451e6aa1e2ba` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x26ef7035648f5d0a13aa0a1dacc75e85d5465013` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x285458d2dce37cd16d769528a1f5db3f267b1cc7` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30951130404da60cfde0725e0bd6e0161f1dccf5` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33a9db0561ec7b4ebda60699e8fa8203dcf740f5` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36e0802040bb8eb89f1106860fdc41981d621817` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3ea59d32026fcfbec17764438ad4a6c43456a7f4` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5cb506ea9bc7da8863e78e8390001a7f79145d24` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x624c000e077212ad77b406925144330b252cbc43` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66f1c19572299e1bc3bba20aa35b1a49439375f9` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75d41de5bdf2e9df46ba4f56a024bbe4b11c75ee` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x82b1e8d73e8a2874f24d2406729c16e5eb5d086e` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb077b5c6ec5d439e7303e32234354bc1ab0157ae` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb18a0aa34dfa926af7227097d3b83ed349a9e3e0` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf42ad1c9d0267e067af20c7b392b6ae20533077` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc5a00c937c19cfd33063a9a389c506a0df7d2fb3` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc74f1ef1683271b56afdaf2da110cadf31a57979` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc7fa7951187f91153851b0f9ab2d032abd0f2f0c` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc6f313d29534b436a6d26eee8ebcb1ec33bfa53` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd9793757ebd044d09cae2de3cd99e18eba221864` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe706d285b299fbb8d2781f1ac681e285e003ecf7` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf97c4646173edffb79b757c5fb212a9850ddc743` | non_address_book | unknown | unknown | unverified | n/a | `0x80bb68f2664015b18c0c9fd9ed289a08334e4122` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0246f87125973acab0293bb851dac34f7644344a` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06a194b9ba05137df24ec5bcde247421fc8e2984` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09d70db37cede94d1664c0b2fbd4d1b7ec9a88e0` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e67e457a457d8378c42f3942888ed66978f5a1f` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x17aa5354e25922a23b952a28fbda63a0c7d9b09b` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x35de9fda52b41e77b442416eeae5ffc16cd9e2ff` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x49c8f56b2900390117bbd69ecb7f23b2ad6b8d1d` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x53e36e2565e8113df6c1c675b3bc7ec1788cd1c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x55ce59c6d8ebe7ad7dffd50821cab4db0fc9d8b5` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59c6ff8b61ccaf5e0d48539b3b6624da79113ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69b9737aff26bc528ffee4cc3257407be6a13252` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f80e4ec6fe009c7a5a039294af956744bc853bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7fc32f60a92b6c109f3c74fea3eaaab9ad062292` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x843626d70f7f4b9e9a8a56596d34470e347aeb87` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8cf06837a0bd587500b59da5627771c1ac94cfd0` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9df80e3dd83c011d1258c6fcd2d723f487751ad7` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xac8126ff4690551819c1919268124e2074f9823c` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb0b2fd6fe766eae258e26add5e74987e21fa36b2` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb278163b1d2da632d51190001bbb95d45c3b191a` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb5ec81d77eeec04f885e089f724e93e3a9a578b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd19eadff1f68b4b968d26c3b541a9f305b483b01` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd7d47a9b298b7e3c5919d376aad20fa4970fb73b` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdc700f0723d7d81f3291761a22c4109045cce084` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xddcb61ae2cf88289e6baed915b746f7d65aa3303` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe105c5dfa299b151de659dabc6111801bb363e8d` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3e637e9956c09ef049b5e8e813e5565127ac368` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf41125198d7483ca2eb0287baa4f8ad757d265ab` | non_address_book | unknown | unknown | unverified | n/a | `0xb9ab37c34b3e8b89602dfb64154b4b9c60cd2138` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x45603612891b6406a06854813e18443fc8ec7c73` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0x559f7afc3312ec94a8cc0dd6275716c68d345787` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xba91cd800c96bba63a618affef477ae33f8287d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |
| moonbeam | unverified unclassified | UnnamedContract<br>`0xfcaf13227dcbfa2dc2b1928acfca03b85e2d25dd` | non_address_book | unknown | unknown | unverified | n/a | `0x3c9584426432eb851e5689230d5cfc50659103d5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Beosin Smart contract security audit report - Impossible swap.pdf (also discovered via alternate URL)](https://github.com/ImpossibleFinance/audits/blob/main/Beosin%20Smart%20contract%20security%20audit%20report%20-%20Impossible%20swap.pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_if_farm_draft.pdf](https://github.com/ImpossibleFinance/audits/blob/main/farmsAudits/blocksec_if_farm_draft.pdf) | BlockSec | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Impossible Finance-Swap Zokyo audit report.pdf](https://github.com/ImpossibleFinance/audits/blob/main/impossibleSwapAudit/Impossible%20Finance-Swap%20Zokyo%20audit%20report.pdf) | Zokyo | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Impossible-Swap-Audit-AtticLab-review_report_0705.pdf](https://github.com/ImpossibleFinance/audits/blob/main/impossibleSwapAudit/Impossible-Swap-Audit-AtticLab-review_report_0705.pdf) | AtticLab | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Beosin-Audit-Launchpad.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/Beosin-Audit-Launchpad.pdf) | Beosin | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Blocksec-Audit-Launchpad.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/Blocksec-Audit-Launchpad.pdf) | Blocksec | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/PeckShield-Audit-Report-IFlaunchpad-v1.0rc%20(3).pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_if_launchpad_v2.0_signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v2.0_signed.pdf) | Blocksec | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_if_launchpad_v3.0_signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v3.0_signed.pdf) | Blocksec | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_if_launchpad_v4.0_draft.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v4.0_draft.pdf) | Blocksec | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [blocksec_if_tieredsale_v1.1-signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_tieredsale_v1.1-signed.pdf) | Blocksec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [blocksec_iflaunchpad_v1.0-signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_iflaunchpad_v1.0-signed.pdf) | Blocksec | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Impossible Finance Security Analysis by Pessimistic.pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/Impossible%20Finance%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Smart contract security audit report - Impossible swap 2 (2).pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/Smart%20contract%20security%20audit%20report%20-%20Impossible%20swap%202%20(2).pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [if_swap_v1.2.pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/if_swap_v1.2.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/impossiblefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20566] Beosin Smart contract security audit report - Impossible swap.pdf — no match: Extracted contract names from key audit findings table and risk descriptions. Audit completion date found in header.
- [20567] blocksec_if_farm_draft.pdf — no match: The audit report explicitly lists 'Impossible Finance Farm Contract' as the target, and the fuzzing section mentions SmartChefFactory and SmartChefInitializable as the contracts compiled and tested. Findings also reference these contracts.
- [20568] Impossible Finance-Swap Zokyo audit report.pdf — no match: Extracted contracts from scope listing and findings sections.
- [20569] Impossible-Swap-Audit-AtticLab-review_report_0705.pdf — no match: Report explicitly lists StableXERC20, StableXFactory, StableXPair as contracts in scope. Interfaces and libraries are mentioned but stated to be identical to Uniswap V2, so not extracted. Audit date is from the report header.
- [20570] Beosin-Audit-Launchpad.pdf — no match: Contracts extracted from business audit sections; no explicit scope table, but these are the audited contracts.
- [20571] Blocksec-Audit-Launchpad.pdf — no match: Extracted two contracts from findings targets. Audit date from cover page.
- [20572] PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf — no match: Contracts identified from findings targets; no explicit scope table but report focuses on IFlaunchpad protocol with IFAllocationSale and IFAllocationMaster contracts.
- [20573] blocksec_if_launchpad_v2.0_signed.pdf — no match: Scope explicitly mentions 'Impossible Finance Launchpad contract' and references contracts IFAllocationMaster and IFAllocationSale in findings.
- [20574] blocksec_if_launchpad_v3.0_signed.pdf — no match: Extracted from report title and version history. Contracts identified from scope description and findings listings.
- [20575] blocksec_if_launchpad_v4.0_draft.pdf — no match: Extracted contracts from scope and findings. Audit date from cover page.
- [20576] blocksec_if_tieredsale_v1.1-signed.pdf — no match: Only one contract (IFTieredSale) is explicitly in scope. Other files are excluded. Dependencies are considered reliable and not in scope.
- [20577] blocksec_iflaunchpad_v1.0-signed.pdf — no match: Scope explicitly includes IFFixedSale and its dependencies; IFWhitelistable is a dependency. Date found on cover page.
- [20579] Impossible Finance Security Analysis by Pessimistic.pdf — no match: Two contracts explicitly listed in scope section.
- [20580] Smart contract security audit report - Impossible swap 2 (2).pdf — no match: Extracted contract names from key audit findings table and risk descriptions. Audit date from AuditCompletionDate field.
- [20581] if_swap_v1.2.pdf — no match: Extracted from report title and scope section. Contracts mentioned in findings are considered in scope.
- [20582] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only the protocol name 'Impossible Finance' is mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossiblePair | unmatched — not counted | — | Listed in key audit findings as ImpossiblePair-1, ImpossiblePair-2 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleRouterExtension | unmatched — not counted | — | Listed in key audit findings as ImpossibleRouterExtension-1 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleWrapperFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrapperFactory-1 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleWrappedToken | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrappedToken-1 through ImpossibleWrappedToken-5 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleFactory-1 | no |
| blocksec_if_farm_draft.pdf | SmartChefFactory | unmatched — not counted | — | mentioned in scope and findings | no |
| blocksec_if_farm_draft.pdf | SmartChefInitializable | unmatched — not counted | — | mentioned in scope and findings | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleERC20 | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleFactory | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossiblePair | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleRouter01 | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleRouter02 | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleLibrary | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | StableXPair | unmatched — not counted | — | mentioned in findings | no |
| Impossible Finance-Swap Zokyo audit report.pdf | StableXFactory | unmatched — not counted | — | mentioned in findings | no |
| Impossible Finance-Swap Zokyo audit report.pdf | Migration | unmatched — not counted | — | mentioned in findings | no |
| Impossible-Swap-Audit-AtticLab-review_report_0705.pdf | StableXERC20 | unmatched — not counted | — | listed as reviewed contract | no |
| Impossible-Swap-Audit-AtticLab-review_report_0705.pdf | StableXFactory | unmatched — not counted | — | listed as reviewed contract | no |
| Impossible-Swap-Audit-AtticLab-review_report_0705.pdf | StableXPair | unmatched — not counted | — | listed as reviewed contract and thoroughly reviewed | no |
| Beosin-Audit-Launchpad.pdf | TestToken | unmatched — not counted | — | mentioned in section 3.1 | no |
| Beosin-Audit-Launchpad.pdf | IFAllocationMaster | unmatched — not counted | — | mentioned in section 3.2 | no |
| Beosin-Audit-Launchpad.pdf | IFAllocationSale | unmatched — not counted | — | mentioned in section 3.3 | no |
| Blocksec-Audit-Launchpad.pdf | IFAllocationMaster | unmatched — not counted | — | Target in findings BWE-1, BWE-4, BWE-7 | no |
| Blocksec-Audit-Launchpad.pdf | IFAllocationSale | unmatched — not counted | — | Target in findings BWE-2, BWE-3, BWE-4, BWE-5, BWE-6, BWE-7 | no |
| PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf | IFAllocationSale | unmatched — not counted | — | Target in findings PVE-001, PVE-003 | no |
| PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf | IFAllocationMaster | unmatched — not counted | — | Target in findings PVE-002, PVE-004 | no |
| blocksec_if_launchpad_v2.0_signed.pdf | IFLaunchpad | unmatched — not counted | — | The repository that has been audited includes launchpad-contracts (IFLaunchpad). | no |
| blocksec_if_launchpad_v2.0_signed.pdf | IFAllocationMaster | unmatched — not counted | — | Listed in findings as contract containing functions stake, emergencyWithdraw, addUserCheckpoint. | no |
| blocksec_if_launchpad_v2.0_signed.pdf | IFAllocationSale | unmatched — not counted | — | Listed in findings as contract containing functions withdrawGiveaway, fund, _purchase, constructor. | no |
| blocksec_if_launchpad_v3.0_signed.pdf | IFLaunchpad | unmatched — not counted | — | Target contract mentioned in Section 1.1 | no |
| blocksec_if_launchpad_v3.0_signed.pdf | vIDIA | unmatched — not counted | — | Listed in findings (e.g., Listing 2.1) | no |
| blocksec_if_launchpad_v3.0_signed.pdf | IFAllocationMaster | unmatched — not counted | — | Listed in findings (e.g., Listing 2.4) | no |
| blocksec_if_launchpad_v3.0_signed.pdf | IFAllocationSale | unmatched — not counted | — | Listed in findings (e.g., Listing 2.6) | no |
| blocksec_if_launchpad_v3.0_signed.pdf | ERC2771ContextUpdateable | unmatched — not counted | — | Listed in findings (e.g., Listing 2.12) | no |
| blocksec_if_launchpad_v4.0_draft.pdf | IFLaunchpad | unmatched — not counted | — | listed in scope | no |
| blocksec_if_launchpad_v4.0_draft.pdf | vIDIA | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | IFAllocationMaster | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | IFAllocationSale | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | BatchMintVoucher | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | ERC2771ContextUpdateable | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_tieredsale_v1.1-signed.pdf | IFTieredSale | unmatched — not counted | — | Listed in scope section: 'The focus of this audit is the IFTieredSale Contracts of Impossible Finance' and 'only contracts inside the contracts folder' | no |
| blocksec_iflaunchpad_v1.0-signed.pdf | IFFixedSale | unmatched — not counted | — | mentioned as the main contract in scope in Section 1.1 and in findings | no |
| blocksec_iflaunchpad_v1.0-signed.pdf | IFWhitelistable | unmatched — not counted | — | mentioned as a dependency and in findings (e.g., Listing 2.2) | no |
| Impossible Finance Security Analysis by Pessimistic.pdf | ImpossiblePair | unmatched — not counted | — | The scope of the audit included only two files: ImpossiblePair.sol ImpossibleERC20.sol | no |
| Impossible Finance Security Analysis by Pessimistic.pdf | ImpossibleERC20 | unmatched — not counted | — | The scope of the audit included only two files: ImpossiblePair.sol ImpossibleERC20.sol | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossiblePair | unmatched — not counted | — | Listed in key audit findings as ImpossiblePair-1, ImpossiblePair-2 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleRouterExtension | unmatched — not counted | — | Listed in key audit findings as ImpossibleRouterExtension-1 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleWrapperFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrapperFactory-1 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleWrappedToken | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrappedToken-1 through -5 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleFactory-1 | no |
| if_swap_v1.2.pdf | ImpossibleWrappedToken | unmatched — not counted | — | mentioned in findings | no |
| if_swap_v1.2.pdf | ImpossibleLibrary | unmatched — not counted | — | mentioned in findings | no |
| if_swap_v1.2.pdf | ImpossiblePair | unmatched — not counted | — | mentioned in findings | no |
| if_swap_v1.2.pdf | ImpossibleWrapperFactory | unmatched — not counted | — | mentioned in finding 2.2.4 | no |
| if_swap_v1.2.pdf | ImpossibleSwapFactory | unmatched — not counted | — | mentioned in finding 2.2.6 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ImpossibleDecentralizedIncubatorAccessToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 120 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 55 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20566] Beosin Smart contract security audit report - Impossible swap.pdf
- [20567] blocksec_if_farm_draft.pdf
- [20568] Impossible Finance-Swap Zokyo audit report.pdf
- [20569] Impossible-Swap-Audit-AtticLab-review_report_0705.pdf
- [20570] Beosin-Audit-Launchpad.pdf
- [20571] Blocksec-Audit-Launchpad.pdf
- [20572] PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf
- [20573] blocksec_if_launchpad_v2.0_signed.pdf
- [20574] blocksec_if_launchpad_v3.0_signed.pdf
- [20575] blocksec_if_launchpad_v4.0_draft.pdf
- [20576] blocksec_if_tieredsale_v1.1-signed.pdf
- [20577] blocksec_iflaunchpad_v1.0-signed.pdf
- [20579] Impossible Finance Security Analysis by Pessimistic.pdf
- [20580] Smart contract security audit report - Impossible swap 2 (2).pdf
- [20581] if_swap_v1.2.pdf

Fork inheritance lineage and inherited audits are included when available.
