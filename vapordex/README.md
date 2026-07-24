# Agentic Audit Brief: VaporDex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: VaporDex (`vapordex`)
- Website: [https://www.vapordex.io](https://www.vapordex.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 292 unique implementations (293 raw deployments)
- Coverage basis: 2/10 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $331,207.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VaporDex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across avalanche. Structural roles: 8 core, 2 supporting, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (8), supporting (2), infra (1)
- Contract kinds: contract (10), abstract (1)
- Detected standards: erc165 (2), erc1967proxy (2), multicall (2), accesscontrol (1), erc721 (1), ownable (1)
- Frameworks: openzeppelin (6), uniswap-v3 (2), openzeppelin-upgradeable (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xae950fdd0cc79dde64d3fffd40fabec3f7ba368b`, chain 43114)
- DexAggregatorDiamond (`0x55477d8537ede381784b448876afaa98aa450e63`, chain 43114)
- NonfungiblePositionManager (`0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a`, chain 43114)
- ReplenishmentPool (`0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4`, chain 43114)
- Router (`0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae`, chain 43114)
- StableVapeStaking (`0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94`, chain 43114)
- SwapRouter02 (`0xe61efa294c7eec0c96b3df79b5c1975f0613548a`, chain 43114)
- TransparentUpgradeableProxy (`0x08e287adcf9bf6773a87e1a278aa9042bef44b60`, chain 43114)
- UniswapV3Factory (`0x62b672e531f8c11391019f6fba0b8b6143504169`, chain 43114)
- VaporDEXFactory (`0xc009a670e2b02e21e7e75ae98e254f467f7ae257`, chain 43114)
- VaporDEXRouter02 (`0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/10 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 281 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 11 of 292 unique; 281 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/34
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 258
- Unique implementations: 292
- Raw deployments: 293
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 2 | 5.9% | 2021-04 |
| ABDK Consulting (UPSTREAM Uniswap V3 periphery — inherited via fork, not VaporDex's own) | Tier 2 | 1 | 2.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260235 | `0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a` | ✅ Audited |
| UniswapV3Factory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260232 | `0x62b672e531f8c11391019f6fba0b8b6143504169` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthorizationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ad983287c5417fe39b4190d9e46cd6fc1e751c3` | ⚠️ Unaudited |
| BoostFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f630cbd93e406a6b1b852fa0824b42e7aa5f80c` | ⚠️ Unaudited |
| BytesManipulation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26b794235422e7c6f3ac6c717b10598c2a144203` | ⚠️ Unaudited |
| ClaimFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb654ce5224c9a8c7c5985798f47a976e84429bd4` | ⚠️ Unaudited |
| DepositFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93d0de9ae7213113cc0d822cf4d7589200675300` | ⚠️ Unaudited |
| DexAggregatorDiamond | unknown | project_anchor | own_supporting | 1 | avalanche | unit-260240 | 2 deployments: avalanche `0x55477d8537ede381784b448876afaa98aa450e63`; avalanche `0xb4cae37f9b147c278b308c1203e539375e94e7fe` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b6bca9f8f4e62d1bd92043a13795edee94c83d9` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7712bed48612f9ab67d66166fc655a58aef23c0f` | ⚠️ Unaudited |
| DiamondManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20b27c17c613cd82e8fdafcda55dd87bd4da4b19` | ⚠️ Unaudited |
| EmissionsManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf6064a582d312f3e7bdda2ead9ff755730e9f79` | ⚠️ Unaudited |
| FeeCollectorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50bfe2e90d4562624c478c86c85810442b71e239` | ⚠️ Unaudited |
| GenesisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd21fe537c97054f40890f012955a536d80d1bf00` | ⚠️ Unaudited |
| MiningPassFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe87a9dc52a82a0356744e8b9c6cf549a30cb11ae` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x442cd3cfbc2d7218bd8bdd2ce7146bacf0855bb6` | ⚠️ Unaudited |
| PausationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa79c069354cd9cc65f8be1a81929efc07b169b04` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2add09b1a47a8d86e807559fd10f8f176156552e` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8c97d11184069cdd2dfe85f097c607ed3272572` | ⚠️ Unaudited |
| ReplenishmentPool | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260230 | `0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4` | ⚠️ Unaudited |
| RewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x359ef23e2c8bcfe0ee5192bc34d3f6a2c808873a` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260236 | `0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae` | ⚠️ Unaudited |
| StableVapeStaking | unknown | project_anchor | own_supporting | 1 | avalanche | unit-260238 | `0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94` | ⚠️ Unaudited |
| Stratosphere | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1e77235b2537d96a595a611b84a7471474fd4f8` | ⚠️ Unaudited |
| SwapRouter02 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260237 | `0xe61efa294c7eec0c96b3df79b5c1975f0613548a` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb017b46375d510093c285d1e2b11d8c4ee9036f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-260239 | `0x08e287adcf9bf6773a87e1a278aa9042bef44b60` | ⚠️ Unaudited |
| UnlockFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18f7e04f7968340e4604646999109ac4ae1cd790` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea3379a026cb3e6c5ac847f8e24e523c762b0c6e` | ⚠️ Unaudited |
| VapeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0db60699e7be209cce1a43829e2dd3a50e2b51c3` | ⚠️ Unaudited |
| VaporDEXAnniversaryGenesis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05f954784749466b1f13f051f8c9cad336354d02` | ⚠️ Unaudited |
| VaporDEXFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260234 | `0xc009a670e2b02e21e7e75ae98e254f467f7ae257` | ⚠️ Unaudited |
| VaporDEXRouter02 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260231 | `0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d` | ⚠️ Unaudited |
| WithdrawFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb2d87178d9489d59a9b3948dcbf7b718cd2df59` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (258)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00215e4b76fe938ee54bf2a7575cdb7d829de6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01e5c45cb25e30860c2fb80369a9c27628911a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0406a5437c3174d2dd9410a57e1ba48f89302883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x040b7ef63e716dc2cbfa170eb1bd1dcff9dc2358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0564909217779190bcecc9d88b96966a40c4bb3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05e13eea764adc3d1384d341db16993b21c00278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06933a0ec6a07541b9c2d967ee8fae8e0e993809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06c120044ac79653e2bed750f4757c7e4b4c3e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07b1549fb6692e0e6e2c406919d956e350d65731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0843773ae89690fcb495f7da68303f9ec109bcef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x091aaa13e11da1503733d052a54c8c68d7b4bcca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x093cce24abbd094349904caf598f6df66f9e3558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0943d97b947e7b7399f1196ffcee4d31019028a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ac3e46277afb909d5180bf03a191904de3f46bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b81fe1be0f05bfd73f95472157e8b30781e4a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0bc1f177c5345d8fb3e810c9be048102367135c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c2b27d3c27fac1612da22346dc2fda8a3402fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c9fb44e93a87e8d9bdb3952d3af031a08c63344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d6068fee74d924a6d8292689de96a6a679f1b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e06464544ba77e437427ca5b270fb5f868d17ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e7120267e71ff8e2436a6e8ef05b23c8476c8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e9e56e85073bade4ed347bdcf55dc938d918f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f464f551ea06d8f3b6ad7caff8c64ad45acd511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f55a750c2ea1c5dc73554dfe8a9ca72b9e9b082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x108d595086887c3cd1adbe5b568fcacff5b4ddae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10bbd18fcb1d98aa0f943c01176f2be4e7c8b782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11f673272ad39745f7bc2a8932a24a2147573671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x137202793462f08943949dfe23115665c63a3684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13ca8baa666d5472757f1a88f644c67216e0e3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1431a442e0b7fdbc6a6bbd99defd981e3ccd2ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14441d3e36b448261cbadc5e8d697f3c5e918f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14aa4bd1f9066091e13a27a290cac8abb8d4e39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x165bea67b965ab41265d624b5b856f662be41268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16ec83d21a42facbf7577dedb8c78153313df7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17cfb52939b7a0643e5730b8751d166ff8f42d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x180f298164f7dfcace7a4e255e17c9b5782b223b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x184eab8d97ce56cf77e2571e8f1d6f697076a831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x190c2f3d40a60d2e38c93e53a06ea9c45bdf6369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ae87560ce2dcb56cc2e66716dd517156278adce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c28c2c89940b2fdb67badcad00f84490672c43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e3dd5a49652a08d6cd8808529ba521fe9704e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e6b4aa08f19a2e06d78e168a04c2210e9f75338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2053bad35d5fe7ac76367dec8fe4e3be1fc50f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20907c4153779828f8693b730c4cbb41aef0d637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x232a15d6493571fba611fb50265a2070048a9318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23508161411cc576777715f37aad7cd5ed02305b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x238afcbcf6dce8cf25866dc0b9e2ff1d26fcc6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x242fa236ecf6a3dc24482bc14adee44ac50c91c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x246e70c8dc6830c0ebc7150f029874eb2d1790ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25510442c0d2870dbcd043501b957524584ab18f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x273da491f5cdc25c0a24be65ddc4c7bca54c87fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x286ccfb1e714065a03327c7abe499b55d663960d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2883cc3fae0b81e938d05428ffc9750dac7bb806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28f1c2a2c09205c124acf307459b7b67b468886b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29d6f68a02e2f5c86364c261e408d5f218a75295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a5bdcbe779236dc4e340deba3a96fcd3845546d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2bd5c300979513c9ef37160255791991574500ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c2e720d2dc00345e3a1e84956e9dbde3a6493ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d4d83f062f93858a0753500fb4d17331e534651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x308836066d78fb917ffe03e6ef5e2a85e306bcb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30f0a52fc894653766afd4976dddc1ad8dc39612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x335139549c565e7cef9f1ee01db5e8e3fdb5e885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x337232986349d395e390a1d75c56c971e6e62a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3511149e0d2459f9a22b662358ed1b825f8b4b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a395a66629dfe32cd9e3528e364408636d361b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b89fd8182f1152baa362c7ebefc5957f70331b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ceac9287686f895222f13fb616dc7492692b7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3dc9beb87fc9e835197ce56e42af0cde51739819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f1af4d92c91511a0bce4b21bc256bf63bcab470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4108c4ec8dc945df16bc780b56f79b849f08d7b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42fcb219aa63daa2d40a72b4de0d8a2694c35610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43fcdf0c14d822d934410c6a263be1cad5250494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47449396b14efde3243e7f153761f2bb48eb4cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47466077e3ea0df11a42d855762d10b2b73e2611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x482f8577a4b90f25a769006f8f607e424bebcacb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48428ada84e4013c625755b6f8a8cfac34a48d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x488d44cbefaa521e367d18bfcb8e3b6e2556876f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x490092cb5bcca226e583d2e0b2fbf2c0e640d156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x491eccc83855a71034e077da22e680615e887c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x492e6e4c9f9a9804994136827e00760794463351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4adc33c1f6abeeb6270a9725971a70a95f2f4b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d5ed1db4e9522c5eec1903bf2f437bbda92768a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d742795f02967cdeec345fd7f253c3c1860a184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d8ec2279853202eb6adaa01eaf85dd22509686b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x501884b90fb9671ebc8878f1563adfe4ef8f9fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x504d314ff5a83c638c0b6bdc9dee19b2ff3e2953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50ac0a960fc90a495ebc7a08c91aa32b27f42327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50d439ef855e030ec216d2fc210f772cf1790afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51f4050319fb89cc8bb609f510e8a8957cd6ff70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51f87b37bb966a16b186ef2d93981fbddb0e53c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5244dc04d915aed144dce7cf3e3845bcf8ab57bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x525f86c4106d34e8e59646c2eba44edb8c03dfbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52b45ce744942d326a1a74a54cc070c1f22247ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52eabab7895124914b8554932b2387dcfcb10c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52fe9ab72253a29ec6d9148ee2b1de7141ec5b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5380f0d4443c1f34e20e740f3c0e80bc177c8f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x546864144681d2cba603acaa56d2517f9b600cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fa9cf2bd7f9f56600b201081df5b8d7b307db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x557fee3e97ab70bf24e4672cbbf27c09ba4d0406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5585f7f0c313795f0ad281d218fe2e9a862089b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56b04ba64d7c9312e793210f7071ee560b156c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59561a099737c0a3c97b5d1afebc86d1b498315d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a6f10104f784f84c07dcdc530d7e138bb40a2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c244aaa0318b9b09cabc7f2d3e9b2f4444acb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c843dbbc7fe78e257d1704a7ecf964b1d7879f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d0cc381d0543945ff40aa2acb06dc66a9333def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5efbeba02e25c7687bb22e1f836e1c3c06475bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x618c833316837eafee6ff8abd05307202d371e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x622333d2d488161a62cb407b1cbb2fa38557befa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62427b65a8d1ab99563ec64d793789dedc53e500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x647846e8dd579ae64ec793b1014639865ca654e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64ecfc5ff6c652698511cd5c7c3c8e452c950e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x655290092fd4f8ebd1221ca42cce5edf5cf20a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65a4455c18a42d9876d1e784df5f597376621275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65d31ac4e1853ca1805ed2d5419e5863c83ae05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66acb93fe3d13b3f557bfa881f1fbbdf18bf10d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66bbaf29a1ef0a7145959c6551525de4b1fbbb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x672f0b9bdc51505c74da8f93a92467c6dfe16e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6839cacdd2335bac09c20a25c3887c42d56ddc40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68aeae3aa461f3aee34acf395b2c3e30fcf96791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a322c8734dd631809c9b4f231fc7e70a28673d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d552afd66cf465226eee3af3df37f5996670c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x712235bd196d29ed170ed50a971a6413cd65096c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74b1e2bf0c85215c27733bcd1e0fbfb1ce133bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x754d58dbaca56d5d2e73e1254f0b9b2dadb09869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x773475f34b5af5f6509056228c05b5307a4cf981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x777f87459556888010e25c6c788387d111f288bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7bddaf6dbab30224aa2116c4291521c7a60d5f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cd5211ddd68d5d284b248a2ff2240f567978698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cf5d950528e73f25995e7442dd01d9457496ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8080c11aa6f9745d9d503795c542d05748af8e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80f49467109a5bb82310076e64258ed575a7806e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8250d72009ac305cd17779e743cddb171015109b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8560eab07797eda7fcdeebc158689dad58bf75bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x856a9e7251e9c2a005e3dd0b8328a955aa4f4e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85c7fd54b31315ca9244192057fee1276ab4bfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8655d39a9e14b3458e68d9792e0e01a054ad384c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x866a3395e2bdb5912e72640505692c2fe66a9d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a17dc9e2e4df321d81e99509772a03e2cb89586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ab873fa2159e18b0faf0e580e040ea789b2c447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8bd836ef987f500c5a6b09ab5b9197cc44c85327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9110a365cd28332e10c5292ee1ca1758898b140a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9236d32e51166e2c9c58be168692010a1c2deda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92ab58ecc2214c4b99449c5ddfb66754a4f7e2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95b026867b8883dcc6c026303bdbe8ec76901d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97fa45e62f00f9cf3b7ace96a0348645805e67ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x990a499b244f2f47e342198a0d22a5c3c85ce423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x996c6894c0bd1cf7a86b3e13caaf444bd9a15c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a16a4822b09565058b9242d0e0e4be64c89d16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b036400c6578d60750b33663a49eedd6c85ca9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d40915cad768d1382eb255db0380ab84a6466aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9dfa29481746047eddfabbf37c09c095322a675b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ee5b42efc8b32a0d9948a95917836c22e583a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f0edb45c2dc0f56ba7c48368c26426f366bb788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa001ea6abc64b9008880b1c3d6444e19e498935d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa06f8a31e547bca3cffd3000b354b4d34d08631c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa43eb75d382d1a1fe262b1bc26ac74b8c311278e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4537e6149926e697ce7bb6a76eac1b951a0bed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5b170bd22d004ef462957eb23a5270928bf5a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5c0013bda8a8361d6de9e8ab9a1c456be7456c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa69e0a075ac9b608ad8c832eea64527f23a37247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6fc6ff99eda4bd8488481bda3d49b5690c4e476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa70eb88d6ac94e778acda42a5e595c0ef773cecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8be6080da2617d845664f9c9d11f5a1475a00a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa0c624aad1556800d3cac40f911880239b69140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaa220ec9c1772ce97f2dc8fbe75dfd6aa590132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab051074eb3540e56636ab18a6d6fc86d4735fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab573f6cc7f6ed1a877447d4687e80272c8dabc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac31f8f863f8dcd7065eff5748dd71f7c312ed3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaddcfcdd3d6bfbdd78ccf2221b5591ff0cfd7adc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260233 | `0xae950fdd0cc79dde64d3fffd40fabec3f7ba368b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafc52f7331bb3e18c394f1ed92508a15f62b9124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb12e067d26781374930a942077688f2bff4ca60b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1a419e38f29876768dd71ca7bd3294d0bd28047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1d15e04083ab32d05bafb76383033d6c546d39b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb39546d45f509957909d99d6619fea99ec348b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb47fcd30e1a556d66afa20883a86887184d80885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb64a077f209faac5add0fc0dd573c26206461e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb73ec7be54ddedb9ff61286e48619fd02650c9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb815f030f12f72de4b5b7377abbeab0ff99fe0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9350b70639db98ce563d95d6d908020e562ffc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9b0a24533bd1b7fdc67e2f2fe64654a56d4fc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaf51845ad5133c151fd558e9dabb3b33c1981fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb1305bae52122bd24e74d7ab2f889fb5911a9b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbcff59423f7535a2977e5d177bb37b6655544f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd39c9730d3cfed4ee7bf9d66f84053ba5e6142b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd3c6992f8be72c40f3d652c300cb88c8b3e3a91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd726c068770e332f6eaf4168554a849cd7c5634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe10198dc8ba90a0b8427583bd745140aa4544cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe1eb11753c022d6ffbaa528eb9e9a587b3abc0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc08b861b43d5ae2d3547e0ec6d9bc3ebda8581b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0e1c828717b8d671917759b98539d2ef5fb2bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc148d9c0fede992a5fec9927e023b20366333a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1f53ef298604601509adcb246f3fa26f939658c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc26f516886cbde5bb8e5246e62057f1a94eecd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2b97e74c77a148b67d73076abdb5f4b16061234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc316c5a0e7acce109799fb2dacb39462745ed6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4c2ab5d88cdcfc7630e5ab2d11148521c631ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc54dae0e22a6564e2a4d467116dfb6343ad364cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5898a84162ae5a50008e234d001b51e3e8e8d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc60082995bf6100711d9a93d80d4935048861843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7fec3940a6ab2b584eee84f619976ddd5765e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb285d1c17ba704f295d19192c00e1197f0a17dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb83cb237f9a1f20ac21a3e157fc37d18e033cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc3412b7013358b0367860dcdfb9051752cd02cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd7a46e365389083912843a705fb0b3df907d769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce41be0b8b91e6dd6f8507741f00730c938c4398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce48b682a8216513f26c2f04562776e9c83e0e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd05d4bfbbde1c81722739599c5f26c87307b1917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1d6bc02ece528c07251979820701c5173905c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2b2a96fe51213d07bd2d446c47a2841d1acc54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2f95d009968c21efb101192fc95395a0a0590e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3b3b65c66e9040ac1d87d4cd37d42294cf6f9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd668618bbfe13d46753dc5bade13728434dfcc1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd68bb16de1d73b3c45d978fba37bdf5f056c2f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda2bbcc90d73b5cdb23cd2fa2c058885f8415a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb4e816ba927be5ac85482183a7e5105b66cb193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc6ef3c9eea7f096d222fc7571a79bfe62d01fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcb8a1c568597cc637b9090c3f2148190ce04876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd231d6717d7ef4522be17e2b901359b0030029f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd6a05ba7a82bea43562ce658b4a947e0e357144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdeaf346ea5726ac90534e874d1466e6099efa3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe12642369c11511eb2f54a1eee070065833b038b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19e880ad254281a2a1eb87a01bd633231f9edc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2a8b8f738168a75d8b15b0192324599b3f02868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe33fb7ddf2ae9afb568d3dcb60b54eea0153bce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3581162ba4270aa6a7a66226eb2cb57cdccc171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3eae14affb125cf3088fbdabc8802993bf92624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe42ce95a3daa3c5fc506640ade5ee075bb7e50b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe43c06fa2635cae982d4b3c52e120c311b3aea3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4a39fc91f2bb80aaa290cf2c6b4ba7adffa115d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5dca9bea928da42da1677acae1bb37732308157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7e3ae22275895a21d2f69c5cebd39655aba3e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9fd2c0df51dfefb6ae63033893e6b8d248f9b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea5f7189aa3fd51894673f77f3d5f6990061838c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb096b9c7e6c01ad09b5714df606a93a1f7458d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb97f47ffda731c68381ae3948ae42733fba2181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeceea4079b9bbaab7f891000fec12f7b82a71f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee22bce2094bcbea8429e3a3f0d2f260bfbec9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee67c9a6b9f8f3a9d6304348bb2630075e75fe01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeed1840d37ecd54e31caa0529fa9c1ba15baa471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf00878f3d832e6d08ea452449ef62be38adf9303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0839b96d2063b22f292757d585630c78a6522c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf14fabe507c9cc6d1b632ec2033072484409fc48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf17032203fea65ffa89a7cf47fe74cd2a2c16aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2836ef7cceebcb6757a28a3f588a7c31d08ffc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2d263e945035d0e98ae0235ca0fa90949c8adf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf34fbfe9f293b23f25445f6901d020d2a4150065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf36b9a8071821de4c64089c7316a9571cb5b5066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf64f6061ca8de93a1e545d2de29a5de19185c22b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf77b30b5dfd10f8218403c6ac2e09401be1cc855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7e642ce072850a5bc92e5a7a81e5ad7807642fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8c0bb9fa052896429461ab3e5d4a3bf8c3c7cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa18d9fd773f92190448ef554d0ce96e139a88bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb587b2b2d3ae570868f743d998c35fb8e236722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbf64667f72deeb3d6f885c523b9c16f56f8c9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd728527f501e78637ec1b31e4a342ae74853d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffa0f528415f29ea595e58cabe241ce5286c5fd1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 257
- Live contracts: 0
- Unknown liveness contracts: 257
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=257

Showing first 200 of 257 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00215e4b76fe938ee54bf2a7575cdb7d829de6d8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x01e5c45cb25e30860c2fb80369a9c27628911a2b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0406a5437c3174d2dd9410a57e1ba48f89302883` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x040b7ef63e716dc2cbfa170eb1bd1dcff9dc2358` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0564909217779190bcecc9d88b96966a40c4bb3c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x05e13eea764adc3d1384d341db16993b21c00278` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x06933a0ec6a07541b9c2d967ee8fae8e0e993809` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x06c120044ac79653e2bed750f4757c7e4b4c3e5d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x07b1549fb6692e0e6e2c406919d956e350d65731` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0843773ae89690fcb495f7da68303f9ec109bcef` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x091aaa13e11da1503733d052a54c8c68d7b4bcca` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x093cce24abbd094349904caf598f6df66f9e3558` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0943d97b947e7b7399f1196ffcee4d31019028a2` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0ac3e46277afb909d5180bf03a191904de3f46bd` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0b81fe1be0f05bfd73f95472157e8b30781e4a89` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0bc1f177c5345d8fb3e810c9be048102367135c8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0c2b27d3c27fac1612da22346dc2fda8a3402fcc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0c9fb44e93a87e8d9bdb3952d3af031a08c63344` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0d6068fee74d924a6d8292689de96a6a679f1b5d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0e06464544ba77e437427ca5b270fb5f868d17ab` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0e7120267e71ff8e2436a6e8ef05b23c8476c8f0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0e9e56e85073bade4ed347bdcf55dc938d918f8f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0f464f551ea06d8f3b6ad7caff8c64ad45acd511` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x0f55a750c2ea1c5dc73554dfe8a9ca72b9e9b082` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x108d595086887c3cd1adbe5b568fcacff5b4ddae` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x10bbd18fcb1d98aa0f943c01176f2be4e7c8b782` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x11f673272ad39745f7bc2a8932a24a2147573671` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x137202793462f08943949dfe23115665c63a3684` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x13ca8baa666d5472757f1a88f644c67216e0e3bf` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x1431a442e0b7fdbc6a6bbd99defd981e3ccd2ea8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x14441d3e36b448261cbadc5e8d697f3c5e918f57` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x14aa4bd1f9066091e13a27a290cac8abb8d4e39c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x165bea67b965ab41265d624b5b856f662be41268` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x16ec83d21a42facbf7577dedb8c78153313df7cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x17cfb52939b7a0643e5730b8751d166ff8f42d98` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x180f298164f7dfcace7a4e255e17c9b5782b223b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x184eab8d97ce56cf77e2571e8f1d6f697076a831` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x190c2f3d40a60d2e38c93e53a06ea9c45bdf6369` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x1ae87560ce2dcb56cc2e66716dd517156278adce` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x1c28c2c89940b2fdb67badcad00f84490672c43b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x1e3dd5a49652a08d6cd8808529ba521fe9704e85` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x1e6b4aa08f19a2e06d78e168a04c2210e9f75338` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x2053bad35d5fe7ac76367dec8fe4e3be1fc50f09` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x20907c4153779828f8693b730c4cbb41aef0d637` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x232a15d6493571fba611fb50265a2070048a9318` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x23508161411cc576777715f37aad7cd5ed02305b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x238afcbcf6dce8cf25866dc0b9e2ff1d26fcc6f2` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x242fa236ecf6a3dc24482bc14adee44ac50c91c1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x246e70c8dc6830c0ebc7150f029874eb2d1790ae` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x25510442c0d2870dbcd043501b957524584ab18f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x273da491f5cdc25c0a24be65ddc4c7bca54c87fc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x286ccfb1e714065a03327c7abe499b55d663960d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x2883cc3fae0b81e938d05428ffc9750dac7bb806` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x28f1c2a2c09205c124acf307459b7b67b468886b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x29d6f68a02e2f5c86364c261e408d5f218a75295` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x2a5bdcbe779236dc4e340deba3a96fcd3845546d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x2bd5c300979513c9ef37160255791991574500ef` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x2c2e720d2dc00345e3a1e84956e9dbde3a6493ff` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x2d4d83f062f93858a0753500fb4d17331e534651` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x308836066d78fb917ffe03e6ef5e2a85e306bcb5` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x30f0a52fc894653766afd4976dddc1ad8dc39612` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x335139549c565e7cef9f1ee01db5e8e3fdb5e885` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x337232986349d395e390a1d75c56c971e6e62a2c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x3511149e0d2459f9a22b662358ed1b825f8b4b4f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x3a395a66629dfe32cd9e3528e364408636d361b9` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x3b89fd8182f1152baa362c7ebefc5957f70331b4` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x3ceac9287686f895222f13fb616dc7492692b7bd` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x3dc9beb87fc9e835197ce56e42af0cde51739819` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x3f1af4d92c91511a0bce4b21bc256bf63bcab470` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x4108c4ec8dc945df16bc780b56f79b849f08d7b0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x42fcb219aa63daa2d40a72b4de0d8a2694c35610` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x43fcdf0c14d822d934410c6a263be1cad5250494` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x47449396b14efde3243e7f153761f2bb48eb4cc8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x47466077e3ea0df11a42d855762d10b2b73e2611` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x482f8577a4b90f25a769006f8f607e424bebcacb` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x48428ada84e4013c625755b6f8a8cfac34a48d84` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x488d44cbefaa521e367d18bfcb8e3b6e2556876f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x490092cb5bcca226e583d2e0b2fbf2c0e640d156` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x491eccc83855a71034e077da22e680615e887c95` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x492e6e4c9f9a9804994136827e00760794463351` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x4adc33c1f6abeeb6270a9725971a70a95f2f4b7e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x4d5ed1db4e9522c5eec1903bf2f437bbda92768a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x4d742795f02967cdeec345fd7f253c3c1860a184` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x4d8ec2279853202eb6adaa01eaf85dd22509686b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x501884b90fb9671ebc8878f1563adfe4ef8f9fe9` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x504d314ff5a83c638c0b6bdc9dee19b2ff3e2953` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x50ac0a960fc90a495ebc7a08c91aa32b27f42327` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x50d439ef855e030ec216d2fc210f772cf1790afb` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x51f4050319fb89cc8bb609f510e8a8957cd6ff70` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x51f87b37bb966a16b186ef2d93981fbddb0e53c2` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5244dc04d915aed144dce7cf3e3845bcf8ab57bf` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x525f86c4106d34e8e59646c2eba44edb8c03dfbc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x52b45ce744942d326a1a74a54cc070c1f22247ec` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x52eabab7895124914b8554932b2387dcfcb10c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x52fe9ab72253a29ec6d9148ee2b1de7141ec5b5e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5380f0d4443c1f34e20e740f3c0e80bc177c8f9e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x546864144681d2cba603acaa56d2517f9b600cbc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x54fa9cf2bd7f9f56600b201081df5b8d7b307db7` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x557fee3e97ab70bf24e4672cbbf27c09ba4d0406` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5585f7f0c313795f0ad281d218fe2e9a862089b0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x56b04ba64d7c9312e793210f7071ee560b156c3e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x59561a099737c0a3c97b5d1afebc86d1b498315d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5a6f10104f784f84c07dcdc530d7e138bb40a2f8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5c244aaa0318b9b09cabc7f2d3e9b2f4444acb08` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5c843dbbc7fe78e257d1704a7ecf964b1d7879f8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5d0cc381d0543945ff40aa2acb06dc66a9333def` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x5efbeba02e25c7687bb22e1f836e1c3c06475bd6` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x618c833316837eafee6ff8abd05307202d371e43` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x622333d2d488161a62cb407b1cbb2fa38557befa` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x62427b65a8d1ab99563ec64d793789dedc53e500` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x647846e8dd579ae64ec793b1014639865ca654e0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x64ecfc5ff6c652698511cd5c7c3c8e452c950e06` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x655290092fd4f8ebd1221ca42cce5edf5cf20a2a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x65a4455c18a42d9876d1e784df5f597376621275` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x65d31ac4e1853ca1805ed2d5419e5863c83ae05e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x66acb93fe3d13b3f557bfa881f1fbbdf18bf10d1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x66bbaf29a1ef0a7145959c6551525de4b1fbbb33` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x672f0b9bdc51505c74da8f93a92467c6dfe16e3b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x6839cacdd2335bac09c20a25c3887c42d56ddc40` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x68aeae3aa461f3aee34acf395b2c3e30fcf96791` | non_address_book | unknown | unknown | unverified | n/a | `0x6c6dd9f3e0266321d1a33974b0e4f1aeb144f729` |
| unverified unclassified | UnnamedContract<br>`0x6a322c8734dd631809c9b4f231fc7e70a28673d6` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x6d552afd66cf465226eee3af3df37f5996670c6e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x712235bd196d29ed170ed50a971a6413cd65096c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x74b1e2bf0c85215c27733bcd1e0fbfb1ce133bcd` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x754d58dbaca56d5d2e73e1254f0b9b2dadb09869` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x773475f34b5af5f6509056228c05b5307a4cf981` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x777f87459556888010e25c6c788387d111f288bc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x7bddaf6dbab30224aa2116c4291521c7a60d5f55` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x7cd5211ddd68d5d284b248a2ff2240f567978698` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x7cf5d950528e73f25995e7442dd01d9457496ab2` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x8080c11aa6f9745d9d503795c542d05748af8e30` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x80f49467109a5bb82310076e64258ed575a7806e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x8250d72009ac305cd17779e743cddb171015109b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x8560eab07797eda7fcdeebc158689dad58bf75bc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x856a9e7251e9c2a005e3dd0b8328a955aa4f4e25` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x85c7fd54b31315ca9244192057fee1276ab4bfce` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x8655d39a9e14b3458e68d9792e0e01a054ad384c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x866a3395e2bdb5912e72640505692c2fe66a9d8c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x8a17dc9e2e4df321d81e99509772a03e2cb89586` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x8ab873fa2159e18b0faf0e580e040ea789b2c447` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x8bd836ef987f500c5a6b09ab5b9197cc44c85327` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9110a365cd28332e10c5292ee1ca1758898b140a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9236d32e51166e2c9c58be168692010a1c2deda9` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x92ab58ecc2214c4b99449c5ddfb66754a4f7e2cb` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x95b026867b8883dcc6c026303bdbe8ec76901d80` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x97fa45e62f00f9cf3b7ace96a0348645805e67ef` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x990a499b244f2f47e342198a0d22a5c3c85ce423` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x996c6894c0bd1cf7a86b3e13caaf444bd9a15c8c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9a16a4822b09565058b9242d0e0e4be64c89d16c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9b036400c6578d60750b33663a49eedd6c85ca9d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9d40915cad768d1382eb255db0380ab84a6466aa` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9dfa29481746047eddfabbf37c09c095322a675b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9ee5b42efc8b32a0d9948a95917836c22e583a87` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0x9f0edb45c2dc0f56ba7c48368c26426f366bb788` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa001ea6abc64b9008880b1c3d6444e19e498935d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa06f8a31e547bca3cffd3000b354b4d34d08631c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa43eb75d382d1a1fe262b1bc26ac74b8c311278e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa4537e6149926e697ce7bb6a76eac1b951a0bed8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa5b170bd22d004ef462957eb23a5270928bf5a39` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa5c0013bda8a8361d6de9e8ab9a1c456be7456c4` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa69e0a075ac9b608ad8c832eea64527f23a37247` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa6fc6ff99eda4bd8488481bda3d49b5690c4e476` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa70eb88d6ac94e778acda42a5e595c0ef773cecb` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xa8be6080da2617d845664f9c9d11f5a1475a00a2` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xaa0c624aad1556800d3cac40f911880239b69140` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xaaa220ec9c1772ce97f2dc8fbe75dfd6aa590132` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xab051074eb3540e56636ab18a6d6fc86d4735fb6` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xab573f6cc7f6ed1a877447d4687e80272c8dabc1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xac31f8f863f8dcd7065eff5748dd71f7c312ed3d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xaddcfcdd3d6bfbdd78ccf2221b5591ff0cfd7adc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xafc52f7331bb3e18c394f1ed92508a15f62b9124` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb12e067d26781374930a942077688f2bff4ca60b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb1a419e38f29876768dd71ca7bd3294d0bd28047` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb1d15e04083ab32d05bafb76383033d6c546d39b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb39546d45f509957909d99d6619fea99ec348b07` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb47fcd30e1a556d66afa20883a86887184d80885` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb64a077f209faac5add0fc0dd573c26206461e7d` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb73ec7be54ddedb9ff61286e48619fd02650c9b9` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb815f030f12f72de4b5b7377abbeab0ff99fe0ad` | non_address_book | unknown | unknown | unverified | n/a | `0x6c6dd9f3e0266321d1a33974b0e4f1aeb144f729` |
| unverified unclassified | UnnamedContract<br>`0xb9350b70639db98ce563d95d6d908020e562ffc6` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xb9b0a24533bd1b7fdc67e2f2fe64654a56d4fc3f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbaf51845ad5133c151fd558e9dabb3b33c1981fc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbb1305bae52122bd24e74d7ab2f889fb5911a9b2` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbcff59423f7535a2977e5d177bb37b6655544f94` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbd39c9730d3cfed4ee7bf9d66f84053ba5e6142b` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbd3c6992f8be72c40f3d652c300cb88c8b3e3a91` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbd726c068770e332f6eaf4168554a849cd7c5634` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbe10198dc8ba90a0b8427583bd745140aa4544cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xbe1eb11753c022d6ffbaa528eb9e9a587b3abc0a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc08b861b43d5ae2d3547e0ec6d9bc3ebda8581b3` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc0e1c828717b8d671917759b98539d2ef5fb2bd6` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc148d9c0fede992a5fec9927e023b20366333a48` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc1f53ef298604601509adcb246f3fa26f939658c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc26f516886cbde5bb8e5246e62057f1a94eecd43` | non_address_book | unknown | unknown | unverified | n/a | `0x6c6dd9f3e0266321d1a33974b0e4f1aeb144f729` |
| unverified unclassified | UnnamedContract<br>`0xc2b97e74c77a148b67d73076abdb5f4b16061234` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc316c5a0e7acce109799fb2dacb39462745ed6c9` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc4c2ab5d88cdcfc7630e5ab2d11148521c631ca1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc54dae0e22a6564e2a4d467116dfb6343ad364cd` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc5898a84162ae5a50008e234d001b51e3e8e8d06` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |
| unverified unclassified | UnnamedContract<br>`0xc60082995bf6100711d9a93d80d4935048861843` | non_address_book | unknown | unknown | unverified | n/a | `0xcf00c1ac6d26d52054ec89be6e093f2e270d61d9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/vapordex](https://skynet.certik.com/projects/vapordex) | CertiK | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [audit.pdf](https://raw.githubusercontent.com/VaporFi/vapordex-contracts-v2/main/packages/periphery/audits/abdk/audit.pdf) | ABDK Consulting (UPSTREAM Uniswap V3 periphery — inherited via fork, not VaporDex's own) | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [audit.pdf](https://github.com/VaporFi/vapordex-contracts-v2/blob/main/packages/periphery/audits/abdk/audit.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [audit.pdf](https://github.com/VaporFi/vapordex-contracts-v2/blob/main/packages/core/audits/abdk/audit.pdf) | ABDK | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 33 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21473] skynet.certik.com/projects/vapordex — no match: Extracted from Audited Files section listing MasterChef.sol and Migrator.sol. Audit date from 'Last Audit was delivered on 11/3/2022'.
- [21476] audit.pdf — matched: The report explicitly lists two files audited: NonfungiblePositionManager.sol and SwapRouter.sol. The audit date is given as 26th April 2021.
- [24531] audit.pdf — matched: Audit report explicitly lists two files in scope: NonfungiblePositionManager.sol and SwapRouter.sol. Date from cover page: 26th April 2021.
- [24533] audit.pdf — matched: All contracts and libraries explicitly listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/vapordex | MasterChef | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/vapordex | Migrator | unmatched — not counted | — | listed in Audited Files section | no |
| audit.pdf | NonfungiblePositionManager | own contract | NonfungiblePositionManager (selected) `0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a` — deployed 2023-10-16 15:58:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | SwapRouter | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NonfungiblePositionManager | own contract | NonfungiblePositionManager (selected) `0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a` — deployed 2023-10-16 15:58:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | SwapRouter | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3FlashCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3MintCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDerivedState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolEvents | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolImmutables | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolOwnerActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SecondsOutside | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Factory | own contract | UniswapV3Factory (selected) `0x62b672e531f8c11391019f6fba0b8b6143504169` — deployed 2023-10-16 15:58:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x55477d8537ede381784b448876afaa98aa450e63` | DexAggregatorDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4` | ReplenishmentPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94` | StableVapeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe61efa294c7eec0c96b3df79b5c1975f0613548a` | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc009a670e2b02e21e7e75ae98e254f467f7ae257` | VaporDEXFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d` | VaporDEXRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 258 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 37 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=3

Zero-match audit list:

- [21473] skynet.certik.com/projects/vapordex

Fork inheritance lineage and inherited audits are included when available.
