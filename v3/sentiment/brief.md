# Agentic Audit Brief: Sentiment

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sentiment (`sentiment`)
- Website: [https://app.sentiment.xyz](https://app.sentiment.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 314 unique implementations (376 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,203,461.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Sentiment. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 36 contract row(s) across arbitrum. Structural roles: 21 unclassified, 13 supporting, 2 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 36
- Structural roles: unclassified (21), supporting (13), core (2)
- Contract kinds: contract (35), abstract (1)
- Detected standards: erc1967proxy (4)
- Frameworks: solmate (3), openzeppelin (2), chainlink (1)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 36; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 41 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 273 discovered implementations shown in the inventory but excluded from coverage (16 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 49
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/64
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 250
- Unique implementations: 314
- Raw deployments: 376
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ebbc9...fc5e29` | ⚠️ Unaudited |
| Account | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254428 | `0xc3991f...0c5463` | ⚠️ Unaudited |
| AccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70ade2...433282` | ⚠️ Unaudited |
| AccountFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254432 | `0xce7df5...db9814` | ⚠️ Unaudited |
| AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0d36ac...c2b3fd`; arbitrum `0x3281c1...1402e5`; arbitrum `0x67d27d...964c77`; arbitrum `0xaa9a13...50a929`; arbitrum `0xf9b45d...7a20b1`; arbitrum `0xfd4541...22dfb3` | ⚠️ Unaudited |
| AccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254410 | `0x23ad96...1c2b6b` | ⚠️ Unaudited |
| AccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254437 | 2 deployments: arbitrum `0x62c5aa...826403`; arbitrum `0xb08501...d8c093` | ⚠️ Unaudited |
| AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x94509e...aabd2e`; arbitrum `0xea3ca0...51a787` | ⚠️ Unaudited |
| ATokenOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254420 | `0x6cb48a...a7d8bb` | ⚠️ Unaudited |
| ATokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9fa118...bbffc6`; arbitrum `0xbd50d4...8b4729` | ⚠️ Unaudited |
| BaseController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254424 | `0x947e74...4ed278` | ⚠️ Unaudited |
| BaseController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94a04c...7a31fb` | ⚠️ Unaudited |
| Beacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44b65b...15285a` | ⚠️ Unaudited |
| Beacon | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254435 | `0xb7ba33...122eee` | ⚠️ Unaudited |
| ControllerFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3009b0...fd80e3` | ⚠️ Unaudited |
| ControllerFacade | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254433 | `0xe71287...15f065` | ⚠️ Unaudited |
| ConvexRewardPoolOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xb24bbe...bcee37` | ⚠️ Unaudited |
| DefaultRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59be04...4658c5` | ⚠️ Unaudited |
| DefaultRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254417 | `0x5a9eec...0dc3ab` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35a1d1...431459` | ⚠️ Unaudited |
| GLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb1313...e47975` | ⚠️ Unaudited |
| GLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254426 | `0xbba8e7...27d4c9` | ⚠️ Unaudited |
| LEther | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x331815...137ef4`; arbitrum `0x55238c...57dc7b` | ⚠️ Unaudited |
| LEther | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254430 | `0xcb3703...0b8228` | ⚠️ Unaudited |
| LinearRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x17dac1...73ea98`; arbitrum `0x1bf8a3...1859fe`; arbitrum `0x56640f...8dbf2b`; arbitrum `0x5af5e9...6b0fa6`; arbitrum `0x6cbeca...9caafb`; arbitrum `0x860350...577597`; arbitrum `0xf61421...b1515d` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254422 | `0x8f7a7c...9292c9` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254423 | `0x91cd72...e1c7ad` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254429 | `0xc3c683...26d2ff` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254431 | `0xccd7a2...6f04ec` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | arbitrum | n/a | 7 deployments: arbitrum `0x0c47b3...c88938`; arbitrum `0x0fada6...aedd2e`; arbitrum `0x0fb61b...1fa336`; arbitrum `0x1daefa...760b8c`; arbitrum `0x2ea961...3e2a5f`; arbitrum `0x6b328f...5b7dc6`; arbitrum `0xc45231...f2014c` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x3a2035...1a7ee2`; arbitrum `0xff9cfc...382ead` | ⚠️ Unaudited |
| LToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254412 | `0x3c34c6...04f7c0` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x7d7a9b...db1463`; arbitrum `0xc7f14c...e37ef8`; arbitrum `0xcd44cc...7e2d85` | ⚠️ Unaudited |
| OracleFacade | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254407 | `0x08f81e...33efb3` | ⚠️ Unaudited |
| OracleFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x183145...28d6f0`; arbitrum `0xc79c23...0894a6` | ⚠️ Unaudited |
| Proxy | proxy | external_dependency_or_infra | third_party_dependency (excluded) | 4 | arbitrum | unit-254436 (4 proxies) | 4 deployments: arbitrum `0x0ddb1e...b1299b`; arbitrum `0x2e9963...784c40`; arbitrum `0x4c8e16...e4623e`; arbitrum `0xb19021...776bec` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x212022...ccc121`; arbitrum `0x37e6a0...363b67`; arbitrum `0xe520c4...607db2` | ⚠️ Unaudited |
| Registry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254438 | 2 deployments: arbitrum `0x17b07c...49679b`; arbitrum `0xe22d24...2b2991` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x82467d...c5316b`; arbitrum `0xfcc45f...334e30` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x98144a...f6173b`; arbitrum `0xd8fabf...b2e4a6` | ⚠️ Unaudited |
| RewardPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab248...49d628` | ⚠️ Unaudited |
| RewardRouterController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254415 | `0x48b7cb...c5b9af` | ⚠️ Unaudited |
| RewardRouterController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62a9e2...020c84` | ⚠️ Unaudited |
| RewardRouterV2Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3b3ac0...161bf4`; arbitrum `0x4d0e7b...68bbc9` | ⚠️ Unaudited |
| RewardRouterV2Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254414 | `0x3e1c3e...3550ce` | ⚠️ Unaudited |
| RiskEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x488d27...2249bf`; arbitrum `0x532964...fdf658`; arbitrum `0x622ead...041fb3` | ⚠️ Unaudited |
| RiskEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254427 | `0xc0ac97...c078da` | ⚠️ Unaudited |
| StableSwap2PoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x926fe4...db2f05` | ⚠️ Unaudited |
| StableSwap2PoolController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254434 | `0xfcc9ea...f7e9d8` | ⚠️ Unaudited |
| TransformController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfac885...4e825f` | ⚠️ Unaudited |
| UniV2Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a3d67...c2ef18` | ⚠️ Unaudited |
| UniV2Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254421 | `0x6df0b4...ee7bfd` | ⚠️ Unaudited |
| UniV2LpOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254418 | `0x64af46...cbc3b5` | ⚠️ Unaudited |
| UniV2LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x692076...bc045c` | ⚠️ Unaudited |
| UniV3Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254416 | `0x4f0da4...1f9edb` | ⚠️ Unaudited |
| UniV3Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7db785...0114fe` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x436687...fbbdde`; arbitrum `0x542eff...2c61f2`; arbitrum `0x964bd7...467451` | ⚠️ Unaudited |
| WETHController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44e4fe...295c35` | ⚠️ Unaudited |
| WETHController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254419 | `0x697cfb...5381cc` | ⚠️ Unaudited |
| WETHOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254408 | `0x0f8011...d7e830` | ⚠️ Unaudited |
| WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1b547...3b0616` | ⚠️ Unaudited |
| WSTETHOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254409 | `0x1dd8ce...02845b` | ⚠️ Unaudited |
| WSTETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22bcf7...ea7898` | ⚠️ Unaudited |
| ZeroOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254425 | `0xb86f62...732792` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (250)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x20ce093d09c561faae72d378ae7cb3ae0bdf1fbe) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0954fa...7a30f6`; arbitrum `0x20ce09...df1fbe` | ❓ Unverified |
| Proxy (impl: 0x483d3e23cd7e227528a4459a1e9b88f13020a698) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x467f91...81183e`; arbitrum `0x483d3e...20a698` | ❓ Unverified |
| Proxy (impl: 0x598b6101554fdccd200117b46e320b06853d5493) | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x2b3d7a...f777f0`; arbitrum `0x598b61...3d5493`; arbitrum `0x6e45fa...6785b6` | ❓ Unverified |
| Proxy (impl: 0x59fa4b50c555d8d8a462d86cbf9b27b79e0010f9) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x516445...4bf273`; arbitrum `0x59fa4b...0010f9` | ❓ Unverified |
| Proxy (impl: 0x6ddae7dd1d0dc574c850f677efe12fd5418c7e4a) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x487cdc...594471`; arbitrum `0x6ddae7...8c7e4a` | ❓ Unverified |
| Proxy (impl: 0x742e9a0c20071e5e7ac9b4abc0d34c02358b33d5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x338d81...15de76`; arbitrum `0x742e9a...8b33d5` | ❓ Unverified |
| Proxy (impl: 0x9925d7eef59d9df5790c9b8de137942cd9f878b5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0326e6...fdf9d7`; arbitrum `0x9925d7...f878b5` | ❓ Unverified |
| Proxy (impl: 0x9d6dad33567c7d514aad6dcdb287696a9a4e65a1) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3c0e2c...9935f1`; arbitrum `0x9d6dad...4e65a1` | ❓ Unverified |
| Proxy (impl: 0xae6029ea7e1c2f660b660f4b6af322b07f6c578d) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x26cf52...d29bb2`; arbitrum `0xae6029...6c578d` | ❓ Unverified |
| Proxy (impl: 0xc7ad6871853de2dbb019377320d2e23091a1a8be) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb57cfe...1b7927`; arbitrum `0xc7ad68...a1a8be` | ❓ Unverified |
| Proxy (impl: 0xf0e83f84a513c45d1e1797f268771230f35d5df4) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d1a26...062f36`; arbitrum `0xf0e83f...5d5df4` | ❓ Unverified |
| Proxy (impl: 0xf619e6c4d2aa8c96741bae1e6f7da9a9cdbdd7ff) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe47a28...b76099` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254406 | `0x017929...4b449a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01f10f...c31937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02ad30...792526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02df47...e29ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x045bcf...a7b3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05cb17...743cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05dccd...7206b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x089a8f...32c74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09eeee...0bd263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e99aa...8c7108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f2d41...dc1ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fd0c9...2b40a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1061c3...6e5d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x10dabc...9d93e5`; arbitrum `0x76b9a4...5e426b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x11255f...a78984`; arbitrum `0x7eac93...1e3549`; arbitrum `0x93428d...88e45e`; arbitrum `0x9f93a3...63fd7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x132f7e...f93d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x134b57...536140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14fe8f...21f5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15f2f5...bf915c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1689b7...16eb73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x16f3ae...641b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16fd65...b90fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17bf1a...d71861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17cef7...8f5568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x183d5d...1bd773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18f35b...43fb6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aa39a...519320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b128e...2b9585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d3f6f...b6bbc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d70d5...79abce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x1e0d1b...4843e8`; arbitrum `0x548057...e36b7c`; arbitrum `0xca12d8...317f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2076c8...a83892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2099a1...3958a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x213aab...3fed5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x219946...621ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21b264...91d2f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22f689...eb52ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24f545...220c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x251ff5...1b50f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a857d...2534eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b6554...41ee16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b6c77...6e1d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2b8086...439905`; arbitrum `0xfcec11...badc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c99b7...98c4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d6bb7...0fb51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e65f9...8b2e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3050e6...6ff50c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254411 | `0x306874...404b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31ca61...218349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31eed7...d62266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33df88...f89b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3770d4...e4bb8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x394ca6...9eaaef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39c6cb...6bd2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b193b...a868a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b7846...9cd67e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254413 | `0x3c3b0b...86f9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd2b0...779013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d9560...86b5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x400ba2...d7e726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x409876...58aa53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40c1c9...dbbc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x41f909...a5809e`; arbitrum `0x96414d...987471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x466c75...00d6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47da07...6416ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48a19f...a5481f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48e26b...1b67f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a98b8...f38a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b3fa3...624fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ba2f9...e1978e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d709f...b6901b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x4e828a...a05504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e969d...c89946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f02e9...878a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f063c...85b0ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50435e...516541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50b367...5e88fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50e602...370f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5138a3...976a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x530ab5...a800cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54c065...8c9b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5587df...3ceb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55f2b1...5e8456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x561adb...79cca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5639d2...491dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57bd04...7329b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58c4f4...070069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x599b50...d648c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5a4da5...77f738`; arbitrum `0x63db0b...9ef923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a89f4...d7561d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a91b7...1d9afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5afffc...1e0e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b15c5...8d8578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5baabf...a05c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c3ffb...931298` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x5ccd62...17a216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d2911...b576b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d706f...7687ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e2788...49e1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e9f3c...53c923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61faf1...ddcf8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x635100...d5e789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x642da2...740ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64e5df...11f14c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66d517...6a1913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67c2be...dbe3a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68b5e2...dcb921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b2aee...2c5585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ca2f0...c148a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d891a...17d53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6da1dd...d0bd35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f321c...1b3222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70173d...3ea3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x710bc2...933ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x711cc1...277c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7170d7...00e5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72cc67...c3d7a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x743e1d...f16f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7469d5...a79ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74d2dd...29385f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7557f1...a262bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7675f3...4a9ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x777383...070ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x781ef6...aa2e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x787ae0...976ae2`; arbitrum `0x962cb3...3fb58a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790b04...031032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7af2c4...8d020a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b5a88...f08265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e5136...061f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x817f1f...1e39cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83f076...639696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84558e...353b2d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x8464ed...c080b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84d714...e7a4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85c956...d19dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x862c0f...ce2e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x875a19...7a025b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87c3cc...535362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x87e94d...005b13`; arbitrum `0xcd44e2...5008c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x881903...440489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b8d56...e1af28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c1364...f3f7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c5657...e3e849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cd61e...7a9fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d48d5...576e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d5fd9...644128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e9ba9...f52731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x912a91...abeb95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x947d0a...590c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x981334...eafd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x981c19...ae6d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98d483...d9b969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98d930...ebbb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98df07...528b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a0175...fe1530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c83c3...e0bc27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f3203...d80f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ffb36...7d6abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa05385...a12da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27269...dfa0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa34d60...82e492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa45dbf...e8b8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa46f89...e05350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4d41a...f9cf4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7622e...3f5e2b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xa899f3...a56673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa98864...95192e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab832f...0b1f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae2d5a...154cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae71d9...b4d93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb07fab...a537a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1dae1...736d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb29f1d...c3d703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3a108...8c2643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3cb3d...69b434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5083c...300dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb60ae6...452bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6a956...9b0cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb790cc...732a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9941b...160595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba5b76...674e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbad0f9...24246b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb7558...6f1679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbba607...33bf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbb88d...6a065b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe6b7f...022d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfdf22...5bb05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc14583...93c508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc21da7...d96ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2658f...39be7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3e7ae...54f82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc41df1...d9244a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc76dfa...c833be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc955d3...0c56bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc96d94...2c6c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9f6ee...237ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca2049...70870d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaf2b7...ac2473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcba827...e2515b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccdd33...677f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd65e9...dc1610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf07fc...b681b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf5c18...bd64a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfe887...e2d863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0819e...45ba8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0aeea...2a75f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1b5ad...c7f902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd539e0...608075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda384d...a3b812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda48d9...85b2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc2c6a...fa6dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfd967...39ec14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfe9b0...ff111a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1d115...77bf7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2da7f...eff62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe301ca...785bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe31257...c5f8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xe3f3f8...1db43d`; arbitrum `0xf0a67b...fadb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe48468...ac5ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5acba...a3e352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe64e29...319892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe83d5e...3fffc3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xe872bc...b79daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe89676...ec7cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea75e1...61390a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeba92a...bb50eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec57a8...ec59aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec90b7...f0c161` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xecb0ab...de0ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeea2fa...a0b022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf350fd...c52035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf44d2f...1f3ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9916a...34c247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc4572...4909db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd0aec...2deeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe7823...7afffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff39f3...f4c7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff7500...49e829` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sentiment_Protocol_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Protocol_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 32 | n/a |
| [Sentiment_Oracle_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Oracle_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [2022.10.18 - Final - Sentiment Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.10.18%20-%20Final%20-%20Sentiment%20Audit%20Report.pdf) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 34 | n/a |
| [sentiment_v2_guardian.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_guardian.pdf) | Guardian | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [sentiment_v2_sherlock.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [sentiment_v2_zobront.md](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_zobront.md) | Zobront | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [sentiment_v2_sherlock_2.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_2.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [sentiment_v2_sherlock_3.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_3.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3171] Sentiment_Protocol_20220727.pdf — no match: No reason recorded
- [3172] Sentiment_Oracle_20220727.pdf — no match: All Solidity files in the controller/src and oracle/src directories were in scope. The list is provided in Appendix B.
- [3173] 2022.10.18 - Final - Sentiment Audit Report.pdf — no match: No reason recorded
- [3174] sentiment_v2_guardian.pdf — no match: Extracted contract names from findings locations and invariants sections. No explicit scope table found, but contracts are clearly audited targets.
- [3175] sentiment_v2_sherlock.pdf — no match: Extracted from the report header: 'Date Audited: August 14 - August 24, 2024'. Contracts in scope are inferred from the repository and file paths mentioned in findings.
- [3176] sentiment_v2_zobront.md — no match: All contracts listed in the scope section of the audit report.
- [3177] sentiment_v2_sherlock_2.pdf — no match: Scope section lists three oracle contracts. Audit date is March 8-March 10, 2025, using end date.
- [3178] sentiment_v2_sherlock_3.pdf — no match: Only one contract in scope: MetaOracle.sol

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sentiment_Protocol_20220727.pdf | Account | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | AccountFactory | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | AccountManager | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | BaseProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Beacon | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | BeaconProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | DefaultRateModel | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ERC20 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Errors | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Helpers | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccount | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccountFactory | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccountManager | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IBeacon | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IBeaconProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IERC20 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ILEther | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ILToken | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IOwnable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRateModel | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRegistry | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRiskEngine | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | LEther | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | LToken | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Ownable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Pausable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Proxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Registry | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | RiskEngine | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Storage | unmatched — not counted | — | — | no |
| Sentiment_Oracle_20220727.pdf | AaveV2Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AaveV3Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AaveEthController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CompoundController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CurveCryptoSwapController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | StableSwapController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV2Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV3Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | WETHController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | YearnController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ControllerFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IControllerFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | Ownable | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | Errors | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IPoolV3 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IProtocolDataProvider | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ISwapRouterV3 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IUniV2Factory | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IStableSwapPool | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ICToken | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ChainlinkOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CTokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CurveTriCryptoOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV2LPOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | YTokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | WETHOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ATokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | OracleFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IERC20 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IAToken | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in Appendix B | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AaveV2Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AaveV3Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Account | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AccountManager | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | BalancerController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | CTokenOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | CurveLPStakingController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | DefaultRateModel | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ERC4626 | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ERC4626Oracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Errors | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Helpers | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ICToken | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IStableSwapPool | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | LEther | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | LToken | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Oracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | OracleFacade | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Protocol | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Registry | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | RiskEngine | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | StableSwap2PoolController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV2Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV2LPOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV3Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | WETHOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | YTokenOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | YearnController | unmatched — not counted | — | — | no |
| sentiment_v2_guardian.pdf | SuperPool | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | Pool | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | PositionManager | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | RiskEngine | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | RiskModule | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | LinearRateModel | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ChainlinkEthOracle | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ChainlinkUsdOracle | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ERC6909 | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | Position | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_sherlock.pdf | RedstoneOracle | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | RiskModule | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | Pool | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | SuperPoolFactory | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | SuperPool | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | RiskEngine | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_zobront.md | FixedRateModel | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | LinearRateModel | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PortfolioLens | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SuperPoolLens | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | Errors | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | IterableMap | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | IterableSet | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ChainlinkEthOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ChainlinkUsdOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | FixedPriceOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ZeroOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | BasePosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleAssetPosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleDebtPosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleAssetRiskModule | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleDebtRiskModule | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | Pool | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PoolFactory | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PositionManager | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | RiskEngine | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SuperPool | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | AggV3Oracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | HyperliquidOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | HyperliquidUsdcOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_3.pdf | MetaOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 251 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 142 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [3171] Sentiment_Protocol_20220727.pdf
- [3172] Sentiment_Oracle_20220727.pdf
- [3173] 2022.10.18 - Final - Sentiment Audit Report.pdf
- [3174] sentiment_v2_guardian.pdf
- [3175] sentiment_v2_sherlock.pdf
- [3176] sentiment_v2_zobront.md
- [3177] sentiment_v2_sherlock_2.pdf
- [3178] sentiment_v2_sherlock_3.pdf

Fork inheritance lineage and inherited audits are included when available.
