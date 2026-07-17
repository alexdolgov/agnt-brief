# Agentic Audit Brief: Treehouse Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 6 audit(s)
- Eligible audit results: 20 (6 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Treehouse Protocol (`treehouse-protocol`)
- Website: [https://www.treehouse.finance/](https://www.treehouse.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum, hyperliquid, mantle
- Contract surface: 120 unique implementations (154 raw deployments)
- Coverage basis: 5/14 confirmed own live verified implementations (35.7%); conservative 35.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $52,583,625.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Treehouse Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, avalanche, ethereum, hyperliquid, mantle. Structural roles: 11 unclassified, 4 core, 2 supporting, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (11), core (4), supporting (2), infra (1)
- Contract kinds: contract (17), unclassified (1)
- Detected standards: ownable (4), ownable2step (3), erc165 (2), erc20 (2), erc20permit (2), pausable (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 14 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

**StablePool** (`0x832f8e068e92d56b94205ea605e5cdaa7cded1f0`, chain 43114)
Origin: balancer (`0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1620b7e5c9099c8bcbc326b55e0b8440eda9d30a`, chain 999)
- UnnamedContract (`0x932f2a74c526b2856ef19839059a0aed9ae340b7`, chain 999)
- UnnamedContract (`0xa120f5789f914766cb4b44b83b545925b443f642`, chain 999)
- UnnamedContract (`0xb2c5079c3a313c7386a444f6015673ee7a97762a`, chain 999)
- UnnamedContract (`0xb83d27f0f4133a7b0377a88089583131a903fdc7`, chain 999)
- UnnamedContract (`0xd09acb80c1e8f2291862c4978a008791c9167003`, chain 42161)
- ComposableStablePool (`0x65c2d90b33f7bf693a7ef54662435f2cf3251c21`, chain 42161)
- CurveStableSwapNG (`0xa10d15538e09479186b4d3278ba5c979110dddb1`, chain 1)
- LockReleaseTokenPool (`0x8113f001ea456759264317007220cbc939ca8435`, chain 1)
- Strategy (`0x568bf0d3d0ef982b8f4978bea05d287dd47a15bb`, chain 43114)
- TreehouseRouter (`0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5`, chain 1)
- TreehouseRouter (`0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e`, chain 43114)
- Vault (`0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (17 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/14 (35.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 100 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 20 of 120 unique; 100 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/105
- Verified + Unaudited implementations: 100
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 120
- Raw deployments: 154
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 6 fresh, 13 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 28.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 4 | 3.8% | 2025-03 |
| Trail of Bits | Tier 1 | 4 | 3.8% | 2024-10 |
| Fuzzland | Tier 2 | 2 | 1.9% | 2024-09 |
| WatchPug | Tier 2 | 1 | 1.0% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionExecutor | unknown | project_anchor | own_supporting | 2 | ethereum | unit-394266 (2 proxies) | 3 deployments: ethereum `0x60d2d94acb969ca54e781007ee89f04c1a2e5943`; ethereum `0xb1593193bcd7cecc3d19597658003d735d1e9e94`; ethereum `0xb27d688ac06a441c005657971b11521e80cdce98` | ✅ Audited |
| TAsset | unknown | project_anchor | own_supporting | 1 | ethereum | unit-394267 | 2 deployments: ethereum `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8`; ethereum `0xd1a622566f277aa76c3c47a30469432aaec95e38` | ✅ Audited |
| TreehouseRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-394253 | `0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5` | ✅ Audited |
| TreehouseRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394258 | `0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e` | ✅ Audited |
| Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394249 | `0x551d155760ae96050439ad24ae98a96c765d761b` | ✅ Audited |

### ⚠️ Verified + Unaudited (100)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountingOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x852ded011285fe67063a08005c71a85690503cee` | ⚠️ Unaudited |
| AccountingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c5e0a67f32cf1dc07a8817590efa102079a1af` | ⚠️ Unaudited |
| ActionExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa969faf6757fd7873f35650aa3a67823310fb54b` | ⚠️ Unaudited |
| ActionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x94af5994eb6841e1d930c95ad0c9f89771c3073f`; avalanche `0x07fa18a8d49e02ba9693af1e15337ba66535e0f5` | ⚠️ Unaudited |
| ASAVAXRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa5fb13f242180aff20d7fdc54c13ec1f8e54a46` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa331d84ec860bf466b4cdccfb4ac09a1b43f3ae6` | ⚠️ Unaudited |
| BenqiBorrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18b0bbf62c5b7bf6182c9b46573dcbeff16577ff` | ⚠️ Unaudited |
| BenqiClaimReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69c5725b500c7a160f8ce50474c439dbc353f094` | ⚠️ Unaudited |
| BenqiPayback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28c1d5fc29b9690651b50adce14417eb34f75b19` | ⚠️ Unaudited |
| BenqiSupply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c1823a7089bf2962206f1cddea1569facc7c702` | ⚠️ Unaudited |
| BenqiWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87899c5c9b083e437a552a371004161fdf4ad472` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd15a672319cf0352560ee76d9e89eab0889046d3` | ⚠️ Unaudited |
| ComposableStablePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d13531bf6344c102280ce4c458781fbf14dad14` | ⚠️ Unaudited |
| ComposableStablePool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-394254 | `0x65c2d90b33f7bf693a7ef54662435f2cf3251c21` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394a1e1b934cb4f4a0dc17bdd592ec078741542f` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-394252 | `0xa10d15538e09479186b4d3278ba5c979110dddb1` | ⚠️ Unaudited |
| DepositSecurityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77f8768774e1c9244beed705c4354f2113cfc09` | ⚠️ Unaudited |
| DorMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a` | ⚠️ Unaudited |
| DorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5324e2f61987fcb06d892f1256b7c12ca9152a10`; ethereum `0x7ca353c218d18f21931d61080d2a528125bbc204` | ⚠️ Unaudited |
| DorStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x478bf562b2a39ff8530ee41ff0dfb39d8bdd2192`; ethereum `0xc1b6a630ae2252eac7b0b8c7f4a174b4d7f51023` | ⚠️ Unaudited |
| DummyEmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f6541c2203196feedd14cd2c09550da1cbeda31` | ⚠️ Unaudited |
| DWSTETHV3RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5760a2f36a8a3bf57cfc8376b046669a7fbbf08` | ⚠️ Unaudited |
| EIP712StETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f73e4c2a6d852bb4ab2a45e6a9cf5715b3228b7` | ⚠️ Unaudited |
| ESRV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1c069c2f77b26a54e9f175fa2eade21c34a94e1` | ⚠️ Unaudited |
| FastlaneFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x434b68b11bbe8fd3074089397ca3d275801d6354`; avalanche `0xc41561f2ca84302b6e920d68b46fa21104d0676b` | ⚠️ Unaudited |
| FixedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb64b15b0c14645a9216a4caf57b33aa9ba2860` | ⚠️ Unaudited |
| GearboxDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8793164ae37e5fae2cdf7620f4d4dc615bc22f31` | ⚠️ Unaudited |
| GearboxDepositV31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4deed6b663a64f76f6a59412486a9d9048cd234f` | ⚠️ Unaudited |
| GearboxRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150d67ad07700918fc77d7fd2e78967693718ece` | ⚠️ Unaudited |
| GearboxRedeemV31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a02936ba645ab719574512b578ee85d208257a` | ⚠️ Unaudited |
| HashConsensus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7fadb6358950c5faa66cb5eb8ee5147de3df355a`; ethereum `0xd624b08c83baecf0807dd2c6880c3154a5f0b288` | ⚠️ Unaudited |
| InternalAccountingUnit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b6238e95bbcabee58997c99badd4154ad68ba92`; avalanche `0x5ac32e4c756bd57630eadf216668ba16fa4635a2` | ⚠️ Unaudited |
| KPKWSTETHV3RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8efa074aa18368270d5cda1fe733de2b9459ac2` | ⚠️ Unaudited |
| LegacyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29b819654ce6224a222bb5f586920105e2d7e0e` | ⚠️ Unaudited |
| LendingPoolv3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5fde59415625401278c4d41c6befce3790eb357f` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394251 | `0x8113f001ea456759264317007220cbc939ca8435` | ⚠️ Unaudited |
| MerklClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23bd2d2af26c42ef9d1a1159d80f1cd7d90f049e`; avalanche `0x8e41b7b3fae77107d54a9f670feae912cf442e46` | ⚠️ Unaudited |
| NavBenqi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34a9c96d00dce4d78f3a5a32a3e47bb40e691485` | ⚠️ Unaudited |
| NavErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xa0a105e10801b52bf89a042bdb40c7389e57af36`; avalanche `0x24fe445449f323561ba259a4abea8c51383b10d1` | ⚠️ Unaudited |
| NavErc20WithDebt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xff62ad6200a54fff9288c997f8ca2d480a0c48bc`; avalanche `0x2e3559254469ceff47526d9c40cf94d0a22cf821` | ⚠️ Unaudited |
| NavHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x86b238787f24eecf24500135bc9d4d117062b6e6`; ethereum `0xf22ca896427677507a9ef99d30b261659775ff56` | ⚠️ Unaudited |
| NavLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xfda0b8bca5d0a5a5093141d8a45d133a9f09b258`; avalanche `0x6276c3dc4f91fc231b9913eb6cc6c4da2e5dbb6c` | ⚠️ Unaudited |
| NavRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xe2d60463de3a0221276d737b87c605e0bb5451e9`; avalanche `0x950d8545bb4e58b61230d47314549cae5bcedcc6` | ⚠️ Unaudited |
| NavUnSavax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f16172206d320339cca06d30eca6077a7ce602f` | ⚠️ Unaudited |
| NavUnStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39` | ⚠️ Unaudited |
| NodeOperatorsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8538930c385c0438a357d2c25cb3ead95ab6d8ed` | ⚠️ Unaudited |
| OracleDaemonConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf05a929c3d7885a6aead833a992da6e5ac23b09` | ⚠️ Unaudited |
| OracleReportSanityChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9305c1dbfe22c12c66339184c0025d7006f0f1cc` | ⚠️ Unaudited |
| PnlAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0xdd317b85f7bd56361e2e3216610803e433acaea7`; avalanche `0x30c030eec5c6b2ce609e1a69a54d0fd311be48c3`; avalanche `0x3cfd9a81a16e26f9fde9c751a0be0b9d8360892d` | ⚠️ Unaudited |
| PnlAccountingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x57c23fe7a1a8d86f1128196c7c22f8711e81437e`; ethereum `0xd88fb00573adfdc98536ab60b1b4efafd41337e1` | ⚠️ Unaudited |
| ProtocolPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x03a993369b5b6290d412b63d29f3bc2dc13f5e61`; avalanche `0x63fff9df7f427cc5b9a753e46bf7c4f2c263f183` | ⚠️ Unaudited |
| QIAVAXBorrowRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf59a26c295d082cfc17e2a98d1324e099860ab48` | ⚠️ Unaudited |
| QISAVAXSupplyRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3b087634e78731cc593ac1b93a042eb1de0d714` | ⚠️ Unaudited |
| RateProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xd0b6c01e9a8d21ed05726f9020b577a614bedce7`; avalanche `0x8126f3385c7dc4072a67f17d585cec8ccab3d9bb` | ⚠️ Unaudited |
| RedemptionController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xdf2ee409bee416a53b5c040d8e6dad4a7ceb2510`; avalanche `0x4d9f1b673aa23e8c427d78df2d9390f724706755` | ⚠️ Unaudited |
| RefundLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2433477a10fc5d31b9513c638f19ee85caed53fd` | ⚠️ Unaudited |
| SAVAXRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfc69c96385b1f193f6379772ab00de1ee6c7273` | ⚠️ Unaudited |
| SavaxRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd78718932070661a00ab40ea082f001b0c90f7cb` | ⚠️ Unaudited |
| SavaxRedeemOverdue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75e8f855c22213b676fc7dc07252e075414bd200` | ⚠️ Unaudited |
| SavaxSubmit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9217e7f9a6dc9e460208488f0ad92f6eac4d2b1a` | ⚠️ Unaudited |
| SavaxUnlock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a5ebe1e6db9ae132fe68bdb838718e7d54e35b3` | ⚠️ Unaudited |
| ShapellaUpgradeTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa818ff9ec93122bf9401ab4340c42de638cd600a` | ⚠️ Unaudited |
| SimpleStakingERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e4acca7a9989007cd74ae4ed1b096c000779dcc`; mantle `0x5e4acca7a9989007cd74ae4ed1b096c000779dcc` | ⚠️ Unaudited |
| SpectraWrappedtAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4c916ad137b97b03ab5f105cea77c5d5f98a2a09`; avalanche `0xad9ac791fca10f95248edfc953db15ba9e29f2f3` | ⚠️ Unaudited |
| StablePool | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-394259 | `0x832f8e068e92d56b94205ea605e5cdaa7cded1f0` | ⚠️ Unaudited |
| StakingRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8784e748f59ba711fb5643191ec3fadd50fb6df` | ⚠️ Unaudited |
| StakingRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfddf38947afb03c621c71b06c9c70bce73f12999` | ⚠️ Unaudited |
| Strategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394250 | `0x5ae0e44de96885702bd99a6914751c952d284938` | ⚠️ Unaudited |
| Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x98273a098e2bb7663be83b48ee2c0ac3ecc02455`; ethereum `0xbfdf0af6df48e645bd076802b95ddef0b1e02a9d` | ⚠️ Unaudited |
| Strategy | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-394257 | `0x568bf0d3d0ef982b8f4978bea05d287dd47a15bb` | ⚠️ Unaudited |
| Strategy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-394260 | `0x882fdc376c300f8689f281759ff74d17c2f62316` | ⚠️ Unaudited |
| StrategyExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x89f57d3617f6a9ff877fea34dd0688b2840ef50e`; avalanche `0xca8539b480f1bb97697f763a77d08fa733abbb51` | ⚠️ Unaudited |
| StrategyStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x97c03f52244e60bb18511cbf03f890d5886f1f47`; avalanche `0x4728aa3b08c22c1005633690712e5c6b1997c080` | ⚠️ Unaudited |
| TAsset | unknown | project_anchor | own_supporting | 1 | avalanche | unit-394268 | 2 deployments: avalanche `0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646`; avalanche `0xb6374448c68186e3138c994fce4437d26d486d3a` | ⚠️ Unaudited |
| TAvaxExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe24faee4c390758846cf6791349cc0eca56fff6b` | ⚠️ Unaudited |
| tETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x72cca9794018c10ce47af3fc8d47e167d0761e96`; ethereum `0xa1150cd4a014e06f5e0a6ec9453fe0208da5adab` | ⚠️ Unaudited |
| TEthExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd1ec6cdad93b3c6219ceda018ecaf8d655fa8d` | ⚠️ Unaudited |
| TEthRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x077c2122e96c7457d11fb9523f5745acb49fdc1e` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225dabffc7f862c99477381e971e8b1fdab467e` | ⚠️ Unaudited |
| TkMrsR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0a32bbef8f064969f21f7e02328fb577382018` | ⚠️ Unaudited |
| TreehouseAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xb7ce3cb5bc5c00cd2f9b39d9b0580f5355535709`; avalanche `0x6f5d00a263de6d40b4b2342996d2682e34f8a454` | ⚠️ Unaudited |
| TreehouseFastlane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x829525417cd78cba0f99a8736426fc299506c0d6`; avalanche `0x3d00a639183b07e35efef044ee6cc14e8598a01c` | ⚠️ Unaudited |
| TreehouseRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0618dbdb3be798346e6d9c08c3c84658f94ad09f` | ⚠️ Unaudited |
| TreehouseRedemptionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xcd63a29faff07130d3af89bb4f40778938aabb85`; avalanche `0x765f6dc8496ca7ef1e4a391be10185229aacf04b` | ⚠️ Unaudited |
| TreehouseRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae023d31d3590b7fd0919251a8c68dfc0c4d398` | ⚠️ Unaudited |
| ValidatorsExitBusOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e` | ⚠️ Unaudited |
| ValidatorsExitBusOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89ea51fdde660f67d1850e03c9c9862d33bc42c` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba12222222228d8ba445958a75a0704d566bf2c8` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-394256 | `0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed` | ⚠️ Unaudited |
| VaultPull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x313ca6136521d22a7ea763b3566ed0b53f5b3ab9`; avalanche `0x20df2d2ccbafbb07a5df452ac3f094747dc83055` | ⚠️ Unaudited |
| VaultRescuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af329d2c4ceaf45e1d8062c696b09ffaddb933a` | ⚠️ Unaudited |
| VaultSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xc780112305ed959ceeeb0de692e2407e4145fc3a`; avalanche `0xbb906a265f09caa02d878d0581543b554fb2b815` | ⚠️ Unaudited |
| VDWAVAXRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6406a2916f2a44a8d0dc722ae3c03621302cdcd8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf697535848b535900c76f70f1e36ec3985d27862` | ⚠️ Unaudited |
| WeETHExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ed8ce7668658271da0ddb350070ffea75595e4` | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9aa87e45e92bad84d5f8dd1bff34fb92637de9` | ⚠️ Unaudited |
| WithdrawalQueueERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x889edc2edab5f40e902b864ad4d7ade8e412f9b1`; ethereum `0xe42c659dc09109566720ea8b2de186c2be7d94d9` | ⚠️ Unaudited |
| WithdrawalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc52f17756c04bba7e377716d7062fc36d7f69fd` | ⚠️ Unaudited |
| WstETHExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce02cba4952cf75dc8c1baade27761141c6cd1e` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14a1a1646980c2b78eddd51b66ec220aefe6109` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x62c9e5e52351e02635f48072fa20c03bb650f787) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xad744e7b3ae782b2c6dd6c316332d60ac33d8db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3b23c0b4877261310c0001b5722f3f7f875d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94905e703fead7f0fd0eee355d267ee909784e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f998a5775cd85f33039a9b5c29b09097d211f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fa945425ed2e08acb932e000bcc2f21b21588a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14e420b2f9fd6ed9e75fedfc7398aeaf2ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcea9088c8a88a76ff74892c1457c17dfeef9c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe43f4606f55edfed0764a54401cd554c86af73c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8e4ee488363a032aa57abe2c0e8bfd6c66685b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394261 | `0x1620b7e5c9099c8bcbc326b55e0b8440eda9d30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394262 | `0x932f2a74c526b2856ef19839059a0aed9ae340b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394263 | `0xa120f5789f914766cb4b44b83b545925b443f642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394264 | `0xb2c5079c3a313c7386a444f6015673ee7a97762a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394265 | `0xb83d27f0f4133a7b0377a88089583131a903fdc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394255 | `0xd09acb80c1e8f2291862c4978a008791c9167003` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [One_Rate_To_Rule_Them_All.pdf](https://www.treehouse.finance/One_Rate_To_Rule_Them_All.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Fuzzland tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Fuzzland%20tETH%20Sep%20Audit%20Report%20vF.pdf) | Fuzzland | Audit | 2024-09 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 7 | high |
| [Sigma Prime tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | n/a | matched | 2 | 0 | 0 | 16 | n/a |
| [Sigma Prime tETH Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Mar%20Audit%20Report.pdf) | Sigma Prime | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Sigma Prime tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Sep%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | n/a | matched | 4 | 2 | 0 | 10 | n/a |
| [Trail of Bits tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | n/a | matched | 2 | 0 | 0 | 8 | n/a |
| [Trail of Bits tETH Oct Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Oct%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | matched | 4 | 2 | 0 | 9 | n/a |
| [WatchPug Merkl Claim Apr Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20Merkl%20Claim%20Apr%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [WatchPug TREE Token Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20TREE%20Token%20Mar%20Audit%20Report.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [WatchPug tAVAX Aug Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Aug%20Audit%20Report.pdf) | WatchPug | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | medium |
| [WatchPug tAVAX Benqi Strategy Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Benqi%20Strategy%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [WatchPug tAVAX Merkl Claim Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Merkl%20Claim%20Audit%20Report.pdf) | WatchPug | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WatchPug tAVAX Spectra Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Spectra%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WatchPug tETH Dec 2025 Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%202025%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [WatchPug tETH Dec Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [WatchPug tETH Dec Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [WatchPug tETH Feb Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [WatchPug tETH Feb Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [WatchPug tETH Timelock May Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Timelock%20May%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [WatchPug tHYPE May Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tHYPE%20May%20Audit%20Report.pdf) | WatchPug | Audit | 2026-05 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4607] One_Rate_To_Rule_Them_All.pdf — no match: The document is a book or whitepaper about the Treehouse Protocol, not a smart contract audit report. No contracts, source files, or audit date are mentioned.
- [11318] Fuzzland tETH Sep Audit Report vF.pdf — matched: Extracted contract names from findings and scope section. Audit date from executive summary: 'From Sept 20, 2024, to Sept 30, 2024'.
- [11319] Sigma Prime tETH Aug Audit Report vF.pdf — matched: No reason recorded
- [11320] Sigma Prime tETH Mar Audit Report.pdf — no match: No reason recorded
- [11321] Sigma Prime tETH Sep Audit Report vF.pdf — matched: No reason recorded
- [11322] Trail of Bits tETH Aug Audit Report vF.pdf — matched: No reason recorded
- [11323] Trail of Bits tETH Oct Audit Report vF.pdf — matched: No reason recorded
- [11324] WatchPug Merkl Claim Apr Audit Report vF2.pdf — no match: Audit report for Treehouse Merkl Claim contracts. Scope includes MerklClaim and MerklToggleOperator, with ActionBase as a base contract. Audit date is Apr 23, 2025.
- [11325] WatchPug TREE Token Mar Audit Report.pdf — no match: Only one contract explicitly in scope: TreehouseAirdropWithBonusPool. The report also mentions NftClaim.sol in a gas finding, but it is not listed in the scope section.
- [11326] WatchPug tAVAX Aug Audit Report.pdf — no match: No explicit scope section found; contracts extracted from findings and file paths in the report.
- [11327] WatchPug tAVAX Benqi Strategy Audit Report.pdf — no match: Extracted contract names from the audit report's scope and findings sections. The report covers Treehouse tAVAX protocol with Benqi strategy. Audit date found on cover page and delivery date.
- [11328] WatchPug tAVAX Merkl Claim Audit Report.pdf — no match: The audit report covers the MerklClaim contract and the IDistributor interface. The audit date is explicitly stated as Sep 18, 2025.
- [11329] WatchPug tAVAX Spectra Audit Report.pdf — no match: Audit report for Treehouse project, focusing on SpectraWrappedtAVAX contract and its deployment script. No explicit scope section; contracts identified from findings and code references.
- [11330] WatchPug tETH Dec 2025 Audit Report vF.pdf — no match: No reason recorded
- [11331] WatchPug tETH Dec Audit Report vF.pdf — no match: No reason recorded
- [11332] WatchPug tETH Dec Audit Report vF2.pdf — no match: No reason recorded
- [11333] WatchPug tETH Feb Audit Report vF.pdf — no match: No reason recorded
- [11334] WatchPug tETH Feb Audit Report vF2.pdf — no match: No explicit scope section found; contracts extracted from findings sections where they are directly audited. The report date is from the cover page.
- [11335] WatchPug tETH Timelock May Audit Report vF2.pdf — no match: Audit report covers VaultRescuer contract and related interfaces. The codebase URL points to tETH-protocol repo. The audit date is explicitly stated as May 23, 2025.
- [11336] WatchPug tHYPE May Audit Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fuzzland tETH Sep Audit Report vF.pdf | ChainlinkRateProvider | unmatched — not counted | — | mentioned in finding [Low] Chainlink’s latestRoundData Might Return Stale or Incorrect Results | no |
| Fuzzland tETH Sep Audit Report vF.pdf | LidoStake | unmatched — not counted | — | mentioned in finding [Low] Missing Derivative Limit and Deposit Availability Checks Will Revert The Whole Stake | no |
| Fuzzland tETH Sep Audit Report vF.pdf | LidoWrap | unmatched — not counted | — | mentioned in finding [Low] Missing Derivative Limit and Deposit Availability Checks Will Revert The Whole Stake | no |
| Fuzzland tETH Sep Audit Report vF.pdf | TAsset | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646` — deployed 2025-08-25 13:43:49+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 21d from audit; next candidate 329d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fuzzland tETH Sep Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | mentioned in finding [Low] Missing Strategy Existence Check In isActionWhitelisted | no |
| Fuzzland tETH Sep Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | mentioned in finding [Low] Lock When Redeeming Funds | no |
| Fuzzland tETH Sep Audit Report vF.pdf | ActionRegistry | unmatched — not counted | — | mentioned in finding [Info] Contract Address May Be Set to Zero Address | no |
| Fuzzland tETH Sep Audit Report vF.pdf | ActionExecutor | own proxy deployment | Strategy (proxy) (alternative) `0xb27d688ac06a441c005657971b11521e80cdce98` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (selected) `0x60d2d94acb969ca54e781007ee89f04c1a2e5943` — deployed 2024-09-24 10:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-24 was 6d from audit; next candidate 158d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fuzzland tETH Sep Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | mentioned in finding [Info] StrategyExecutor::executeOnStrategy Does Not Check Lengths Of Input Arrays | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | ActionRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | Blacklistable | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | Converter | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | LidoAPR | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | MainnetAaveV3Addresses | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | MainnetLidoAddresses | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | NavHelper | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | PnlAccountingHelper | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | RateProviderRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | Rescuable | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TokenUtils | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TreehouseAccounting | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Aug Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d155760ae96050439ad24ae98a96c765d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Aug Audit Report vF.pdf | iETH | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | tETH | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | NavAaveV3 | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | NavLens | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | NavRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | PnlAccounting | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | ActionRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | Blacklistable | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | IAU | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | NavHelper | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | ProtocolPhaseOne | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | ProtocolPhaseTwo | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | Strategy | own proxy deployment | Strategy (alternative) `0x5ae0e44de96885702bd99a6914751c952d284938` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x568bf0d3d0ef982b8f4978bea05d287dd47a15bb` — deployed 2025-08-25 14:24:39+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (alternative) `0xb27d688ac06a441c005657971b11521e80cdce98` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x882fdc376c300f8689f281759ff74d17c2f62316` — deployed 2025-10-22 13:09:38+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (selected) `0x60d2d94acb969ca54e781007ee89f04c1a2e5943` — deployed 2024-09-24 10:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-24 was 23d from audit; next candidate 187d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | TAsset | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646` — deployed 2025-08-25 13:43:49+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 8d from audit; next candidate 358d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 8d from audit; next candidate 358d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d155760ae96050439ad24ae98a96c765d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 8d from audit; next candidate 358d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | VaultPull | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | tETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | ChainlinkRateProvider | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | Converter | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | MainnetLidoAddresses | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | Rescuable | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Aug Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d155760ae96050439ad24ae98a96c765d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Aug Audit Report vF.pdf | iETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | tETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | ChainlinkRateProvider | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | InternalAccountingUnit | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | IstETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | PnlAccountingHelper | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | Rescuable | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | Strategy | own proxy deployment | Strategy (alternative) `0x5ae0e44de96885702bd99a6914751c952d284938` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x568bf0d3d0ef982b8f4978bea05d287dd47a15bb` — deployed 2025-08-25 14:24:39+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (alternative) `0xb27d688ac06a441c005657971b11521e80cdce98` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x882fdc376c300f8689f281759ff74d17c2f62316` — deployed 2025-10-22 13:09:38+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (selected) `0x60d2d94acb969ca54e781007ee89f04c1a2e5943` — deployed 2024-09-24 10:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-24 was 7d from audit; next candidate 157d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | TAsset | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646` — deployed 2025-08-25 13:43:49+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 22d from audit; next candidate 328d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | TreeHouseAccounting | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 22d from audit; next candidate 328d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d155760ae96050439ad24ae98a96c765d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 22d from audit; next candidate 328d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | WstETHRateProvider | unmatched — not counted | — | — | no |
| WatchPug Merkl Claim Apr Audit Report vF2.pdf | MerklClaim | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| WatchPug Merkl Claim Apr Audit Report vF2.pdf | MerklToggleOperator | unmatched — not counted | — | Referenced in finding WP-N4. | no |
| WatchPug Merkl Claim Apr Audit Report vF2.pdf | ActionBase | unmatched — not counted | — | MerklClaim inherits from ActionBase, mentioned in contract definition. | no |
| WatchPug TREE Token Mar Audit Report.pdf | TreehouseAirdropWithBonusPool | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Aug Audit Report.pdf | SavaxUnlock | unmatched — not counted | — | mentioned in finding WP-L2 with file path | no |
| WatchPug tAVAX Aug Audit Report.pdf | NavErc20 | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| WatchPug tAVAX Aug Audit Report.pdf | NavErc20WithDebt | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| WatchPug tAVAX Aug Audit Report.pdf | ASAVAXRateProvider | unmatched — not counted | — | mentioned in finding WP-N4 with file path | no |
| WatchPug tAVAX Aug Audit Report.pdf | TAvaxExchangeRateProvider | unmatched — not counted | — | mentioned in finding WP-L5 | no |
| WatchPug tAVAX Aug Audit Report.pdf | ChainlinkRateProvider | unmatched — not counted | — | mentioned in finding WP-M6 with file path | no |
| WatchPug tAVAX Aug Audit Report.pdf | IRateProvider | unmatched — not counted | — | imported in ChainlinkRateProvider and ASAVAXRateProvider | no |
| WatchPug tAVAX Aug Audit Report.pdf | ISAVAX | unmatched — not counted | — | imported in ASAVAXRateProvider | no |
| WatchPug tAVAX Aug Audit Report.pdf | RateProviderRegistry | unmatched — not counted | — | referenced in NavErc20.nav() | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavRegistry | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavErc20 | unmatched — not counted | — | mentioned in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavBenqi | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavUnSavax | unmatched — not counted | — | mentioned in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | BenqiClaimReward | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | BenqiWithdraw | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Merkl Claim Audit Report.pdf | MerklClaim | unmatched — not counted | — | Listed in scope as the main contract audited; referenced in findings. | no |
| WatchPug tAVAX Merkl Claim Audit Report.pdf | IDistributor | unmatched — not counted | — | Listed in scope as an interface; referenced in findings. | no |
| WatchPug tAVAX Spectra Audit Report.pdf | SpectraWrappedtAVAX | unmatched — not counted | — | listed in findings and code snippets | no |
| WatchPug tAVAX Spectra Audit Report.pdf | DeploySpectraWrappedtAVAX | unmatched — not counted | — | listed in findings and code snippets | no |
| WatchPug tETH Dec 2025 Audit Report vF.pdf | GearboxDepositV31 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec 2025 Audit Report vF.pdf | GearboxRedeemV31 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec 2025 Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | FastlaneFee | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | IERC4626 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | IFastlaneFee | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | IInternalAccountingUnit | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | ITreehouseFastlane | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | ITreehouseRedemption | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | RedemptionController | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | TreehouseFastlane | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | TreehouseRedemptionV2 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IERC20 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IERC4626 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IInternalAccountingUnit | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IwstETH | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | RedemptionController | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | TreehouseRedemptionV2 | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | NavLens | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | NavRegistry | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | PnlAccounting | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | TreehouseAccounting | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF2.pdf | NavAaveV3 | unmatched — not counted | — | mentioned in findings WP-M1 and WP-M2 as audited contract | no |
| WatchPug tETH Feb Audit Report vF2.pdf | AaveV3Withdraw | unmatched — not counted | — | mentioned in finding WP-L3 as audited contract | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | VaultRescuer | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | IRescuable | unmatched — not counted | — | interface mentioned in findings | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | NavLens | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | INavErc20 | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | IVault | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | INavRegistry | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | ITreehouseAccounting | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | IERC20 | unmatched — not counted | — | standard interface used in VaultRescuer | no |
| WatchPug tHYPE May Audit Report.pdf | ActionBase | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | IStakingManager | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | IValidatorManager | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | KinetiqHelper | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | KinetiqRedelegate | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | Router | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | StakingFacet | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | StakingManager | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | StakingManagerStorage | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | TreehouseRouter | own contract | TreehouseRouter (selected) `0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (alternative) `0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-08-25 was 249d from audit; next candidate 599d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x65c2d90b33f7bf693a7ef54662435f2cf3251c21` | ComposableStablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8113f001ea456759264317007220cbc939ca8435` | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x832f8e068e92d56b94205ea605e5cdaa7cded1f0` | StablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ae0e44de96885702bd99a6914751c952d284938` | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x568bf0d3d0ef982b8f4978bea05d287dd47a15bb` | Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x882fdc376c300f8689f281759ff74d17c2f62316` | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646` | TAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 98 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 120 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1, medium=2
- Match method counts: temporal_name=15

Zero-match audit list:

- [4607] One_Rate_To_Rule_Them_All.pdf
- [11320] Sigma Prime tETH Mar Audit Report.pdf
- [11324] WatchPug Merkl Claim Apr Audit Report vF2.pdf
- [11325] WatchPug TREE Token Mar Audit Report.pdf
- [11326] WatchPug tAVAX Aug Audit Report.pdf
- [11327] WatchPug tAVAX Benqi Strategy Audit Report.pdf
- [11328] WatchPug tAVAX Merkl Claim Audit Report.pdf
- [11329] WatchPug tAVAX Spectra Audit Report.pdf
- [11330] WatchPug tETH Dec 2025 Audit Report vF.pdf
- [11331] WatchPug tETH Dec Audit Report vF.pdf
- [11332] WatchPug tETH Dec Audit Report vF2.pdf
- [11333] WatchPug tETH Feb Audit Report vF.pdf
- [11334] WatchPug tETH Feb Audit Report vF2.pdf
- [11335] WatchPug tETH Timelock May Audit Report vF2.pdf

Fork inheritance lineage and inherited audits are included when available.
