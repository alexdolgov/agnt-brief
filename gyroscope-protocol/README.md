# Agentic Audit Brief: Gyroscope Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Gyroscope Protocol (`gyroscope-protocol`)
- Website: [https://app.gyro.finance/](https://app.gyro.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic
- Contract surface: 304 unique implementations (531 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $353,872.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Gyroscope Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic. Structural roles: 49 unclassified, 8 supporting, 4 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: unclassified (49), supporting (8), core (4)
- Contract kinds: contract (53), abstract (8)
- Detected standards: erc1967proxy (4), accesscontrol (3), erc165 (3), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x70c4430f9d98b4184a4ef3e44ce10c320a8b7383`, chain 1)
- UnnamedContract (`0xc63529297de076eb15fcbe873ae9136e446cfbb9`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (0 live, 61 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/48 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 76 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 226 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Confirmed-live implementations: 2 of 304 unique; 302 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/195
- Verified + Unaudited implementations: 195
- Verified by bytecode match: 0
- Unverified implementations: 109
- Unique implementations: 304
- Raw deployments: 531
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (195)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionTierConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f51c89c368ccaa518b16d2169ea6bab911bfce1`; ethereum `0x8342b910815b0127c98e7717d4276c1d393478b6`; ethereum `0xe9f7b804d535ad9cf07aa10f48fe9fcaf5fda965` | ⚠️ Unaudited |
| AdaptiveRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc23542cd402fe4f7c7539fc0929b010992fade44` | ⚠️ Unaudited |
| AggregateLPVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528` | ⚠️ Unaudited |
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9d01ca61b9c181da1051bfdd28e1097e920ab14` | ⚠️ Unaudited |
| AggregatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0x84813aa3e079a665c0b80f944427ee83cba63617`; sonic `0x7943b40c37233fe5daf9b64dd09c339eb0bb8565` | ⚠️ Unaudited |
| AssetRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241688 | 2 deployments: ethereum `0x66a7aa37ea714e0b8dd553f375104ea7d160b0b2`; ethereum `0x94c34174f484cc0c80ea2d3670a50ec9325c9126` | ⚠️ Unaudited |
| AssociatedDAOVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2321e23b3060e160195e138b62f8498546b0247` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x5cf4928a3205728bd12830e1840f7db85c62a4b9`; base `0x809b79b53f18e9bc08a961ed4678b901ac93213a` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cad2ea22bfa7f4c14aae92e47f510cd5c509bc7` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x36cac20dd805d128c1a6dd16eea845c574b5a17c`; base `0x9129e834e15ea19b6069e8f08a8ecfc13686b8dc` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa69e0ccf150a29369d8bbc0b3f510849db7e8eee` | ⚠️ Unaudited |
| BAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dbad78818d4c8958eff2d5b95b28385a22113cd` | ⚠️ Unaudited |
| BalancerPoolVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241687 | `0x29609b3fd68c647c3a619e69de386f2f02ee26e6` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: optimism `0x96484f2abf5e58b15176dbf1a799627b53f13b6d`; sonic `0x1498437067d7bddc4c9427964f073ee1ab4f50fc`; sonic `0x965c2fda059bf88aaadc30cd00728faf4b0cef57`; base `0x82416ce6ea7dd4923d4a3ed70a79b4a432a382c4`; base `0xaf779e58dafb4307b998c7b3c9d3f788dfc80632`; base `0xdf9b5b00ef9bca66e9902bd813db14e4343be025` | ⚠️ Unaudited |
| BatchRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad89051bed8d96f045e8912ae1672c6c0bf8a85e` | ⚠️ Unaudited |
| BatchRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x7761659f9e9834ad367e4d25e0306ba7a4968daf` | ⚠️ Unaudited |
| BatchVaultPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241660 | `0x46412cdec90b266629bf05188185e9fd109ec881` | ⚠️ Unaudited |
| Beets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d0e0814e62d80056181f5cd932274405966e4f0` | ⚠️ Unaudited |
| BeetsNftDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x685dfbe5e38ca7eda140603ec5902be888aad88e`; sonic `0x91befa3f6fb2d08c3b4b359793294dc930077ea2`; sonic `0xfaa8d74aa92851c52b09cb7d6dece6cf2c14a6f5` | ⚠️ Unaudited |
| BeetsOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e5fe95fb90ac0530f581c617272cd0864626795` | ⚠️ Unaudited |
| BeetsShadowArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c5e12950d0a32d3fbc95504ea1b232752e28010` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6817149cb753bf529565b4d023d7507ed2ff4bc0` | ⚠️ Unaudited |
| BoundedERC20WithEMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c`; ethereum `0xe4c243ecc7a0fba69006855e0a02232e02efb1e4` | ⚠️ Unaudited |
| BufferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x311334883921fb1b813826e585df1c2be4358615`; sonic `0x532da919d3eb5606b5867a6f505969c57f3a721b` | ⚠️ Unaudited |
| CheckedPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241658 | `0x2a18f596283f9082fd88f82556d5f78e3c482411` | ⚠️ Unaudited |
| CheckedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xbdcfe6e4d1ca68b18b8d65f999746a75c1a471b2`; polygon `0x64f84aac92320bba0bfa7af76a2da1d89ec75fc3`; polygon `0x70772f847ed577a7ed8d764ea602a96cdd20fcab`; polygon `0x8e9a7c0f15bb4d6d997d9e0bc29ad90263d5cf49`; polygon `0xba116c6f9e631413847747df3cf6dc5cdd1455c7`; polygon `0xfd83a2eb966422d3e7f43fb42e8ac93cc3377dcc` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: sonic `0xf00c004d5453bbd71c2267b015516b80add7ce76`; base `0x59562f93c447656f6e4799fc1fc7c3d977c3324f`; base `0x9f7e65887413a8497b87ba2058ce6e4ef4b37013` | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0xa523f47a933d5020b23629ddf689695aa94612dc`; sonic `0xe6338d702941998102fc4d7550a36ea9e833bd7c`; base `0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95`; base `0xb1a4fe1c6d25a0ddab47431a92a723dd71d9021f` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xe42ffa682a26ef8f25891db4882932711d42e467`; base `0xef454a7b3f965d3f6723e462405246f8cd865425` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb`; optimism `0xc86ef81e57492be65bfca9b0ed53dcbafdbe6100`; optimism `0xea692068ccf15b9560f9a694162b3f0a0fb8a687` | ⚠️ Unaudited |
| CombinedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2f927cb65fd23dac5225fcd024a2c097e37f98f` | ⚠️ Unaudited |
| CombinedRateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc580ce8e689a49d3ce58fad4c52786c39a923e6` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x043a2dad730d585c44fb79d2614f295d2d625412`; optimism `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7`; optimism `0x85a80afee867adf27b50bdb7b76da70f1e853062`; sonic `0x993767e29726ddb7f5e8a751faf54d4b83f3fc62`; base `0x8df317a729fcaa260306d7de28888932cb579b88` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xc9b36096f5201ea332db35d6d195774ea0d5988f`; sonic `0xcf21664262774ebb2c2b559e13b47f6ca10f3e65` | ⚠️ Unaudited |
| ConnectorArbBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x284265d0b95bedbfc9acade0414ea1a1ba2dc9d9`; arbitrum `0xc6f195eb0eb72bd8a3661186000d5130652fc29c` | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5` | ⚠️ Unaudited |
| ConstantRateProvider | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241662 | `0x5413e8e572759787fbece0a8e8d65eb5188556d8` | ⚠️ Unaudited |
| ConstantRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 17 deployments: ethereum `0xbb08c8532adb8661ee1400d59f4fc04284c46ce2`; ethereum `0xd43f5a722e8e7355d790adda4642f392dfb820a1`; sonic `0x180ec5fe23a2331b8180775c712eab5f7a138c46`; sonic `0x526c663a66cd6bc7f371ce7442d07b058e18a8d2`; sonic `0x635d8b3870ade127eb7ffc21753883f8f30e1051`; sonic `0x9969ce7e4414f89c69ffb0e3be739fee36a60a0a`; sonic `0xc5ef57cd29dd93ab8c0bc2ac00c03e52b0aa26de`; sonic `0xec722f8e430273eac92017a0d7d7b272d043f747`; sonic `0xecdfaa456a01c9804fc8d11955cf4b54e0ea2bd7`; base `0x3e89cc86307af44a77eb29d0c4163d515d348313`; base `0x3fa516ceb5d068b60fdc0c68a3b793fc43b88f15`; base `0x5879839cf7d0a314160fd7c2236e89ba9b8eb5cc`; base `0x5e10c2a55fb6e4c14c50c7f6b82bb28a813a4748`; base `0xa42cc94b1d87e557dd73ccde28f1b621e24e67ef`; arbitrum `0x3a216b01db971bf28d171c9da44cc8c89867697f`; arbitrum `0x72f6da3b4bd0ab7028f52339ee3b1f94fffe2dd0`; arbitrum `0xdcd8db2a23e21a4b9fa3d984d5a31fb554c70832` | ⚠️ Unaudited |
| ConstantRateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x511052c991d8955653093445034f061597ec6554`; sonic `0x545bf8cf1ee5f9e03765eb2930568470ba049a7a`; sonic `0x7afc1c39e6c7286bedc94644242ecb17ef71c75d`; sonic `0x8267f17c51b37f312143cbf52784433108fb9f43`; sonic `0xb32d49effff703f7fd9c575b0010f296673af497`; sonic `0xd64d82dd22af00e8507b4fd28cc1fb7155807f89`; sonic `0xdc831599565f3e68b9358b0f3db45f6be4f0b26e` | ⚠️ Unaudited |
| CouncillorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1fb7317359d88076a24cdb97d84cec796baba876`; ethereum `0x79e65fc4ec3aa76e99c3e8971cbbd8c431dd35dc`; ethereum `0x917156abfba776b1ec30f20d5febb39ce37d1e18` | ⚠️ Unaudited |
| CouncillorNFTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x339b896bafd5d3811241d607d0cd33a1c2f09404`; ethereum `0x360ce1b138eaef64ce56a31076c29ce4d14719ee` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf4743d026f3d07af3747bb7d05bed06d177241d7` | ⚠️ Unaudited |
| CTokenRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee79eb3f37b0ea4544df2a0b9e228b6fcd8c718` | ⚠️ Unaudited |
| DistributionManager | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241661 | `0x4d9c765d7431ff354d208cf9a37e7186180e6586` | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc00ff743b73346c9a4c40509e0550ffc18e5426d` | ⚠️ Unaudited |
| EmergencyRecovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d3ec9ff6cb962246072fa9d18153fdf6f1215d` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc`; optimism `0x7c1b7a97bfacd39975de53e989a16c7bc4c78275` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x161f4014c27773840ccb4ec1957113e6dd028846` | ⚠️ Unaudited |
| ERC4626RateProviderFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0xfc541f8d8c5e907e236c8931f0df9f58e0c259ec`; optimism `0x02a569eea6f85736e2d63c59e60d27d075e75c33`; gnosis `0x15e86be6084c6a5a8c17732d398dfbc2ec574cec`; sonic `0xc9a0e686c02affb176e06f0b344cab182250e487`; base `0xefd3af73d3359014f3b864d37ac672a6d3d7ff1a`; arbitrum `0xe548a29631f9e49830be8edc22d407b2d2915f31` | ⚠️ Unaudited |
| EventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe0f1dfae777bb7d44d3cb7d8fcdce6731165211e` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd` | ⚠️ Unaudited |
| FoundingFrog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e56f19235ff2a14c76332877a35d6af5bde07ec` | ⚠️ Unaudited |
| FoundingMemberVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0400d6aac2545d2e4b547c3a18ebbef5fb9f157c`; ethereum `0x5241b3644b5c616dd94dcbd61d89c3aba64460bb`; ethereum `0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754`; ethereum `0xaf55785e3f020d8f335ad0b04872b46fb46274a2`; ethereum `0xc87d5733c8823e0480b613fdb331fc4e5e1bcac2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x53b8b175045816d447916b81ac12ba78fa2a6298`; ethereum `0xb2d2dbaac71d9c0fdf75138d4a8f5dd05a2e2916` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241684 | 2 deployments: ethereum `0x77f2aeb44088cdb35f6d3070dc072c56ff5e0014`; ethereum `0x8e17873fe6c257fcd4b32777658914b4b1a94ff2` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc951409bb50088a98d6a12b403eebae3ad947f22` | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei | unit-241678 | `0xb438ea246cefa9241305ad62e5d307d014baf7fa` | ⚠️ Unaudited |
| FrogMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02f11277cfa84c696370c097c51848c6a6523b3` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa7d524046ef89de9f8e4f2d7b029f66ccb738d48` | ⚠️ Unaudited |
| GearboxLinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dd32684176638d977883448a4c914311c07bd62` | ⚠️ Unaudited |
| GenericVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | ethereum | unit-241685 (3 proxies) | 4 deployments: ethereum `0x80ecf3d96446ab3abaf3d037d1b352bb41295176`; ethereum `0x830913c917b07311eae53687be27c1c0b589ab31`; ethereum `0x88f3b40e45213131860f81b32ca12a3d54821d65`; ethereum `0x98962bec8bf0363d00d97d9049b40079356a4953` | ⚠️ Unaudited |
| GenericVaultPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241668 | `0x89b93862bebba6c98e6f158ef9fada004fde854a` | ⚠️ Unaudited |
| GnosisSafe | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241691 | `0xa8d612739354a4106072a91aa4ca1458e1b5f9e9` | ⚠️ Unaudited |
| GovernanceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x587b602f38e18c1e2626f19ff61c70e935a684a7`; ethereum `0xb05bcedb54814e0b3893cbf5b2c27d90164e206e`; ethereum `0xb2fbd0087e5e2fe1f752ab0a8ca67bebd02ae755`; ethereum `0xfc68799da8feef47d1afb30960e6fef06cbeba17` | ⚠️ Unaudited |
| GovernanceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8`; arbitrum `0x32acb44fc929339b9f16f0449525cc590d2a23f3` | ⚠️ Unaudited |
| GovernanceRoleManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x78898a5cdf6d1eb009277c744cb2241eacb3a4b9` | ⚠️ Unaudited |
| GydDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241670 | `0xc1024e475e357375e16c7f86fe46cbc6ffb0561d` | ⚠️ Unaudited |
| GydRecovery | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241659 | `0x2a803ce12be775802a7c6f50797e53e9c3fd4025` | ⚠️ Unaudited |
| GydToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241675 | `0xfa08eb3a781532f47b1dd811a6ca326842ea0cb5` | ⚠️ Unaudited |
| GydTokenPaused | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241683 | `0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x579653927bf509b361f6e3813f5d4b95331d98c9`; ethereum `0x99fafebb9471963d7f480c1f30257439b59eb1af` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: optimism `0x4b979ed48f982ba0baa946cb69c1083eb799729c`; optimism `0x99364f84d1c68d87aead0ce92eb47409a0c52c58`; polygon `0x3841ee752ae02b3e4260d064621902de1f1eac46`; polygon `0x3b55b649a5f2bc4ff39bbd2e345743e3a853c7a4`; polygon `0x968348c6135c25e7160ad0671c8c9ca2ed2bb982`; sonic `0xe61fce9f91ad1cb58f2d610cd32e54f7235884a7` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x5d8545a7330245150be0ce88f8afb0edc41dfc34` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7a36527a02d96693b0af2b70421f952816a4a088`; arbitrum `0x8342b910815b0127c98e7717d4276c1d393478b6` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x90f08b3705208e41dbeeb37a42fb628dd483adda`; polygon `0x977e8a3917dffe582afbb2ee5a6be3e9fa043079` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e`; sonic `0x0e355824f66364bb721cf1c728654f2bd10a627e` | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: polygon `0x69485227e77fd28b740f7ce73c51cf0bd4f04cfb`; polygon `0xe0d2c78e8b5c94d4dadb2d77d04020e2fc5f28bd`; sei `0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-241692 | 2 deployments: optimism `0x32acb44fc929339b9f16f0449525cc590d2a23f3`; optimism `0xe02f11277cfa84c696370c097c51848c6a6523b3` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-241695 | 2 deployments: gnosis `0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8`; gnosis `0xe02f11277cfa84c696370c097c51848c6a6523b3` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241698 | `0xfdc2e9e03f515804744a40d0f8d25c16e93fbe67` | ⚠️ Unaudited |
| GyroConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: polygon `0xf5d5441384283e1accc58c9f4d5e058d2845f18c`; sonic `0x2426d2133effc36c1579c868e569027a7daff07f` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-241699 | 2 deployments: sonic `0x3f1f8541500c4bcc26d47298ebf34e3aafb068da`; sonic `0xeecee50a4333c8b8a8f76c81b6092477ae8ea81b` | ⚠️ Unaudited |
| GyroConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0xa23112d44b713cabb142a6b29de7bcaaccbda069`; sonic `0xab7d2e7d2140858048ba44bdd62f4c92a3a70cce`; sonic `0xde62378b913337667c7a238caf695b146421e23d` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sei | unit-241696 | 2 deployments: sei `0x194941b55555afd751285b8b792c7538152deadd`; sei `0x788fb3a1428fd851c2204dc6e30d775cb45262c0` | ⚠️ Unaudited |
| GyroConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241703 | 2 deployments: base `0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6`; base `0x9b683ca24b0e013512e2566b68704dbe9677413c` | ⚠️ Unaudited |
| GyroConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9b683ca24b0e013512e2566b68704dbe9677413c`; arbitrum `0xefde1c764df6522a068b38106563de166ac97f58` | ⚠️ Unaudited |
| GyroECLPMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 10 deployments: optimism `0x4e56f19235ff2a14c76332877a35d6af5bde07ec`; gnosis `0x9b683ca24b0e013512e2566b68704dbe9677413c`; polygon `0x10aba87fed017734349e3ff31c01dd76bb3b5d63`; polygon `0x2ec9faa1ed444b52778b559b69e27f502564a530`; polygon `0xbe1a07f3979e15e60d739a2b153680a6df0c4350`; sonic `0xfa45ac4009f4f0391298dba18f0ebb3884947be3`; sei `0x086602c022a4362d48dce1596cd1b7ad6fb38701`; base `0x721325c9cbb8c2636db50075eb062b445c951e5f`; arbitrum `0x41e9ac0bfed353c2de21a980da0ebb8a464d946a`; arbitrum `0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd` | ⚠️ Unaudited |
| GyroECLPPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d93b853849b9884e2bb413444ec23eb5366ee91` | ⚠️ Unaudited |
| GyroECLPPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241676 | `0xfbfad5fa9e99081da6461f36f229b5cc88a64c63` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: ethereum `0xa87217d855edad15d63255db176b810b0325bda2`; optimism `0x22625eedd92c81a219a83e1dc48f88d54786b017`; optimism `0x53eff5068a1a3b39a9157da6ef5a18d555c479ef`; optimism `0xefde1c764df6522a068b38106563de166ac97f58`; polygon `0x949af2fc2a04761f2a0a921507ecee91a1f9d02f`; sonic `0xf023731dd8758d7c869af10005e6380cb57775a9`; sei `0x66d89dbe4f8c9765bd9d83abc0a3eed0c66c0c93`; base `0x5f6848976c2914403b425f18b589a65772f082e3`; arbitrum `0x721325c9cbb8c2636db50075eb062b445c951e5f` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-241693 | 2 deployments: optimism `0x9b683ca24b0e013512e2566b68704dbe9677413c`; optimism `0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | gnosis | unit-241694 | 2 deployments: gnosis `0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89`; gnosis `0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-241697 | `0x1a79a24db0f73e9087205287761fc9c5c305926b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4c818c579431052e92b89434e00ae729d8addf17`; polygon `0xd4204551bc5397455f8897745d50ac4f6bee0ef6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4a1d66cb3f33008657d100c38e4fa158aa0defec`; sonic `0xda598c87a27cea5a7de875d7d472e99b5794fb8b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | sonic | unit-241700 | 2 deployments: sonic `0x5364296d19d453d73f84a94e78681a430e620c5f`; sonic `0xe22c6ddc731a9fd55b3ed224e7b58ad669b38739` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x765505f7fef6dab854a75162801048c2ba178c6b`; sonic `0xf804356137a460bec75c7daf70244029629c4491` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-241704 | 2 deployments: base `0x15e86be6084c6a5a8c17732d398dfbc2ec574cec`; base `0xdca5f1f0d7994a32bc511e7dba0259946653eaf6` | ⚠️ Unaudited |
| GyroECLPPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241702 | 2 deployments: arbitrum `0xdca5f1f0d7994a32bc511e7dba0259946653eaf6`; arbitrum `0xde0e16c5e234339ac3becf8c26be91be3cb9ec2e` | ⚠️ Unaudited |
| GyroL2Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xd0c53f30e3990fe8c4b8c31c4b6ca0e9dd990ba3` | ⚠️ Unaudited |
| GyroThreePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe59910c7725e15c28ba48bbbb995e7396536d981` | ⚠️ Unaudited |
| GyroTokenPaused | token | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7cd75be2af9bb0279f2445f08ec7590643218d23` | ⚠️ Unaudited |
| GyroTwoPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x333fadaf093cccc04d83ac19f1b6a6f2443ed028` | ⚠️ Unaudited |
| L2GydDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-241679 | `0x4dfdad359bd4c154dd307350582c4bff636ba299` | ⚠️ Unaudited |
| L2Gyfi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c` | ⚠️ Unaudited |
| LBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0xc1a64500e035d9159c8826e982dfb802003227f0`; sonic `0x60e9feb41b409ded3dde9c5025e10fb5f4f8b5d9` | ⚠️ Unaudited |
| LegendsOfMaBeets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x5ae2ce196f039a968997528adcdcb0c69cd6fe37`; sonic `0x6dab80bca8f4a50ebb20d6246347214f39407885`; sonic `0x82adf9f82facf80fac75d4197b058a8c4252bd81`; sonic `0xefd42bd332bd8d2b68d83ab6acc833fae0f66fef` | ⚠️ Unaudited |
| LevelNftDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x113cf97f53297b9a14baaba5733ee37040106d71` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4476ffcb74a793092544ab29f45286cb1abfa007`; ethereum `0x534aca46beac55c013ddd48a1b6f7ce5e8d5f95b` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48a64b352989feb0e98843bd0415c94fc8023d2b`; ethereum `0xa3979e46d1791a4f947641ed0e058025534a3008` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x991aebbde29bfd8455c2ab6b1cd51dd9ab70a336`; ethereum `0xdb5494f1ec62a50595c0101ab124e9c706eff57a` | ⚠️ Unaudited |
| LockedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb6dc4f06867274539ecd06e244349f0a75410f9e`; ethereum `0xe1c7ad5722aa5826a2dd95a9710a8fbbe644123b` | ⚠️ Unaudited |
| LockedVaultWithThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b13dd24977a13e9857f36eb405db11d01ac7d1` | ⚠️ Unaudited |
| LockedVaultWithThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x695225a1e074ffbe8ffe42364e77857df9b6bc61`; ethereum `0xb94c4ff4d5d18fa5a33bf1445c3790326d8bc1f6` | ⚠️ Unaudited |
| MaBeetsBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x496b562c9fe6e86d7c169a8e7ed8947ecba2f7b4` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xf24917fb88261a37cc57f686ebc831a5c0b9fd39`; base `0xb19382073c7a0addbb56ac6af1808fa49e377b75` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d2248f194755dca9a1887099394f39476d28c9a` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288`; base `0x9a62c91626d39d0216b3959112f9d4678e20134d` | ⚠️ Unaudited |
| MevCaptureHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3630d26e51c03026f4f063d69d65f8e234eeaf5b` | ⚠️ Unaudited |
| MockERC4626Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4638ab64022927c9bd5947607459d13f57f1551c` | ⚠️ Unaudited |
| MockGearboxDieselToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb521dd5c8e13fe202626cac98873fea2b7760ce4` | ⚠️ Unaudited |
| MockGearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x698caed853be9cea96c268f565e2b61d3b2bcda4` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3881627b8deebccf9c23b291430a549fc0be5f7` | ⚠️ Unaudited |
| Motherboard | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241689 | 2 deployments: ethereum `0x8de76bf863e0a571be7165d9c85a1116c0fff393`; ethereum `0xbaf6a0be2dca3350d3558783740dd8d540a6cc95` | ⚠️ Unaudited |
| MultiownerProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71260fce6c16fb7b3481bafb64377c2aadc4f961` | ⚠️ Unaudited |
| NftDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5`; sonic `0xe36d5d493c0575b3153cbe3c92fa75972a598b9c` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c6052254551eae3ecac77b01dfcf1025418828f` | ⚠️ Unaudited |
| NullVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68`; base `0x475d18169be8a89357a9ee3ab00ca386d20fa229` | ⚠️ Unaudited |
| OneSidedECLPJoiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x84b22e0f83d848ead9fc050734e946b665232c0e`; base `0xe8b48dc91e494c3c018119e8f3191a806a236016`; arbitrum `0xa0a555c1c11ef36d2381768eb734fa2bddf1322b` | ⚠️ Unaudited |
| PauseManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xfce81cafe4b3f7e2263efc2d907f488ebf2b238e` | ⚠️ Unaudited |
| PoolOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: ethereum `0x4b15f2c0488da7b62bcfc88e8b9872fc1734250b`; optimism `0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd`; gnosis `0xefde1c764df6522a068b38106563de166ac97f58`; sonic `0x315f64a6a80b3c55a96dc3fc987cfa4287ec52ee`; sonic `0x34a02efc91dfa24b883ba6f12613325a5fa48bca`; sonic `0x7ca5ea9268b7d8c0604079a562e5b47042c7fcae`; sei `0x9e4658f0d695bb79d76fb9ff809514085569a172`; base `0x5d56ea1b2595d2dbe4f5014b967c78ce75324f0c`; arbitrum `0xc2daeff6fe82ab18a32bc70c0098345a183492e6` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1`; optimism `0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03f3fb107e74f2eac9358862e91ad3c692712054` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608`; optimism `0x355bd33f0033066bb3de396a6d069be57353ad95`; optimism `0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1` | ⚠️ Unaudited |
| PrimaryAMMV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241673 | `0xe7ea594b5905ec0dd321e61d7625711b635a6ce5` | ⚠️ Unaudited |
| ProtocolFeeController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a`; base `0x2ff226cd12c80511a641a6101f071d853a4e5363` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b6f057520b4e826271d47b8bdab98e35af17e59` | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94`; optimism `0xcc267d25576b48f08a90c3605624ab62a73a7a4e` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x4d4ddc3e4479e42c4288f6b61554cad9e41f4146`; base `0xded7fef7d8ecdcb74f22f0169e1a9ec696e6695d` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d`; optimism `0x86e67e115f96df37239e0479441303de0de7bc2b` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacf05be5134d64d150d153818f8c67ee36996650` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102`; base `0x682f0ddbfd41d1272982f64a499fb62d80e27589` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: gnosis `0x4e56f19235ff2a14c76332877a35d6af5bde07ec`; polygon `0x83d34ca335d197bcfe403cb38e82cbd734c4cbbe`; sonic `0x096f0a6490aac8324cf387cc248fb2f991ef3089`; sonic `0x33c11b9ea53a8072873ab8e9678023d3f68f7a47`; sonic `0x4b13e4d3e345debdc88f27b7e629ed96c289d0f1`; sonic `0x5aa1b0a51c107a82c56645f1c28b03d2547d34de`; sonic `0x8a4fdf6e76549bd85a40c3234962088f400dc399`; sei `0x8c12a15ce60daea80fdb1b73def39e6ba048ef03`; base `0xefde1c764df6522a068b38106563de166ac97f58`; arbitrum `0x4e56f19235ff2a14c76332877a35d6af5bde07ec` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c35e59488b124deec2a1b1f7c0745682c17781a` | ⚠️ Unaudited |
| QueryProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x32acb44fc929339b9f16f0449525cc590d2a23f3`; sonic `0xdbf96621b9e1a8e3e5c96e314c734b969f920ca9`; sei `0x5943834e22cafeab2e0c9c2d4a57fa5875cfa4c4`; base `0xefc86ad52fb6e1521e51a99b3638a8aeafd228c1` | ⚠️ Unaudited |
| QuotientRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x10e0b3db47dbdb9b38a4657881d3769263245587`; sonic `0x79a88bb30beebc41f2b104a86f5dc96c70c40447`; base `0x15cfd6d15b72ec3c97475e44b60efda22f7b627f` | ⚠️ Unaudited |
| RateManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241671 | `0xdbc810d748f808967f34da2f37f116c58ec4eda7` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x0b11209b8c5e821b18ded147583b8978c3e63911`; optimism `0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d`; sonic `0x99c13b259138a8ad8badbbfb87a4074591310de0` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x313a8d36b1d90a4cba3a505fdc3480c3870be053` | ⚠️ Unaudited |
| Reliquary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x492e4b1b6ef658c459ae82c7fba61d0c086a8f7d`; sonic `0x973670ce19594f857a7cd85ee834c7a74a941684` | ⚠️ Unaudited |
| Reserve | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241682 | 2 deployments: ethereum `0x00ffbaeaacae63a295a23c7bd2c2a9193d435c2a`; ethereum `0xc7ab175954b1211f93209ca9fc89fafc3fb21a37` | ⚠️ Unaudited |
| ReserveManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241657 | `0x2519a729535470830d345b78109818f94c1c2869` | ⚠️ Unaudited |
| ReserveSafetyManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241669 | `0x8f38321416d587ec4f3a4b37b1ccbb80013a3fab` | ⚠️ Unaudited |
| ReserveStewardshipIncentives | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241664 | `0x5c73d4e5349ffd392e62fa6bed994bb449d94f86` | ⚠️ Unaudited |
| RewardsClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x238fbf9b7594681838fb563c417937eb95818b0a` | ⚠️ Unaudited |
| RootSafetyCheck | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241663 | `0x56773ca4a4138f21128d23adb237004697273789` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x6077b9801b5627a65a5eee70697c793751d1a71c` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b`; sonic `0x93db4682a40721e7c698ea0a842389d10fa8dae5` | ⚠️ Unaudited |
| sGYD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241690 | `0xea50f402653c41cadbafd1f788341db7b7f37816` | ⚠️ Unaudited |
| sGYD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-241701 | `0xea50f402653c41cadbafd1f788341db7b7f37816` | ⚠️ Unaudited |
| Simple Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x455a56994df75ef70795c7a2d6a1d40534b72aeb` | ⚠️ Unaudited |
| SonicBeetsMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386` | ⚠️ Unaudited |
| SonicStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xbf46aef3c4c119495245e6b1911a4a961859038d`; sonic `0xf4fa7f3308a1543e7d89950519341c7ce479400b` | ⚠️ Unaudited |
| SonicStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xd5f7fc8ba92756a34693baa386edcc8dd5b3f141`; sonic `0xe5da20f15420ad15de0fa650600afc998bbe3955` | ⚠️ Unaudited |
| SonicStakingWithdrawRequestHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52b16e3d7d25ba64f242e59f9a74799ecc432d78` | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883`; optimism `0xb96524227c4b5ab908fc3d42005fe3b07aba40e9`; optimism `0xc4c4940dc7c57df46d3a217647db1649721cf468` | ⚠️ Unaudited |
| StablePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x1780e8185199dac45284039bb3e3b64060d943ab`; optimism `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42`; sonic `0x482ee54595f79b6ba34b75754a4983134148affb`; sonic `0x815ab57a5a2e4976cec0b43c2d50cf26ef6f31fd`; base `0xc49ca921c4cd1117162eaeec0ee969649997950c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: optimism `0xf39ca6ede9bf7820a952b52f3c94af526bab9015`; sonic `0x049919ae32e50aee5ea1a0998a841d175ec6f1b3` | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x3beb058de1a25dd24223fd9e1796df8589429ace`; optimism `0xfd214210587fb84798cbe7f37235e12898f3128f`; sonic `0x3d9319bb29daf6081d01dc56b6203efcc90f0bad`; sonic `0x6187f6c78ca4d89490d959e9c629b93214e6776e` | ⚠️ Unaudited |
| StandaloneECLPPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfae89029b2c3a695f4e8624f9e1428229e9f7fd` | ⚠️ Unaudited |
| StaticATokenRateProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2571257b0c2c97cb596c58338fb04665184aa9d` | ⚠️ Unaudited |
| StaticPercentageFeeHandler | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241666 | `0x757cfcf4fec346e4880ec686d11bea60c8f9a051` | ⚠️ Unaudited |
| StaticTierStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0b4237b829c34507eeddb67006db6061d3d60edf`; ethereum `0x4180e9a1e611dc88cb2866ba233db232197c24d3`; ethereum `0x6170edee4f62db7deeb55ba15cc7a5517f4dae7a`; ethereum `0xc0dea027935b1e1add71eb68585b1078611fb7b4`; ethereum `0xc2daeff6fe82ab18a32bc70c0098345a183492e6`; ethereum `0xd32971e1b9e4d5b09ba2ed3a6f404b1dc665b272`; ethereum `0xd70027c5754c2cab356154aab830f94c4e570c75`; ethereum `0xd837d6c421ec3d6e6361bffbccd0ff8f218d1c6d`; ethereum `0xd955238d7815564365706e327108331f8a18fd49`; ethereum `0xea8106503a136eaad94bf9fcf1de485459fd538e`; ethereum `0xfdbcc2e01d4ec8df128664325100173e67e4d582`; ethereum `0xfe41992176ad0fa41c4a2ed70f3c36273027c27c` | ⚠️ Unaudited |
| TellorOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7168da9ee565fa0becb5aec9400929dd3ac25d` | ⚠️ Unaudited |
| TellorOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241672 | `0xe22188f5d6acc1dd951bd20f531624b690f9d9a0` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x4b16176b5c5727a9f646e4a9005c2597ad4bbc0d`; sonic `0xd0f62fbe32a72cd18ab8943b52220a7af6c743f4`; sonic `0xdcd40648f19182dc15b0acdf07c45e07d68a67f2`; sonic `0xf750f4e0813898c544a4349526206e1165f0e5d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f4141f7ac1f85b178d63baf15832a141d3c22a6`; ethereum `0x9543b9f3450c17f1e5e558cc135fd8964dbef92a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7ae7b8e34fae3066b5adcc305e54a78e941bc50`; ethereum `0xe548a29631f9e49830be8edc22d407b2d2915f31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd`; ethereum `0xde0e16c5e234339ac3becf8c26be91be3cb9ec2e` | ⚠️ Unaudited |
| TrustedSignerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x28f93f0dccdac0a7891250fb9c72156595b9464a`; polygon `0x611a66667327db64f44144766c9198ec52a5ece4` | ⚠️ Unaudited |
| TrustedSignerPriceOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241674 | `0xf4ca93c70a00032856e6d942be2eb1cea54b4aa5` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f` | ⚠️ Unaudited |
| UpdatableRateProviderBalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: optimism `0x32f6fc935456f5fa4e37b095ba17efe95fc41041`; sonic `0x13024ff3879ce1d3a827958ab1e5fdf29250a05d`; sonic `0x20a7e5f22a16cfb5b33258abdc1d6d48f104bc89`; sonic `0x218cb380c31896396325ef007820146791a7bd9f`; sonic `0x4881eff86856216b38eee74a20bc3156a599ec83`; sonic `0x5b5c4be8db97e5cb8048fc2bcc8bb1a3201f2048`; sonic `0xb7b5d20dba8afac9049909e3be080d4841f5f144`; sei `0x27ce6a70b572302cd5466591313a0029b38d7bb0`; base `0x2a803ce12be775802a7c6f50797e53e9c3fd4025`; base `0x42d9b390da26e817cdf27ef794677250aa4aadc0` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x1311fbc9f60359639174c1e7cc2032dbdb5cc4d1`; optimism `0xeaedc32a51c510d35ebc11088fd5ff2b47aacf2e`; sonic `0x6f6cd1a69a19d45df0c300a57829b21713637300`; sonic `0x9672af0b41e97855e9fff995a058c6f46a09d5b3` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1702067424096f07a60e62ccee3de9420068492d` | ⚠️ Unaudited |
| VaultRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-241686 | 2 deployments: ethereum `0x82c45c1b7b798aa152937107058c8098630b5a22`; ethereum `0xf2865bf37c820af6fe3a1b4a0b92fa050aed4eb5` | ⚠️ Unaudited |
| VaultSafetyMode | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-241667 | `0x84b22e0f83d848ead9fc050734e946b665232c0e` | ⚠️ Unaudited |
| Vesting Escrow Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15e556d316e45241267e1ecb6f34b114a2dc76be` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c`; base `0xd87f44df0159dc78029ab9ca7d7e57e7249f5acd` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa015a8c96f45758614c4077813dc863a74cb1487` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xfc7d964f1676831d8105506b1f0c3b3e2b55c467`; optimism `0x81cfae226343b24ba12ec6521db2c79e7aeeb310` | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f`; optimism `0x718e1176f01ddbb2409a77b2847b749c8df4457f`; optimism `0xeb2bb012869255f8c622563dc4c3afa8619fe804` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x0f08eef2c785aa5e7539684af04755dec1347b7c`; optimism `0x254f3a2974b97dc2e675f6115c845567c55f83b0`; sonic `0x22f5b7fdd99076f1f20f8118854ce3984544d56d`; sonic `0x4726eb55c37f0353f6d5011b5652d44a87d60fc3`; base `0x4c32a8a8fda4e24139b51b456b42290f51d6a1c4` | ⚠️ Unaudited |
| X33RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa5084c5428b1a999858b163b12ff63117a68312` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (109)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x78a3dcdda13a58c198b5aabea91f51273abd1d87) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x522ef53be5a1b6efe914cff30d328a8e1e8aa889`; ethereum `0x78a3dcdda13a58c198b5aabea91f51273abd1d87` | ❓ Unverified |
| Proxy (impl: 0x9b683ca24b0e013512e2566b68704dbe9677413c) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6`; avalanche `0x9b683ca24b0e013512e2566b68704dbe9677413c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a569eea6f85736e2d63c59e60d27d075e75c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a73e222b18e1b85dd6998ddab5d7e02e2374ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0980e8997da424d2f2108212c6461c42a85c6754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ee0a55548ae92102abe195015694f0f3ea8403a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19144e641bfe62b624296a211d47798187bc09ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7f722018a8064a6abd5b24e9bf2f9460bb6a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1add0c81f9c4eee727c3bdb5f7298177b40d8f17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1cce5169bde03f3d5ad0206f6bd057953539dae6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2191df821c198600499aa1f0031b1a7514d7a7d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x21ce2c302ffefe0c1f601156a1e2c54ef4c0d094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287dfaad83b39879dc44d53431879a62de637f07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2a3dd3eb832af982ec71669e178424b10dca2ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1c0edf206ad7b69a2138385d3e2df1fb253f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2decae9c1e605f20c79b91856a3121fb2d2cb615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e77c9cf8df912007f524c300cf203d308091c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec43d68c03b1d90d53b19c4a6f01185867ea792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x329084119d410bf0019ff7aa9d699d35c06f6fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3543890fb851c3361d3009f04b3749f8b3cb2cda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x412a5b2e7a678471985542757a6855847d4931d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42abd55848431ab545efb34d611a95342df68e56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43455e04e9b58b4fad59260fced78f2a11660a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae17b5e327cd659f64912333fbc5039b0441dd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4bd408099486600234a91851582c969470a78039` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4f244fcaff67a2f98eaec20a44caf079a7f7a1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52beb0a083ca0fb84f6408e63c4c5a896c1993fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x581ae43498196e3dc274f3f23ff7718d287bc2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5879839cf7d0a314160fd7c2236e89ba9b8eb5cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5986af4b0f6f4663ddde2ff9dcb9a6d3389b3939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59c85668dfbcb97a7e082eb716eadf1f901e196d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5ada07ff0d2772e202776be8a8ec69ac3345050f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a6c5b447b1b9d6bc5d790e95889e0eacbc42f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683b882ea1f63d6a9a5592ea0e5ad8b46281b8ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241665 | `0x70c4430f9d98b4184a4ef3e44ce10c320a8b7383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713b6bb440e6071c8b28f966b39f7ea3a2c5edc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7171e66863b5a1d58771379362200d92e3d2611b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x799f90e2b828d0de586f1cfb3e2a31785b08414e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a36527a02d96693b0af2b70421f952816a4a088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e43d3825bb4c960395f829932831d6f59981c42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x80226fc0ee2b096224eeac085bb9a8cba1146f7d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x86858b3d33e01842715a5c9c757de9f7e18e3390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d794c2fa75b774c85b65778f33fdf0302fe1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9388950ee3d7380ed9e83570df2f94ab14f3efbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b337c6dd33f99538a620f2670be76920fa45287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2f03eaf1f9da36a3e4e8e0e9dbd408bd11ac78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa01ba17778a860ec92053325d0de4022240ceea4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa1886c8d748deb3774225593a70c79454b1da8a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa2b76e60215617e676c6a0041b26a7c3c126db5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab42c40a560a7dca6489ed5fd0828a106b64f44b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xac89cc9d78bbad7eb3a02601b4d65daa1f908aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad44134d7828a1e9f6d5666d0e9fedc82f527360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafdcd8bc66565cdaa6f656500e8d6773fde35d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0753a3a53e96eb3053c3cd62a6d14d527246f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7af8ba0580019f63e8a16b82c0f71e9fb1a0fb5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc0682b356ab9115f2cb4dd0d9a471143f46a5ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc156f656afcc68b0fd347bf3dc4c16a6cfb0fbef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc2aa60465bffa1a88f5ba471a59ca0435c3ec5c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xce88686553686da562ce7cea497ce749da109f9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcf9cddb1dd40c1c1476e896ae2263934fc18dd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4f032c193fd6e0a222769efbfd936b53bdac7a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe0074199dda10dafbd267cf01cc6e6ed3d45986b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead80ebee8fa790ac45ced2048e598920dc911ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf3387a880998c9b9169bc9973e8826fc9035c171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa0d65e2d856a615bcd3cf66153d115f444fe3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfca17af880b0f159bd68bbaf136fec81cf139d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7e7419ebef7171c84409b7a1c3a5d4538c98d4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x155aeb135c35cb4832f0af36d251a1154dc21b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cab842a4472f8ba2715c90a3bc0b96ea7345cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7de29b8d7bd98fa4866fc9faf02c670ffa5a3c3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x80bdd9a0d9139436bae53597d90ba420c7b677f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe6f65ca1214f1e6bb004e4b6f68e492bd83f09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8902590f55ab9aa9afa3eeeb12c4a0b9b96eb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3246e5b1f05e3af805ebc5e3526d63944d0a90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc2b39fd360547b29edb7c13083a4a5532800aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9763e692d66208e195cc57baa737fc9ec72ca562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9cde251b08caf8d2d34070244b83c0567f521867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadf9ed37ea8055d8437035650e4325819901e92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb221bcb6d60712973b98eabe63eb991e302f6bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc07500b9fe7bea9efd5b54341d0aa3658a33d39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xde491d90aa34bb749fa3d591ffdac52a88448bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfcc325c78b904b02472cffe8cc6caa32af67dba1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-241677 | `0x5d56ea1b2595d2dbe4f5014b967c78ce75324f0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | n/a | `0xca5d8f8a8d49439357d3cf46ca2e720702f132b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | n/a | `0xe26e205ced7ec44de3dded7e63ff01a7cf158c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x60825fe010d8cd5f63dd7271cb43e2da657d07b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6b87fa6013d4020e8bcebb8a43cf2be42fd69fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7660d9d96119a63db5809dd95e6983c61a0d9e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9c5a5225967865c4ad53f679c8e735ca78a97e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xa7a10bfea90f59317ca24d63cbbd3f9830eb0b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1802953277fd955f9a254b80aa0582f193cf1d77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x79fe0750be76913e83a0f0eb60ba1ab7fa6fda5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-241681 | `0xc63529297de076eb15fcbe873ae9136e446cfbb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x141fa059441e0ca23ce184b6a78bafd2a517dde8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dd70f6bd1d78083ef40f072375771f18fcabdbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x820b69fad931d4b4bf14e70ff234a8390f6a0658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcb724291fc34f9bbefa45e92159abf3f674efc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xca5d8f8a8d49439357d3cf46ca2e720702f132b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeef937f14f4b536c82a802962484a0d4183a34e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32acb44fc929339b9f16f0449525cc590d2a23f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-241680 | `0x41e9ac0bfed353c2de21a980da0ebb8a464d946a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d56ea1b2595d2dbe4f5014b967c78ce75324f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa88bbeee5d67db0a2dbba07ce61c2ee14c789d6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xab0548a31519a799549e7954d430df5bd01e6b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefc86ad52fb6e1521e51a99b3638a8aeafd228c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefde1c764df6522a068b38106563de166ac97f58` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 399
- Live contracts: 0
- Unknown liveness contracts: 399
- Source-verified contracts: 319
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=150, contamination review=53, exact address book overlap=2, source verified unclassified=115, unverified unclassified=79

Showing first 200 of 399 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ActionTierConfig<br>`0x8342b910815b0127c98e7717d4276c1d393478b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ActionTierConfig<br>`0xe9f7b804d535ad9cf07aa10f48fe9fcaf5fda965` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | AggregateLPVault<br>`0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | AssetRegistry<br>`0x94c34174f484cc0c80ea2d3670a50ec9325c9126` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | BatchVaultPriceOracle<br>`0x46412cdec90b266629bf05188185e9fd109ec881` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | CheckedPriceOracle<br>`0x2a18f596283f9082fd88f82556d5f78e3c482411` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | CheckedPriceOracle<br>`0xbdcfe6e4d1ca68b18b8d65f999746a75c1a471b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x29609b3fd68c647c3a619e69de386f2f02ee26e6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x53b8b175045816d447916b81ac12ba78fa2a6298` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x66a7aa37ea714e0b8dd553f375104ea7d160b0b2` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x830913c917b07311eae53687be27c1c0b589ab31` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x88f3b40e45213131860f81b32ca12a3d54821d65` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x8de76bf863e0a571be7165d9c85a1116c0fff393` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x8e17873fe6c257fcd4b32777658914b4b1a94ff2` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x98962bec8bf0363d00d97d9049b40079356a4953` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x99fafebb9471963d7f480c1f30257439b59eb1af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xc7ab175954b1211f93209ca9fc89fafc3fb21a37` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xf2865bf37c820af6fe3a1b4a0b92fa050aed4eb5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GenericVault<br>`0x80ecf3d96446ab3abaf3d037d1b352bb41295176` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GovernanceManager<br>`0xb05bcedb54814e0b3893cbf5b2c27d90164e206e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GovernanceManager<br>`0xb2fbd0087e5e2fe1f752ab0a8ca67bebd02ae755` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GovernanceManager<br>`0xfc68799da8feef47d1afb30960e6fef06cbeba17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GydRecovery<br>`0x2a803ce12be775802a7c6f50797e53e9c3fd4025` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GydToken<br>`0xfa08eb3a781532f47b1dd811a6ca326842ea0cb5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPPoolFactory<br>`0xa87217d855edad15d63255db176b810b0325bda2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | Motherboard<br>`0xbaf6a0be2dca3350d3558783740dd8d540a6cc95` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | MultiownerProxyAdmin<br>`0x71260fce6c16fb7b3481bafb64377c2aadc4f961` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | PrimaryAMMV1<br>`0xe7ea594b5905ec0dd321e61d7625711b635a6ce5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | Reserve<br>`0x00ffbaeaacae63a295a23c7bd2c2a9193d435c2a` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ReserveManager<br>`0x2519a729535470830d345b78109818f94c1c2869` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ReserveSafetyManager<br>`0x8f38321416d587ec4f3a4b37b1ccbb80013a3fab` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ReserveStewardshipIncentives<br>`0x5c73d4e5349ffd392e62fa6bed994bb449d94f86` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | RootSafetyCheck<br>`0x56773ca4a4138f21128d23adb237004697273789` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticPercentageFeeHandler<br>`0x757cfcf4fec346e4880ec686d11bea60c8f9a051` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0x4180e9a1e611dc88cb2866ba233db232197c24d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0x6170edee4f62db7deeb55ba15cc7a5517f4dae7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xc0dea027935b1e1add71eb68585b1078611fb7b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xc2daeff6fe82ab18a32bc70c0098345a183492e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xd32971e1b9e4d5b09ba2ed3a6f404b1dc665b272` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xd70027c5754c2cab356154aab830f94c4e570c75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xd837d6c421ec3d6e6361bffbccd0ff8f218d1c6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xd955238d7815564365706e327108331f8a18fd49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xea8106503a136eaad94bf9fcf1de485459fd538e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xfdbcc2e01d4ec8df128664325100173e67e4d582` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | StaticTierStrategy<br>`0xfe41992176ad0fa41c4a2ed70f3c36273027c27c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TellorOracle<br>`0xe22188f5d6acc1dd951bd20f531624b690f9d9a0` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0x695225a1e074ffbe8ffe42364e77857df9b6bc61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0x9543b9f3450c17f1e5e558cc135fd8964dbef92a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0xa3979e46d1791a4f947641ed0e058025534a3008` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0xb6dc4f06867274539ecd06e244349f0a75410f9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0xc69129d6c4e3b5ef81dcea3a5afcd7b12ebe714c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0xdb5494f1ec62a50595c0101ab124e9c706eff57a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0xde0e16c5e234339ac3becf8c26be91be3cb9ec2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TransparentUpgradeableProxy<br>`0xe548a29631f9e49830be8edc22d407b2d2915f31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | TrustedSignerPriceOracle<br>`0xf4ca93c70a00032856e6d942be2eb1cea54b4aa5` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | VaultRegistry<br>`0x82c45c1b7b798aa152937107058c8098630b5a22` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | VaultSafetyMode<br>`0x84b22e0f83d848ead9fc050734e946b665232c0e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x32acb44fc929339b9f16f0449525cc590d2a23f3` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x9b683ca24b0e013512e2566b68704dbe9677413c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroConfig<br>`0xe02f11277cfa84c696370c097c51848c6a6523b3` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPMath<br>`0x4e56f19235ff2a14c76332877a35d6af5bde07ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPPoolFactory<br>`0xe8b18f8a2e4a1cd23e7f5fc6d9324f47f10db528` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPPoolFactory<br>`0xefde1c764df6522a068b38106563de166ac97f58` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ProtocolFeeController<br>`0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | VotingEscrowDelegationProxy<br>`0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x5d3be8aae57bf0d1986ff7766cc9607b6cc99b89` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroConfig<br>`0xe02f11277cfa84c696370c097c51848c6a6523b3` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPMath<br>`0x9b683ca24b0e013512e2566b68704dbe9677413c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPPoolFactory<br>`0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | OneSidedECLPJoiner<br>`0x84b22e0f83d848ead9fc050734e946b665232c0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ProxyAdmin<br>`0x4e56f19235ff2a14c76332877a35d6af5bde07ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | QueryProcessor<br>`0x32acb44fc929339b9f16f0449525cc590d2a23f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | CheckedPriceOracle<br>`0x64f84aac92320bba0bfa7af76a2da1d89ec75fc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | CheckedPriceOracle<br>`0x70772f847ed577a7ed8d764ea602a96cdd20fcab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | CheckedPriceOracle<br>`0x8e9a7c0f15bb4d6d997d9e0bc29ad90263d5cf49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | CheckedPriceOracle<br>`0xba116c6f9e631413847747df3cf6dc5cdd1455c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | CheckedPriceOracle<br>`0xfd83a2eb966422d3e7f43fb42e8ac93cc3377dcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x5d8545a7330245150be0ce88f8afb0edc41dfc34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x90f08b3705208e41dbeeb37a42fb628dd483adda` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xd4204551bc5397455f8897745d50ac4f6bee0ef6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xfdc2e9e03f515804744a40d0f8d25c16e93fbe67` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | Gyro2CLPPoolFactory<br>`0x3841ee752ae02b3e4260d064621902de1f1eac46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | Gyro2CLPPoolFactory<br>`0x3b55b649a5f2bc4ff39bbd2e345743e3a853c7a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | Gyro2CLPPoolFactory<br>`0x968348c6135c25e7160ad0671c8c9ca2ed2bb982` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroConfig<br>`0xf5d5441384283e1accc58c9f4d5e058d2845f18c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroECLPMath<br>`0x10aba87fed017734349e3ff31c01dd76bb3b5d63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroECLPMath<br>`0x2ec9faa1ed444b52778b559b69e27f502564a530` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroECLPMath<br>`0xbe1a07f3979e15e60d739a2b153680a6df0c4350` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroECLPPoolFactory<br>`0x4c818c579431052e92b89434e00ae729d8addf17` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroECLPPoolFactory<br>`0x949af2fc2a04761f2a0a921507ecee91a1f9d02f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroThreePoolFactory<br>`0xe59910c7725e15c28ba48bbbb995e7396536d981` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | GyroTwoPoolFactory<br>`0x333fadaf093cccc04d83ac19f1b6a6f2443ed028` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | ProxyAdmin<br>`0x83d34ca335d197bcfe403cb38e82cbd734c4cbbe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| candidate review | ERC1967Proxy<br>`0xe5da20f15420ad15de0fa650600afc998bbe3955` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | ERC1967Proxy<br>`0xf4fa7f3308a1543e7d89950519341c7ce479400b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x0e355824f66364bb721cf1c728654f2bd10a627e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x5364296d19d453d73f84a94e78681a430e620c5f` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x765505f7fef6dab854a75162801048c2ba178c6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xa23112d44b713cabb142a6b29de7bcaaccbda069` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xab7d2e7d2140858048ba44bdd62f4c92a3a70cce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xc951409bb50088a98d6a12b403eebae3ad947f22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xda598c87a27cea5a7de875d7d472e99b5794fb8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xeecee50a4333c8b8a8f76c81b6092477ae8ea81b` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | GyroConfig<br>`0x2426d2133effc36c1579c868e569027a7daff07f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | GyroConfig<br>`0x3f1f8541500c4bcc26d47298ebf34e3aafb068da` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | GyroConfig<br>`0xde62378b913337667c7a238caf695b146421e23d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | GyroECLPMath<br>`0xfa45ac4009f4f0391298dba18f0ebb3884947be3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | GyroECLPPoolFactory<br>`0x4a1d66cb3f33008657d100c38e4fa158aa0defec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | GyroECLPPoolFactory<br>`0xe22c6ddc731a9fd55b3ed224e7b58ad669b38739` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | GyroECLPPoolFactory<br>`0xf804356137a460bec75c7daf70244029629c4491` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | LegendsOfMaBeets<br>`0x6dab80bca8f4a50ebb20d6246347214f39407885` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | LegendsOfMaBeets<br>`0x82adf9f82facf80fac75d4197b058a8c4252bd81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | LevelNftDescriptor<br>`0x113cf97f53297b9a14baaba5733ee37040106d71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | NftDescriptor<br>`0x6fb10ef543e8a2a8b50bef705c0b7b5ad4133ed5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | NftDescriptor<br>`0xe36d5d493c0575b3153cbe3c92fa75972a598b9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | ProxyAdmin<br>`0x096f0a6490aac8324cf387cc248fb2f991ef3089` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | ProxyAdmin<br>`0x33c11b9ea53a8072873ab8e9678023d3f68f7a47` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | ProxyAdmin<br>`0x4b13e4d3e345debdc88f27b7e629ed96c289d0f1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | ProxyAdmin<br>`0x5aa1b0a51c107a82c56645f1c28b03d2547d34de` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | ProxyAdmin<br>`0x8a4fdf6e76549bd85a40c3234962088f400dc399` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | QueryProcessor<br>`0xdbf96621b9e1a8e3e5c96e314c734b969f920ca9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x194941b55555afd751285b8b792c7538152deadd` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x8bc920001949589258557412a32f8d297a74f244` |
| candidate review | GyroConfig<br>`0x788fb3a1428fd851c2204dc6e30d775cb45262c0` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x8bc920001949589258557412a32f8d297a74f244` |
| candidate review | GyroECLPMath<br>`0x086602c022a4362d48dce1596cd1b7ad6fb38701` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8bc920001949589258557412a32f8d297a74f244` |
| candidate review | ProxyAdmin<br>`0x8c12a15ce60daea80fdb1b73def39e6ba048ef03` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8bc920001949589258557412a32f8d297a74f244` |
| candidate review | QueryProcessor<br>`0x5943834e22cafeab2e0c9c2d4a57fa5875cfa4c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8bc920001949589258557412a32f8d297a74f244` |
| candidate review | ChildChainGaugeFactory<br>`0x2498a2b0d6462d2260eac50ae1c3e03f4829ba95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x089775364ea24957da94348cf740375826ed3330` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x15e86be6084c6a5a8c17732d398dfbc2ec574cec` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x8a5eb9a5b726583a213c7e4de2403d2dfd42c8a6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroConfig<br>`0x9b683ca24b0e013512e2566b68704dbe9677413c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPMath<br>`0x721325c9cbb8c2636db50075eb062b445c951e5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPPoolFactory<br>`0xdca5f1f0d7994a32bc511e7dba0259946653eaf6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | OneSidedECLPJoiner<br>`0xe8b48dc91e494c3c018119e8f3191a806a236016` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ProtocolFeeControllerMigration<br>`0x1b6f057520b4e826271d47b8bdab98e35af17e59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x089775364ea24957da94348cf740375826ed3330` |
| candidate review | ProxyAdmin<br>`0xefde1c764df6522a068b38106563de166ac97f58` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | QueryProcessor<br>`0xefc86ad52fb6e1521e51a99b3638a8aeafd228c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | VotingEscrowDelegationProxy<br>`0xd87f44df0159dc78029ab9ca7d7e57e7249f5acd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x089775364ea24957da94348cf740375826ed3330` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x32acb44fc929339b9f16f0449525cc590d2a23f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x7a36527a02d96693b0af2b70421f952816a4a088` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0x9b683ca24b0e013512e2566b68704dbe9677413c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | FreezableTransparentUpgradeableProxy<br>`0xdca5f1f0d7994a32bc511e7dba0259946653eaf6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GovernanceProxy<br>`0x00a2a9bbd352ab46274433faa9fec35fe3abb4a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroConfig<br>`0xefde1c764df6522a068b38106563de166ac97f58` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPMath<br>`0x41e9ac0bfed353c2de21a980da0ebb8a464d946a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPMath<br>`0xcfc923dbe1ade0f2bf86400cd7c444ec767ecbfd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPPoolFactory<br>`0x721325c9cbb8c2636db50075eb062b445c951e5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | GyroECLPPoolFactory<br>`0xde0e16c5e234339ac3becf8c26be91be3cb9ec2e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | OneSidedECLPJoiner<br>`0xa0a555c1c11ef36d2381768eb734fa2bddf1322b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| candidate review | ProxyAdmin<br>`0x4e56f19235ff2a14c76332877a35d6af5bde07ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | ActionTierConfig<br>`0x0f51c89c368ccaa518b16d2169ea6bab911bfce1` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | AssociatedDAOVault<br>`0xa2321e23b3060e160195e138b62f8498546b0247` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | CouncillorNFTVault<br>`0x339b896bafd5d3811241d607d0cd33a1c2f09404` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | EmergencyRecovery<br>`0x70d3ec9ff6cb962246072fa9d18153fdf6f1215d` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | FoundingMemberVault<br>`0x0400d6aac2545d2e4b547c3a18ebbef5fb9f157c` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | FrogMinter<br>`0xe02f11277cfa84c696370c097c51848c6a6523b3` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | GenericVaultPriceOracle<br>`0x89b93862bebba6c98e6f158ef9fada004fde854a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | GovernanceManager<br>`0x587b602f38e18c1e2626f19ff61c70e935a684a7` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | LockedVault<br>`0x4476ffcb74a793092544ab29f45286cb1abfa007` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | LockedVaultWithThreshold<br>`0x16b13dd24977a13e9857f36eb405db11d01ac7d1` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | RateManager<br>`0xdbc810d748f808967f34da2f37f116c58ec4eda7` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | StandaloneECLPPriceOracle<br>`0xcfae89029b2c3a695f4e8624f9e1428229e9f7fd` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | StaticTierStrategy<br>`0x0b4237b829c34507eeddb67006db6061d3d60edf` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | TellorOracle<br>`0xbc7168da9ee565fa0becb5aec9400929dd3ac25d` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | TrustedSignerPriceOracle<br>`0x28f93f0dccdac0a7891250fb9c72156595b9464a` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | VotingPowerAggregator<br>`0xa015a8c96f45758614c4077813dc863a74cb1487` | non_address_book | unknown | unknown | verified | n/a | `0x725e704b6933be9896c717f735e5a5edbfc7193f` |
| contamination review | AuthorizerAdaptorEntrypoint<br>`0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | ComposableStablePoolFactory<br>`0x043a2dad730d585c44fb79d2614f295d2d625412` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | ManagedPoolFactory<br>`0x956ccab09898c0af2aca5e6c229c3ad4e93d9288` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | MevCaptureHook<br>`0x3630d26e51c03026f4f063d69d65f8e234eeaf5b` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | ProtocolFeeSweeper<br>`0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | VaultExplorer<br>`0x1311fbc9f60359639174c1e7cc2032dbdb5cc4d1` | non_address_book | unknown | unknown | verified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| contamination review | TrustedSignerPriceOracle<br>`0x611a66667327db64f44144766c9198ec52a5ece4` | non_address_book | unknown | unknown | verified | n/a | `0x8780779caf2bc6d402da5c3ec79a5007bb2edd90` |
| contamination review | AggregatorRouter<br>`0x7943b40c37233fe5daf9b64dd09c339eb0bb8565` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | BatchRelayerLibrary<br>`0x1498437067d7bddc4c9427964f073ee1ab4f50fc` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | BeetsNftDescriptor<br>`0x685dfbe5e38ca7eda140603ec5902be888aad88e` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | BeetsShadowArbitrage<br>`0x4c5e12950d0a32d3fbc95504ea1b232752e28010` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | CombinedRateProviderFactory<br>`0xdc580ce8e689a49d3ce58fad4c52786c39a923e6` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | ConstantRateProviderFactory<br>`0x511052c991d8955653093445034f061597ec6554` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | EventEmitter<br>`0xe0f1dfae777bb7d44d3cb7d8fcdce6731165211e` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | Gyro3CLPPoolFactory<br>`0x05d8c43b2c66978dbfa6d8ef6e2b58ffcca3971e` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | ProtocolFeePercentagesProvider<br>`0x4d4ddc3e4479e42c4288f6b61554cad9e41f4146` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | PythAggregatorV3<br>`0x3c35e59488b124deec2a1b1f7c0745682c17781a` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | SonicStakingWithdrawRequestHelper<br>`0x52b16e3d7d25ba64f242e59f9a74799ecc432d78` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | X33RateProvider<br>`0xfa5084c5428b1a999858b163b12ff63117a68312` | non_address_book | unknown | unknown | verified | n/a | `0xb5e6b895734409df411a052195eb4ee7e40d8696` |
| contamination review | AuthorizerAdaptor<br>`0x6cad2ea22bfa7f4c14aae92e47f510cd5c509bc7` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | AuthorizerAdaptorEntrypoint<br>`0x9129e834e15ea19b6069e8f08a8ecfc13686b8dc` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | AuthorizerWithAdaptorValidation<br>`0xa69e0ccf150a29369d8bbc0b3f510849db7e8eee` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | BatchRelayerLibrary<br>`0x82416ce6ea7dd4923d4a3ed70a79b4a432a382c4` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | ComposableStablePoolFactory<br>`0x8df317a729fcaa260306d7de28888932cb579b88` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | ERC4626LinearPoolFactory<br>`0x161f4014c27773840ccb4ec1957113e6dd028846` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | ExternalWeightedMath<br>`0x7920bfa1b2041911b354747ca7a6cdd2dfc50cfd` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | GaugeWorkingBalanceHelper<br>`0xa7d524046ef89de9f8e4f2d7b029f66ccb738d48` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | GearboxLinearPoolFactory<br>`0x9dd32684176638d977883448a4c914311c07bd62` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | ManagedPoolFactory<br>`0x9a62c91626d39d0216b3959112f9d4678e20134d` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | MockGearboxVault<br>`0x79e435875ccee3cd9e8da23fe34f9a011d05ea6c` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | NoProtocolFeeLiquidityBootstrappingPoolFactory<br>`0x0c6052254551eae3ecac77b01dfcf1025418828f` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | PoolRecoveryHelper<br>`0x03f3fb107e74f2eac9358862e91ad3c692712054` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | ProtocolFeePercentagesProvider<br>`0xded7fef7d8ecdcb74f22f0169e1a9ec696e6695d` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| contamination review | ProtocolFeesWithdrawer<br>`0xacf05be5134d64d150d153818f8c67ee36996650` | non_address_book | unknown | unknown | verified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM_0526_Gyroscope-dynamic-eclp.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM_0526_Gyroscope-dynamic-eclp.pdf) | Nethermind | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [NM0440_GYFI_FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0440_GYFI_FINAL.pdf) | Nethermind | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [NM0255_GYROSCOPE _FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0255_GYROSCOPE%20_FINAL.pdf) | Nethermind | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [NM0264_GYRO_SGYD.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0264_GYRO_SGYD.pdf) | Nethermind | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 50 | high |
| [NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [NM-0055 Security Review - Gyroscope CEMM.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0055%20Security%20Review%20-%20Gyroscope%20CEMM.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [NM-0051 Security Review Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0051%20Security%20Review%20Gyroscope.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 50 | high |
| [Summary Report & Fix Review - Gyroscope.pdf](https://github.com/gyrostable/audit-reports/blob/main/Trail%20of%20Bits/Summary%20Report%20%26%20Fix%20Review%20-%20Gyroscope.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Gyroscope_Protocol_Audit_Report.pdf](https://github.com/gyrostable/audit-reports/blob/main/Runtime%20Verification/Gyroscope_Protocol_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2962] NM_0526_Gyroscope-dynamic-eclp.pdf — no match: No reason recorded
- [2963] NM0440_GYFI_FINAL.pdf — no match: Audited files table lists three contracts: GYFIAirdrop.sol, GYFILocker.sol, Types.sol. Audit date is Feb 26, 2025 from the final report date.
- [2964] NM0255_GYROSCOPE _FINAL.pdf — no match: Extracted 5 unique contract names from two repositories: CCIP-GYD (CCIPHelpers, GydL1CCIPEscrow, L2Gyd, CCIPReceiverUpgradeable) and ZkEVM-GYD (L2Gyd, GydL1Escrow). L2Gyd appears in both repositories but is listed once. Audit date is June 25, 2024 (final report date).
- [2965] NM0264_GYRO_SGYD.pdf — no match: No reason recorded
- [2966] NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is the final report date (August 15, 2023).
- [2967] NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf — no match: Extracted contract names from the 'Audited Files' tables (two tables) and the system overview. The audit date is the final report date: August 15, 2023.
- [2968] NM-0055 Security Review - Gyroscope CEMM.pdf — no match: Extracted 6 contracts from the scope table and findings sections. Audit date from final report date.
- [2969] NM-0051 Security Review Gyroscope.pdf — no match: All contracts listed in the 'Audited Files' sections (Vaults Repository and Protocol Repository) are included. The audit date is from the final report date on the cover page.
- [2970] Summary Report & Fix Review - Gyroscope.pdf — no match: Extracted contract names from scope descriptions, findings, and fix log. Audit date from cover page.
- [2971] Gyroscope_Protocol_Audit_Report.pdf — no match: Three contracts explicitly listed in scope sections: PrimaryAMMV1, GyroCEMMMath, BalancerLPSharePricing. Other contracts mentioned (e.g., Motherboard, BaseVaultPriceOracle) are not in scope per report statements.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM_0526_Gyroscope-dynamic-eclp.pdf | BaseUpdatableRateProvider | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | GovernanceRoleManager | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | Gyro3CLPPool | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | GyroConfigManager | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | UpdatableRateProviderBalV2 | unmatched — not counted | — | — | no |
| NM_0526_Gyroscope-dynamic-eclp.pdf | UpdatableRateProviderBalV3 | unmatched — not counted | — | — | no |
| NM0440_GYFI_FINAL.pdf | GYFIAirdrop | unmatched — not counted | — | listed in Audited Files table | no |
| NM0440_GYFI_FINAL.pdf | GYFILocker | unmatched — not counted | — | listed in Audited Files table | no |
| NM0440_GYFI_FINAL.pdf | Types | unmatched — not counted | — | listed in Audited Files table | no |
| NM0255_GYROSCOPE _FINAL.pdf | CCIPHelpers | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | GydL1CCIPEscrow | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | L2Gyd | unmatched — not counted | — | Listed in audited files table for ZkEVM-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | CCIPReceiverUpgradeable | unmatched — not counted | — | Listed in audited files table for CCIP-GYD repository | no |
| NM0255_GYROSCOPE _FINAL.pdf | GydL1Escrow | unmatched — not counted | — | Listed in audited files table for ZkEVM-GYD repository | no |
| NM0264_GYRO_SGYD.pdf | BaseDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | GydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | ICurveLiquidityGauge | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IGYD | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IGydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IL1GydEscrow | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | IsGYD | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | L2GydDistributor | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | ScaledMath | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | Stream | unmatched — not counted | — | — | no |
| NM0264_GYRO_SGYD.pdf | sGYD | unmatched — not counted | — | — | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GydToken | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GydRecovery | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveManager | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Motherboard | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GyroConfig | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | FreezableProxy | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | LiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Reserve | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveStewardshipIncentives | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | CheckedPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BatchVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GenericVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseVaultPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | AssetRegistry | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TellorOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TrustedSignerPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseChainLinkOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseBalancerPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerCPMMPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerECLPV2PriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Balancer2CLPPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Balancer3CLPPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernableBase | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Governable | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernableUpgradeable | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GovernanceProxy | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveSafetyManager | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultSafetyMode | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | RootSafetyCheck | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | StaticPercentageFeeHandler | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BalancerPoolVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | GenericVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | BaseVault | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveSystemRead | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Vaults | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ConfigHelpers | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | VaultMetadataExtension | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Arrays | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | DecimalScale | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ConfigKeys | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | TypeConversion | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | ReserveStateExtensions | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | Flow | unmatched — not counted | — | listed in audited files table | no |
| NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf | SignedFixedPoint | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | WrappedERC20WithEMA | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | VotingPowerAggregator | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ActionTierConfig | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | LiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | RecruitNFT | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GovernanceManager | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | EmergencyRecovery | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GovernanceOnly | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ImmutableOwner | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | RecruitNFTVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | FriendlyDAOVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | NFTVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | FoundingFrogVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | LPVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | AggregateLPVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | NoSafeManagementByMultisig | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SafeManagementModule | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SimpleThresholdStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetAddressStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | BaseThresholdStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetVaultFeesStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | SetSystemParamsStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | StaticTierStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Errors | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ScaledMath | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | DataTypes | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | VotingPowerHistory | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Merkle | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVotingPowersUpdater | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ITierer | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVotingPowerAggregator | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ITierStrategy | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IDelegatingVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ILiquidityMining | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | IWrappedERC20WithEMA | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ILockingVault | unmatched — not counted | — | listed in audited files table | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | GydRecovery | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | Motherboard | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf | ReserveStewardshipIncentives | unmatched — not counted | — | listed in audited files table (second table) | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMPool | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroCEMMPoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0055 Security Review - Gyroscope CEMM.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope table and findings sections | no |
| NM-0051 Security Review Gyroscope.pdf | Gyro2PoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoPool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroTwoPoolFactory | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreeMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroThreePoolFactory | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMOracleMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMPool | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroCEMMPoolErrors | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerExchanger | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerPoolRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | StaticPercentageFeeHandler | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | FeeBank | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GydToken | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | GyroConfig | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | LPTokenExchangerRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Motherboard | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | AssetRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCEMMPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMV2PriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerCPMMV3PriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseBalancerPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseChainLinkOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseVaultPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BatchVaultPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ChainLinkPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | CheckedPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | CrashProtectedChainLinkPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | TrustedSignerPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | UniswapV3TwapPriceOracle | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Reserve | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ReserveManager | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | ReserveSafetyManager | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | RootSafetyCheck | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | VaultSafetyMode | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | VaultRegistry | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BalancerPoolVault | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | BaseVault | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | Flow | unmatched — not counted | — | listed in scope table | no |
| NM-0051 Security Review Gyroscope.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope table | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroToken | unmatched — not counted | — | gyro-token/ contains the Gyro token contracts. | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroTwoPool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroThreePool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | GyroCEMMPool | unmatched — not counted | — | vaults/ contains the GyroTwoPool, GyroThreePool, and GyroCEMMPool implementations | no |
| Summary Report & Fix Review - Gyroscope.pdf | PrimaryAMMV1 | unmatched — not counted | — | protocol/ contains the AMM and various other core contracts of the system. Our scope in the initial two weeks was limited to the PrimaryAMMV1 contract. | no |
| Summary Report & Fix Review - Gyroscope.pdf | ReserveSafetyManager | unmatched — not counted | — | Certain safety checks performed during minting and redeeming operations do not properly check the returned error codes; as a result, minting and redeeming operations could succeed even if the ReserveSafetyManager indicates that they are unsafe. | no |
| Summary Report & Fix Review - Gyroscope.pdf | FeeBank | unmatched — not counted | — | SafeERC20 functions not used in FeeBank | no |
| Summary Report & Fix Review - Gyroscope.pdf | GryoTokenL1 | unmatched — not counted | — | Risk of trapped funds in the GryoTokenL1 contract due to missing ETH validation | no |
| Gyroscope_Protocol_Audit_Report.pdf | PrimaryAMMV1 | unmatched — not counted | — | listed in scope | no |
| Gyroscope_Protocol_Audit_Report.pdf | GyroCEMMMath | unmatched — not counted | — | listed in scope | no |
| Gyroscope_Protocol_Audit_Report.pdf | BalancerLPSharePricing | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 186 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 182 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: n/a

Zero-match audit list:

- [2962] NM_0526_Gyroscope-dynamic-eclp.pdf
- [2963] NM0440_GYFI_FINAL.pdf
- [2964] NM0255_GYROSCOPE _FINAL.pdf
- [2965] NM0264_GYRO_SGYD.pdf
- [2966] NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf
- [2967] NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf
- [2968] NM-0055 Security Review - Gyroscope CEMM.pdf
- [2969] NM-0051 Security Review Gyroscope.pdf
- [2970] Summary Report & Fix Review - Gyroscope.pdf
- [2971] Gyroscope_Protocol_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
