# Agentic Audit Brief: Gro

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gro (`gro`)
- Website: [https://app.gro.xyz/](https://app.gro.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum
- Contract surface: 177 unique implementations (305 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,661,036.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across avalanche, ethereum. Structural roles: 17 core, 7 unclassified, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: core (17), unclassified (7), supporting (3)
- Contract kinds: contract (26), unclassified (1)
- Detected standards: ownable (14), erc20 (6), erc20permit (3)
- Frameworks: openzeppelin (18), foundry (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 33 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x59b6b763509198d07cf8f13a2dc6f2df98cb0a1d`, chain 1)
- UnnamedContract (`0x789190466e21a8b78b8027866cbbdc151542a26c`, chain 1)
- UnnamedContract (`0x79b14d909381d79b655c0700d0fdc2c7054635b9`, chain 1)
- UnnamedContract (`0x9da6ad743f4f2a247a56350703a4b501c7f2c224`, chain 1)
- UnnamedContract (`0xa964273552c1dba201f5f000215f5bd5576e8f93`, chain 1)
- UnnamedContract (`0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc`, chain 1)
- UnnamedContract (`0xba12222222228d8ba445958a75a0704d566bf2c8`, chain 1)
- UnnamedContract (`0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7`, chain 1)
- UnnamedContract (`0xd89512bdf570476310de854ef69d715e0e85b09f`, chain 1)
- UnnamedContract (`0xdec0a100ead1faa37407f0edc76033426cf90b82`, chain 1)
- AirDrop (`0x6b1bff72f00cc147b5dc7a5b156fe7a6fd206dda`, chain 1)
- AirDrop (`0xf3d39a7feba9be0c1d18b355e7ed01070ee2c561`, chain 1)
- DepositHandler (`0xb7207ea9446dca1dec1c1fc93c6fcdf8b4a44f40`, chain 1)
- EmergencyHandler (`0xc535cfe245d8f969e647b3dd8be1255ec076ee76`, chain 1)
- GMerkleVestor (`0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720`, chain 1)
- GROHodler (`0x7c268bf50e64258835029c30c91daa65a9e55b5a`, chain 1)
- GROHodler (`0x8b4a30c8884ca4aff1e4c82cce79802a63e61397`, chain 1)
- GROHodler (`0xef10eac205817a88c6d504d02481053e85a8f927`, chain 1)
- GROTeamVesting (`0xf43c6bdd2f9158b5a78dccf732d190c490e28644`, chain 1)
- GROToken (`0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7`, chain 1)
- GRouter (`0xd4139e090e43ff77172d9dd8ba449d2a9683790d`, chain 1)
- GROVesting (`0x748218256afe0a19a88ebeb2e0c5ce86d2178360`, chain 1)
- GROVesting (`0xa28693bf01dc261887b238646bb9636cb3a3730b`, chain 1)
- LPTokenStaker (`0x001c249c09090d79dc350a286247479f08c7aad7`, chain 1)
- LPTokenStaker (`0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c`, chain 1)
- NonRebasingGToken (`0x3adb04e127b9c0a5d36094125669d4603ac52a0c`, chain 1)
- PnL (`0xf67a426e110c74c566174a37c9269780fb48096d`, chain 1)
- RebasingGToken (`0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b`, chain 1)
- UniswapV2Pair (`0x21c5918ccb42d20a2368bdca8feda0399ebfd2f6`, chain 1)
- UniswapV2Pair (`0x2ac5bc9dda37601edb1a5e29699deb0a5b67e9bb`, chain 1)
- Vyper_contract (`0xbcb91e689114b9cc865ad7871845c95241df4105`, chain 1)
- WeightedPool (`0x702605f43471183158938c1a3e5f5a359d7b31ba`, chain 1)
- WithdrawHandler (`0x641befa4db601578a64f0fc1f4e89e9869268fe7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 140 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 37 of 177 unique; 140 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 99
- Unique implementations: 177
- Raw deployments: 305
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

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AHv2Farmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 38 deployments: avalanche `0x0ae4e33e2c10e0aab0c58f112b02237b67f3bf3e`; avalanche `0x17a5d3e919166134e511a242015a67b06ef1d319`; avalanche `0x1a104793650684013c555d6ae07058f76e4679ef`; avalanche `0x21da4b3b6738adb122dedbfa722cdab6fa29d4ac`; avalanche `0x247af6e106549033d3a65354fc3a72ff3794fa99`; avalanche `0x2818e1c8e658245417ce563c143aee849e702ca6`; avalanche `0x2a4e5cb592d254f21665b709a6e4e0f4a75cd1a1`; avalanche `0x342fc25dca3968e1089fbc09cec4538c41b74621`; avalanche `0x370e6e9cd875db40293f9dba86361ca7ff399b63`; avalanche `0x45fa601854326de028b982df9839a27d22f36344`; avalanche `0x46485f247d687c99d10af1cdcee1c158223e5592`; avalanche `0x4a017ebb7c5b92b05418267cb3f917d2a7576b31`; avalanche `0x4c7ea5b8032c5ea82ddf617dac7972c70e0c0478`; avalanche `0x52bacf18d21694585b5046bb347f426fa63dc6e6`; avalanche `0x5d1294eba42438c2742697f9fc6aa455622c5292`; avalanche `0x5ee227c35ec7f70a2406e4b9d623a709277ee9ad`; avalanche `0x60e2d922cb9d7fb8585b443a9df5424b377245d3`; avalanche `0x6d4c2e0709bc8da0e20b2d2bf28011062f234188`; avalanche `0x7053cdcfe9a6f8db99768734939fcd6672470158`; avalanche `0x855b33e57d0cdf28f089fc6d9d38a4b45ef6c2dc`; avalanche `0x85b1d53b528991f46d83ba321d02d07fdc47fbc3`; avalanche `0x926dfa1bdde77416fbaf7986b170443ffae5594a`; avalanche `0x935f5bff123ce7ae2fb74be3e237d3f5210be04a`; avalanche `0x94a7c3419504cea9fba06ee739717b236ada0638`; avalanche `0x9889d8cdcdf4f5a0f30378c909a8930cf0fed2f4`; avalanche `0xa3dbc3186fed015ef69f9c8690ea007d3d9d83e4`; avalanche `0xa797c615fc49a39363fdfa3398e8d524756e9a13`; avalanche `0xa80ec1e57c5a37517a0f5912acc7b30585ebff56`; avalanche `0xabd66fb3da3b816156cdf44cbabafa584a383869`; avalanche `0xb29380360a44a7630f404c7609114e48fde0ddee`; avalanche `0xb34752775b24e016d00ff646a9e9ab7329c0e22f`; avalanche `0xcc4c1ecca52697add5237a5ac6dbdc57978a2865`; avalanche `0xdbcf4f419b0364c81f337eeceb47ba76e1404af9`; avalanche `0xdc9a648f150be35207d70a977b57c7896ab4f410`; avalanche `0xe0d6eff0f64da98b2c0e47102d59709b24cfc76f`; avalanche `0xe218c3b7fa077f61eaa2ddcb154caa82c51cc92c`; avalanche `0xecba3778357a7a448810d1d9a67025cd9baf169a`; avalanche `0xf446480a77a837353873078d209e571ef2293b31` | ⚠️ Unaudited |
| AHv2FarmerDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x35322b1ebcfcc5533fcb2b55a06d2c63865f393f`; avalanche `0x3a6b7e8b5ef16f64569f422ea4f7794456d4cab8`; avalanche `0x5a60087c86b4f234b7027ee54501e177fbea7a58`; avalanche `0x670ea3f675a332d561d5a9ecaa16c097ac0b0ba5`; avalanche `0xb7a4ed26da881196c3da388b46cd290fd92aacc8`; avalanche `0xcfd28f3afb79380ec6cd759f76ea0a5c5b56a9ac`; avalanche `0xe505f5a7c14610a73badf03ed1f272768d59637f` | ⚠️ Unaudited |
| AirDrop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387114 | `0x6b1bff72f00cc147b5dc7a5b156fe7a6fd206dda` | ⚠️ Unaudited |
| AirDrop | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387151 | `0xf3d39a7feba9be0c1d18b355e7ed01070ee2c561` | ⚠️ Unaudited |
| Allocation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167bcca89b1527e015b8aad7bd6130707922a99a` | ⚠️ Unaudited |
| Bouncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x60861b5afdf4b6e449dd194a6b54d6a64dfe2d81`; avalanche `0x6d1e68d2cc52696241fa17ae198f41ce84078328` | ⚠️ Unaudited |
| Buoy3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7d17c9b9b154b1b31add5115f5f519ec50a59421`; ethereum `0x952df3e800f0649c2d0b130c206bb547d475387c`; ethereum `0xbf8c81b2977b10f13a4ac542e72969a6e123f5fe` | ⚠️ Unaudited |
| BuyBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x730ce0b3cc7bb1af919dc363307ff3cfbaabb4a5`; ethereum `0xc06b961d9ef666fddcc15f37264fbf6352ca2264`; ethereum `0xdf2bf3ef4f5c9dc69e3a6642fa3168327ee1cdd7` | ⚠️ Unaudited |
| BuyBackResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2310f6db61bda5781dc38b719373e0f2b3496f85`; ethereum `0x31f33b7a861660496809004fed0fb92315a762dc`; ethereum `0x59a06eea13a7410326e6f225d4ca9d1b29736a2f`; ethereum `0x94c73a819f617548d57a8aee0db2431f60276e2d` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5c60a319d33810b9eab9764717eef84defb8f4` | ⚠️ Unaudited |
| DepositHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387136 | `0xb7207ea9446dca1dec1c1fc93c6fcdf8b4a44f40` | ⚠️ Unaudited |
| EmergencyHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387144 | `0xc535cfe245d8f969e647b3dd8be1255ec076ee76` | ⚠️ Unaudited |
| Exposure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2344dba0a1de9acf22b7c9936c6693f20b953444` | ⚠️ Unaudited |
| GenericCream | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9645cee8d720a70e2d79b7d7c7070dc7a580bb0f`; ethereum `0xa699d9a4f9970bbf3fcf8a6100189f8acdbf18e8`; ethereum `0xb74baccdf70f6b8d009fd7a7fb4cc3755ad00921` | ⚠️ Unaudited |
| GenericLevComp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x63d3376aabddd618daafbb29d8f27ce47a28a952`; ethereum `0x6a23a7c1fa98728e7f57989a79ef555690f1426e` | ⚠️ Unaudited |
| GGelatoResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a656f8fc4f1d4996d70e36b7b5bdf4970b3776f` | ⚠️ Unaudited |
| GGuardedExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc613c897ec7c3fdee22c4dd82729de7c42f615e7` | ⚠️ Unaudited |
| GMerkleVestor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387101 | `0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720` | ⚠️ Unaudited |
| GMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd883e0e09bf3c4a54eadc404e12fa71605a30f0c` | ⚠️ Unaudited |
| GROBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f09e308bb18795f62ea7b114041e12b426b8880`; ethereum `0x783c7565b0648b9c8032408dbbc47f6b7fa8babe` | ⚠️ Unaudited |
| GRODaoVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d96236fd0e1c395d3e464a38f46b1adca247de` | ⚠️ Unaudited |
| GRODistributer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3c5ced8498ca1f8489ee3db32a86087a53e735d4`; ethereum `0x4c648488e39668e7ae4227b8dfcb86735ce3bb4c`; ethereum `0x54acb7e67186f6b71a10c3b5102b16a6060877c3`; ethereum `0x88e82d0ada60a24b2607d51551448c64eb990b2d`; ethereum `0xb2a54e5820683e48b2e255d66aedd02908fb544d`; ethereum `0xe164714c85410aeec99f4d5dbf9300e59e4eb947` | ⚠️ Unaudited |
| GROEmpVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca71e66866eb9ae67bd5f3ab50b06abd188f33c7`; ethereum `0xd6c4559c129a8926459983e12ff79624276a91ce` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387123 | `0x7c268bf50e64258835029c30c91daa65a9e55b5a` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387125 | `0x8b4a30c8884ca4aff1e4c82cce79802a63e61397` | ⚠️ Unaudited |
| GROHodler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387149 | `0xef10eac205817a88c6d504d02481053e85a8f927` | ⚠️ Unaudited |
| GROInvVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0537d3da1ed1dd7350ff1f3b92b727dfdbab80f1`; ethereum `0x90d58911e49e6db40db44b476e1ca268e1e2ad7b` | ⚠️ Unaudited |
| GROTeamVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x452c21ed6fe22cd2dbff22a89d507cc6b16cb397`; ethereum `0x82bbee051744299486da61e5914d04a862f0b85c` | ⚠️ Unaudited |
| GROTeamVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387152 | `0xf43c6bdd2f9158b5a78dccf732d190c490e28644` | ⚠️ Unaudited |
| GROToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387110 | `0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7` | ⚠️ Unaudited |
| GROToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x44e9eda64da8f61c68c7322e8ee3f14c73dbfb29`; ethereum `0xeed443d67eeaf59a29cc19871fd5af6476e18c04` | ⚠️ Unaudited |
| GRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb732473b9b1e56f8d1e68bc3fd8bb65e9a338e03`; ethereum `0xf1e803c90ccbe6a07ba482bf8525954a9c3ec38b` | ⚠️ Unaudited |
| GRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-387146 | `0xd4139e090e43ff77172d9dd8ba449d2a9683790d` | ⚠️ Unaudited |
| GROVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387117 | `0x748218256afe0a19a88ebeb2e0c5ce86d2178360` | ⚠️ Unaudited |
| GROVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387129 | `0xa28693bf01dc261887b238646bb9636cb3a3730b` | ⚠️ Unaudited |
| GStopLossResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1b2980d56f7ed127fb40e5c2a4d3e5cdfbf4c2fd`; ethereum `0x4ed7419e9785d33541f5dd9d6940e365641783a8`; ethereum `0xd16a8e516583b0aafa9228d1080f34c59584896d`; ethereum `0xf0b9d0297e281e5082eceb26787cfcd457181cfa`; ethereum `0xf285d0c6f4c7179ab3d4ce7e17419b012ceaa3c6` | ⚠️ Unaudited |
| GStrategyGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x117b2e090cfe19cb6a246f690e58c54cbeb6b7b3`; ethereum `0x1344c2faf20f72d2bb15b7601f5ee3c7dcdcd984`; ethereum `0x4b1821217837c9f5fe2a9b1c32c75bbcacb47765`; ethereum `0x72ad58f0917deb04ec8b6ada584abd0dbe502128`; ethereum `0xe09de1b49118bb197b2ea45d4d7054d48d1c3224`; ethereum `0xf1e389c7824837140f29c00c0d048cf2072e4732` | ⚠️ Unaudited |
| GTranche | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387103 | `0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a` | ⚠️ Unaudited |
| GTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23e8d5c2b26a4a05dc94ea79807272fb664721de`; ethereum `0x5c08069e456407356c391f87d37d28a08a83c6bb` | ⚠️ Unaudited |
| GVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387102 | `0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3` | ⚠️ Unaudited |
| GVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4d9c9760ad1597c7c68cc4cde21f9c43e62d82db`; ethereum `0xae013d9bfa88f54a825831f969cb44ee020872d8` | ⚠️ Unaudited |
| HarvestResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8f52c8d809f58ace0bdb593c1bb14f2f6b08a6` | ⚠️ Unaudited |
| HarvestResolverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bc15c63e47bd9bd9654f164a6f7b9276c97e85` | ⚠️ Unaudited |
| Insurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a070363f6db6a74caaf486dde6da013e5cd050e` | ⚠️ Unaudited |
| JuniorTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x499c1d2e0703f34cb2195fef9f9d2ae74be78a4e`; ethereum `0xb0279d0338d2eadd97f199ef7f31ba77ac8759b9` | ⚠️ Unaudited |
| LifeGuard3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5d3ab53b6b66f86bbfabc2a58c0f26ea7dfb8126`; ethereum `0x8c2f205b8cf1d11f74477ac4e5ae6b9d26f5f889` | ⚠️ Unaudited |
| LPTokenStaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387100 | `0x001c249c09090d79dc350a286247479f08c7aad7` | ⚠️ Unaudited |
| LPTokenStaker | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387108 | `0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c` | ⚠️ Unaudited |
| LPTokenStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf63c9d278f23ba9c5a3d781b53b63f4f039b8eb5` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d39eeab3bf514b4896b520d3035ce034ed45380` | ⚠️ Unaudited |
| NonRebasingGToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387109 | `0x3adb04e127b9c0a5d36094125669d4603ac52a0c` | ⚠️ Unaudited |
| PnL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387153 | `0xf67a426e110c74c566174a37c9269780fb48096d` | ⚠️ Unaudited |
| PnLFixedRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387105 | `0x271d1b123932b5b469aabc9c5b870d2a744861e6` | ⚠️ Unaudited |
| PnLFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbc1c7ab50e423b28ec1b76b75fcafc2b0a498d8a`; ethereum `0xc19df09a6ecb926853163e37b9d80e35b683a3f6` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a25fd29e2033d9519b77fa0d649dc9aed219a13` | ⚠️ Unaudited |
| RebasingGToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387150 | `0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b` | ⚠️ Unaudited |
| RedemptionPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204d9de758217a39149767731a87bcc32427b6ef` | ⚠️ Unaudited |
| RedemptionPoolAlloyX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2f1c3facd4ad3dfca382ef7fc49651014542e1d0`; ethereum `0x5a016d6d9610f5f8feff0fce04fb11f8ffcd34ea`; ethereum `0x9c05b74b2dc5a57682e66ddf35e1f220b5ac0aa1`; ethereum `0xd7499617b283a060727b15222187adc544db163f`; ethereum `0xefc812a74ea5db6913e676f20fef66b22fc66432` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f90622f3df1fe37e6233a8446a835ab032bb941` | ⚠️ Unaudited |
| RouterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xbd5ff7ec8fe734eae41204d2cd0122cae22eec41`; ethereum `0xf66bbaf6e6bf9d9440c4be06b824343380100af9`; ethereum `0xfe620d20b3ed77ec0934fbe9df2147f6f3c62599` | ⚠️ Unaudited |
| SeniorTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77fbd7d2cddce76573001a48c90fa46aefb0a8a0`; ethereum `0xf0e00481d623fa7adf06b3453182418b7d0cf233` | ⚠️ Unaudited |
| StableConvexXPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2140f2af979c96966916d81e7c735ae858581cb` | ⚠️ Unaudited |
| StopLossLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387107 | `0x2b369ba27174a3c33a3922340ccd3e937aef4470` | ⚠️ Unaudited |
| StopLossLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b8dc44311386927549bf4d1f5df41b39d4242e9`; ethereum `0x886a5790ba2f549b511a5b59fbeedf8184f60318` | ⚠️ Unaudited |
| StrategyHarvestStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x14a0982c6ceb2ac27f404f0dff97aaf908be0ec4`; ethereum `0xbd49a881e5e87d4d078536e9d11475453013b455`; ethereum `0xf03ef5142df61555a3d0ca740a7d7c90a231246e` | ⚠️ Unaudited |
| StrategyIdle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3d9228ef8d9750d9c43f9155315dede57ddee1` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1aebe9147766936906ab56ec0693306da3539824`; ethereum `0xdc954086cf07f3889f186118395bad186179ac77` | ⚠️ Unaudited |
| tokenCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa646109d183f83225e861c0acb7fe53e78d21f90`; ethereum `0xaffbd08b4754c3423f3583398c5749bc22f26ad7` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387104 | `0x21c5918ccb42d20a2368bdca8feda0399ebfd2f6` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387106 | `0x2ac5bc9dda37601edb1a5e29699deb0a5b67e9bb` | ⚠️ Unaudited |
| VaultAdaptorMK2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 30 deployments: avalanche `0x0b2e717e1f11c8294a655d6a235f8d1ad7ef395a`; avalanche `0x2388977399ce436cf902d43a75c6d078898c0f33`; avalanche `0x2db7975dca9aeea938abe4c56a066207951aa0d5`; avalanche `0x2eb05cffa24309b9aaf300392a4d8db745d4e592`; avalanche `0x3e3cb9cfd469bc9abc5b8a95e4ffe5299b8e28ca`; avalanche `0x471f4b4b9a97f82c3a25b034b33a8e306ee9beb5`; avalanche `0x48cb6fd436d34a909523a74de8f82d6bf59e6a3c`; avalanche `0x514c3230f0b1c93e29ea59fe8da3cef0d4f1e0b7`; avalanche `0x57daed1ee021be9991f5d30cf494b6b09b5b449e`; avalanche `0x5e57e11483a3f60a76af3045303604522059da2a`; avalanche `0x6063597b9356b246e706fd6a48c780f897e3ef55`; avalanche `0x6518beca1c20221cf6e8ba6f77b85818d1a298e7`; avalanche `0x6bacf8ceffb5e17e1c62824d9216e6ee89e52b99`; avalanche `0x6e4036db664e994907052e32c5150d8aeb974f39`; avalanche `0x6ef44077a1f5e10cdfccc30efb7dcdb1d5475581`; avalanche `0x6fff1e1140034897f5b370b931fbd7e4970fe130`; avalanche `0x720e5ecfe240a65ca236e5ec626f91036ecc260d`; avalanche `0x72681d8dfce95b275fd5d2bfba199f78c9b0d7ba`; avalanche `0x79b14d909381d79b655c0700d0fdc2c7054635b9`; avalanche `0x7b2f293b2164c70834c134dc6ba61e6b6119f0b5`; avalanche `0x82e40e1626ebb4076419b49b9403d9ce2425b956`; avalanche `0x8dbd821b96498a8a7a05024b23d6b58c8a0df98c`; avalanche `0x95284d91e69beacaaf90ad6fd3d6c959eb900ba4`; avalanche `0x9741f6f00513af4cc705a3f0240df279e5690694`; avalanche `0xa36fb886b458688c05616dbdb819eb34b6fbbba3`; avalanche `0xa97ab88e897637e79ee9d1e44c3373db55df275d`; avalanche `0xad6c0751e4fcdca0926174248f67184880a1dbbd`; avalanche `0xbdec31c3386481585aff7b38ca200cbf597cb96d`; avalanche `0xbed10235a181020f2b3a974c5c9c5454b7414635`; avalanche `0xcc20ce15425a89614bd7a3b539a3c966fa7ffbc2` | ⚠️ Unaudited |
| VoteAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x156d9aad5975ec9aa9e2c621f408c8469d0d6953`; ethereum `0x2c57f9067e50e819365df7c5958e2c4c14a91c2d`; ethereum `0x519a27636e13d177e5c50aaf758b72de9360651c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x03b298d27b0426758cb70c4add6523927bd7cc8e`; ethereum `0x6a01bc748d71489372bd8fb743b23f63d99aac85`; ethereum `0x8029157b06be67693dc0e94fbfc55b200180f548`; ethereum `0x9cd696a225d7a3c9ce1ed71f5bdb031234a86d79` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387140 | `0xbcb91e689114b9cc865ad7871845c95241df4105` | ⚠️ Unaudited |
| WeightedPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387116 | `0x702605f43471183158938c1a3e5f5a359d7b31ba` | ⚠️ Unaudited |
| WithdrawHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387112 | `0x641befa4db601578a64f0fc1f4e89e9869268fe7` | ⚠️ Unaudited |
| xGro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0f6788b45b282d7e77f1facdc69803e51440442d`; ethereum `0xbd35356d494934f71cf39205853d152b3811477c`; ethereum `0xd561d527c04c049afbdf900f8b0f23226a9c6646`; ethereum `0xfac5bbf09c7421a2dc7288163864f5d0bd708f03` | ⚠️ Unaudited |
| YearnGenericLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea5a6c635b19a4c27bdb2bca3d868bc6e2d3208c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (99)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05acf686eee0cbdcea1328e759402ab4ae01372f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x062be16e83337f326ab69b900b031219953cafe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085873b5fb1bc6833ce995a4cd856d0cc6c95748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aeee4c5ea2c7399af18f97e783fec6d3539fee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eee1ef4b178262b0c7e95400dc110e84871488d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109c462ee2d818ac459e510bcc041f884494f752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d415dc03ee189a8fae0cea176000b8db2465de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a2f8ee421603013c148bba8f7b307d1b2a4a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1571d870b0dc12129aba430e3bd5c09a770029f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4b5080f626451424050d0d2677fbbdf9411a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b1ee90cce300ebef256e08883c17edab79816aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f1f42dedd15f118f38f45db30353de08ef9fb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2990017de7e10fc8c1e4b4e86eb0895dc3177846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a4e5cb592d254f21665b709a6e4e0f4a75cd1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d63b9a5b6aee714448d5c1476a34c4975ef4139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f5e1f2c98d1b9e547939e82bbe18f524f9df65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f484c7d29974f48efd85d3f38b83f9d43899cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bf325c7895bfae171a5f93c8dc8a9a1cd4a2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc1baa5d220aafc334dc92c8495a7ab64c0a791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400ea1f2dbd88a5ac10c142811967b1c968793d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4232e88e255de350a295434c73e5e19b61d165d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437e8f2f12c9c8463e0c028d717c6cdb6cf716c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b6c0c8f1495ca671edc74999b75965ab290e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44a0a49b3116a04eef0341ae78ee26a2816caea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48cb6fd436d34a909523a74de8f82d6bf59e6a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b05a9ee3cc58a968d133b0e8f5bed9b96a8855a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4a81298cc85c5bbf8092bd241fcc5dd6ec3f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da038a96f5f5594ce907a023a4a2cd4c21461eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x514c3230f0b1c93e29ea59fe8da3cef0d4f1e0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e6cf7dc98828e1b188d2bcf3f63e294281fbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549e70c14e9bea60e4646264f0ff5992292498c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387111 | `0x59b6b763509198d07cf8f13a2dc6f2df98cb0a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4042018b4e03cfe2892f27d84e07ac5cca4113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebdf8aad66aa9b0740c2cd1da83d30feca6cead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec72087e06cac89505ac30ee203745241d504e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e2d922cb9d7fb8585b443a9df5424b377245d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651cdc0863779a7d1a0655c168aca5403987a335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1e68d2cc52696241fa17ae198f41ce84078328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4c2e0709bc8da0e20b2d2bf28011062f234188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f15b69ac756dde0c716d0c0e4900c6cdbaf29bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x715b548ed664488bdc6429122dc5c86a0f6173cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720e5ecfe240a65ca236e5ec626f91036ecc260d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x732a3a2e00362802c422cdad0343efb2e1a37a8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387119 | `0x789190466e21a8b78b8027866cbbdc151542a26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ed7ad7886ae2c2e27797989cb249f9165244d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x791e9531afd72f2c1e8c265f4c5e61447ebf5d64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387121 | `0x79b14d909381d79b655c0700d0fdc2c7054635b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4b446f42016c12b47899cec35f417cb290524f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815d0e4ada37a1f4cc9bfd029dedba1afc51f0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83cfa7282ad906207d90324405cb6dfe1cfc3e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84598273630781c2a0ed4e5801d858557b93df6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b958d88ca8002c063d91db92ed061c273cd4f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4b3eed7febdd7b85d930aee59b1ef34bb3af2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92472c99993ac32403f044ab26bb22121965094b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935f5bff123ce7ae2fb74be3e237d3f5210be04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95d30dbb2f8473acd7bc24343503b6c8b9f58012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96527d13b943b404fb1019e4767048f5a24b0c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9741f6f00513af4cc705a3f0240df279e5690694` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387128 | `0x9da6ad743f4f2a247a56350703a4b501c7f2c224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff07c7e476829235021debe32d5db656a11ddf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18af2d39a7b5e582339cc23b01fe3a37ad15a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa69f301876a55f3e3d4a84664c98fb7c7bc0615b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387131 | `0xa964273552c1dba201f5f000215f5bd5576e8f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabac9217005efcf9a17563326e47b2cbaa8ad3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc4d9cfeca661ef5eee226aa8f25eed3f730722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad393de40068a71907d678db55ca48aa99d2448a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387134 | `0xb4e16d0168e52d35cacd2c6185b44281ec28c9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6b16332d6105438d7573a603a9c26599f0f7dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90efd9b22dd5a84fb8d93585f6f88da5bf68801` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387138 | `0xba12222222228d8ba445958a75a0704d566bf2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387142 | `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc118f2eb1291f9bc0c2a4c2d61b59f1785b047b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc36dec6be563a59d3fd4b70a720dbddd617b202a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f64799c1cdf2c40161b98df86e36ee6a8f1275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc94ddeacff69bd206ceddfe2b601a277225d23d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1f75c20f1df51aa86d3db3c7fe1d7b355e55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbbcc56f9f8883992ca21bbda2b8c0ed293b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcded5e77d6395d82f1c4f97825aeb5f5740ec165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5dc119c97541cdc969ef238689d5335bf285b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce6e6ce4d30f51ae45d9dd0fef1b7e9d936e5866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e72680ec1ed15a8510e175c65eadf6f6e610c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387147 | `0xd89512bdf570476310de854ef69d715e0e85b09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbcf4f419b0364c81f337eeceb47ba76e1404af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc0c531f3de114d592f7423630bd00cb8f0db43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcbcc3c3aac87ad3d445bbc97ff905440d0f7232` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387148 | `0xdec0a100ead1faa37407f0edc76033426cf90b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf1ebf04518d08812c899b72272c074e36b49020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe274ecf4ab31363a1ad7dacb663cbb4fdeee49b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe664b73ce29ba81666a137ae577797a0de230682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7ff0ebdc8414e8c0fb057fabde1555a978ac28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecd7a2814de400fce7ca39b38c4a562bf5a25ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d352d2e2fb8fd804dd2e8473d453edfb12c0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58aa7ec0c182e8b84e4afedf4855fcbe9e711c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6a028be84ca4cd70a210380084ed5571afb3da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1dc5d17827565a32b7f9e8601b9c21c1343476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b4c9071467422e4bcb6095ba8db1972d718380f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fb230a48fa558058c313ef059d87be862b73066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4801de71ecabf5b85d3a51c461fce657aa93f50f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31b81ffa8c8455fc81c981ecf38ea2d5e8197d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6b1bff72f00cc147b5dc7a5b156fe7a6fd206dda` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf3d39a7feba9be0c1d18b355e7ed01070ee2c561` | AirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7207ea9446dca1dec1c1fc93c6fcdf8b4a44f40` | DepositHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc535cfe245d8f969e647b3dd8be1255ec076ee76` | EmergencyHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02c133b9fbffb8d2e8cb7b7a94c7c880b331c720` | GMerkleVestor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c268bf50e64258835029c30c91daa65a9e55b5a` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b4a30c8884ca4aff1e4c82cce79802a63e61397` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef10eac205817a88c6d504d02481053e85a8f927` | GROHodler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf43c6bdd2f9158b5a78dccf732d190c490e28644` | GROTeamVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ec8798b81485a254928b70cda1cf0a2bb0b74d7` | GROToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4139e090e43ff77172d9dd8ba449d2a9683790d` | GRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x748218256afe0a19a88ebeb2e0c5ce86d2178360` | GROVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa28693bf01dc261887b238646bb9636cb3a3730b` | GROVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19a07afe97279cb6de1c9e73a13b7b0b63f7e67a` | GTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1402c1caa002354fc2c4a4cd2b4045a5b9625ef3` | GVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x001c249c09090d79dc350a286247479f08c7aad7` | LPTokenStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e32bad45a1c29c1ea27cf4dd588df9e68ed376c` | LPTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3adb04e127b9c0a5d36094125669d4603ac52a0c` | NonRebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf67a426e110c74c566174a37c9269780fb48096d` | PnL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x271d1b123932b5b469aabc9c5b870d2a744861e6` | PnLFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0a93d4994b3d98fb5e3a2f90dbc2d69073cb86b` | RebasingGToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b369ba27174a3c33a3922340ccd3e937aef4470` | StopLossLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcb91e689114b9cc865ad7871845c95241df4105` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x702605f43471183158938c1a3e5f5a359d7b31ba` | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x641befa4db601578a64f0fc1f4e89e9869268fe7` | WithdrawHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 99 |

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
