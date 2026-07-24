# Agentic Audit Brief: TheDeep

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: TheDeep (`thedeep`)
- Website: [https://app.thedeep.ink/](https://app.thedeep.ink/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc, celo, chain-763373, ink, polygon
- Contract surface: 351 unique implementations (422 raw deployments)
- Coverage basis: 1/16 confirmed own live verified implementations (6.3%); conservative 6.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,543,580.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for TheDeep. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across base, bsc, celo, chain-763373, ink, polygon. Structural roles: 13 unclassified, 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (13), core (5)
- Contract kinds: contract (18)
- Detected standards: ownable (2)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- deep_vault / deployer (`0xcbd1f70235904d3764f5d159022ba0281536e3e8`, chain 57073)
- deep_vault / depositGuard (`0x51339a25fb3f8351c43b4b552af82c1b234fed93`, chain 57073)
- deep_vault / Pancakeswap / deployer (`0x05cc3ca6e768a68a7f86b09e3cee754437bd5f12`, chain 56)
- deep_vault / Pancakeswap / deployer (`0x7d11de61c219b70428bb3199f0dd88ba9e76bfee`, chain 8453)
- deep_vault / Pancakeswap / depositGuard (`0x16edb18643a49e11a253ac05e7b870827e348ef8`, chain 56)
- deep_vault / Pancakeswap / depositGuard (`0xfa196a6c9137b320e8801252e3020f25aee5c234`, chain 8453)
- deep_vault / Pancakeswap / volatilityCheck (`0x2454e75749322d59278bca48cbd96dd62274359b`, chain 56)
- deep_vault / Pancakeswap / volatilityCheck (`0xeb8be56f9e22431d9fd41215047833ac7742b5df`, chain 8453)
- deep_vault / Ubeswap / volatilityCheck (`0x17836940f24fdd0052a3ff06f12232def03000b3`, chain 42220)
- deep_vault / Uniswap V3 / deployer (`0x0768a75f616b98ee0937673bd83b7abf142236ea`, chain 137)
- deep_vault / Uniswap V3 / deployer (`0xfacd9c86f7766a5171bb0f9927de808929429a47`, chain 42220)
- deep_vault / Uniswap V3 / depositGuard (`0xec89a8ccb1068a74ff8d10ff69e9f1590a6712b3`, chain 8453)
- deep_vault / Uniswap V3 / volatilityCheck (`0xe83a69e48a5715afe11ae39f6837035c1833e8fc`, chain 137)
- deep_vault / Uniswap V3 / volatilityCheck (`0xe142091351e8b2b53c1d67c73f8868c13d5dbedd`, chain 8453)
- deep_vault / Uniswap V3 / volatilityCheck (`0xc9dcd76854823a1c7b322f4c265d9d1a7653bb42`, chain 42220)
- deep_vault / volatilityCheck (`0x698e9fc89db4b865861e30a1dbd131f6e59ceed0`, chain 57073)
- deep_velodrome_vault / Aerodrome / depositGuard (`0x4a094b3e476d7c94445f023b5dac837f9e0f98c2`, chain 8453)
- deep_velodrome_vault / Aerodrome / volatilityCheck (`0xe00295788e91f09c5383f95df39a8916d0ab76f7`, chain 8453)
- deep_velodrome_vault / AerodromeV2 / depositGuard (`0xcde73030129a32724872956ac7e419a419054b87`, chain 8453)
- deep_velodrome_vault / depositGuard (`0xe6d6395a8ca329beb990e3b60324769b3b7657d1`, chain 57073)
- deep_velodrome_vault / volatilityCheck (`0xd3db0880f7bfca386d37a9f28f6548110e947894`, chain 42220)
- ICHIVaultDepositGuard (`0x2b8ca8e6768e49f1256f91bf5b0d8f30a776d4c6`, chain 137)
- ICHIVaultDepositGuard (`0x238394541de407fd494e455ef17c9d991f4fbed8`, chain 42220)
- ICHIVaultDepositGuard (`0x62fd1824c810906f449227f1f453528bb54774c2`, chain 42220)
- ICHIVaultDepositGuardExtendedForMFD (`0x141db85183ddb07dee22c33846aebde2101d9f25`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (16 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/16 (6.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 316 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 25 of 351 unique; 326 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 310
- Unique implementations: 351
- Raw deployments: 422
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 2.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | celo | unit-394038 | `0x238394541de407fd494e455ef17c9d991f4fbed8` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AegisVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x289dc4313997f78f04c2959a9a50aec4739df1cd`; celo `0x3586c614486ee965275f7e33a17295fdfeffa98f`; celo `0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d`; celo `0xf36abda56b4a07800ec7cd52bf3bea3014b851b6` | ⚠️ Unaudited |
| AegisVaultERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29`; celo `0xd20feb1df00171aa2f59c9f53c4dd230dc1f39a6`; celo `0xeecb7ba52f1a689574e2f64242743f0a0ad9eb3c`; celo `0xf92ac78dac667bae6b55c53b4da93c5c6ddd3cdb` | ⚠️ Unaudited |
| AegisVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x51a0d74e1791399ce02aafd9a21dc4637fe57959`; celo `0xbeff7973ff3dfca2aa86e1da41abc8321334f6dd`; celo `0xe83a69e48a5715afe11ae39f6837035c1833e8fc`; celo `0xf39a4c7c87310116ad915833769d301c599b0298` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / deployer | unknown | project_anchor | own_supporting | 0 | bsc | unit-394046 | `0x05cc3ca6e768a68a7f86b09e3cee754437bd5f12` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / deployer | unknown | project_anchor | own_supporting | 0 | base | unit-394061 | `0x7d11de61c219b70428bb3199f0dd88ba9e76bfee` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / depositGuard | unknown | project_anchor | own_supporting | 0 | bsc | unit-394047 | `0x16edb18643a49e11a253ac05e7b870827e348ef8` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394067 | `0xfa196a6c9137b320e8801252e3020f25aee5c234` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | bsc | unit-394048 | `0x2454e75749322d59278bca48cbd96dd62274359b` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / deployer | unknown | project_anchor | own_supporting | 0 | polygon | unit-394033 | `0x0768a75f616b98ee0937673bd83b7abf142236ea` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / deployer | unknown | project_anchor | own_supporting | 0 | celo | unit-394045 | `0xfacd9c86f7766a5171bb0f9927de808929429a47` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394066 | `0xec89a8ccb1068a74ff8d10ff69e9f1590a6712b3` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394064 | `0xe142091351e8b2b53c1d67c73f8868c13d5dbedd` | ⚠️ Unaudited |
| deep_velodrome_vault / Aerodrome / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394059 | `0x4a094b3e476d7c94445f023b5dac837f9e0f98c2` | ⚠️ Unaudited |
| deep_velodrome_vault / Aerodrome / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394063 | `0xe00295788e91f09c5383f95df39a8916d0ab76f7` | ⚠️ Unaudited |
| deep_velodrome_vault / AerodromeV2 / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394062 | `0xcde73030129a32724872956ac7e419a419054b87` | ⚠️ Unaudited |
| ICHIVaultDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 9 deployments: polygon `0xd20feb1df00171aa2f59c9f53c4dd230dc1f39a6`; base `0x065cb8139e9fed6c97f8b0851e599c56286ea031`; base `0x5507b537650897493aed459457255996bf98d8b7`; celo `0x544113cc95cc2d076065c6028ab718d8682756e1`; celo `0x56120079d3ed948223c746e07199cb388f9fbd20`; celo `0xb78144a950ed367f8fb94322bfa079f30bc8eb68`; celo `0xe3f26d6fad0613c9d7f6b8e6e644f7fa09900dd4`; celo `0xfab743b967ea5b8268e4d8f11159ad9e8e7c068b`; celo `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | polygon | unit-394034 | `0x2b8ca8e6768e49f1256f91bf5b0d8f30a776d4c6` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: polygon `0x7f659c9010e5566a2628d1eaf0cebf149be3dc06`; polygon `0xeecb7ba52f1a689574e2f64242743f0a0ad9eb3c`; polygon `0xfb6c432e2fd193d3fc59519aa8a676f5d6bb4417`; base `0xbf38e4ffb0b0aa075531b38d71d3b18a5f599819`; base `0xe2381b5afae99b899596bc550184a080daa31f26`; celo `0x4fa116f8864ee7d7cee1f5fbb58d41b70d75a529`; celo `0xa19595c6ca6186621ddde0dba0ad24c5e84d5a14` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | celo | unit-394039 | `0x62fd1824c810906f449227f1f453528bb54774c2` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | project_anchor | own_supporting | 0 | celo | unit-394036 | `0x141db85183ddb07dee22c33846aebde2101d9f25` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb066a06c730e9930e28c6f511198abcca49029c3` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394043 | `0xdb771ed1930b1a5993ca878e8c4f9a3e0dd6fccc` | ⚠️ Unaudited |
| ICHIVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 12 deployments: polygon `0xf39a4c7c87310116ad915833769d301c599b0298`; base `0xabe5b5ac472ead17b4b4cac7faf42430748ab3b3`; base `0xbff23e60f41a11cf131b7180cbd2bd3d47d17ad1`; base `0xf6b5ab192f2696921f60a1ff00b99596c4045fa6`; base `0xfbf38920ccbcff7268ad714ae5f9fad6df607065`; celo `0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6`; celo `0x2f4b480a83b4e0bc1a8203ed039539fb2c36d085`; celo `0x7df494ad51faeafb8c46c63d23ee40a48b14e975`; celo `0x82dca62c4b5dd28cc85ce8ae3b170ce020e33870`; celo `0x8d05f6870106707baecfcf5c0570db7a583eb92a`; celo `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f`; celo `0xb3bf88cb919a222a6f9c90ca8a9ac261cbd3e5bf` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56` | ⚠️ Unaudited |
| MultiFeeDistributionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x5ccf5a000129988e4512408bc49d94e62f581afd`; celo `0x772960d9a88004cdb2cc0fca020e04bfea3790b3`; celo `0xb005d5b820acc4b6b86fb67cd14013b3c50002fc`; celo `0xe734a15e60d2ec14225cd3e2da56c11608e73017`; celo `0xf251d047792f52790200881de177644b8938eb5a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1b0ef045830466171d617dd0f1142ad699a4cd63`; base `0xbbb97d634460dacca0d41e249510bb741ef46ad3`; celo `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931`; celo `0xb978c58fa57bbd3951d053edea493e5c3ff1a415` | ⚠️ Unaudited |
| QuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2`; celo `0xb1fa728d712bf35ea1adf0f949410f820e7bd171`; celo `0xc7ea641156d1b6230c637d46699eb868ba02d9af`; celo `0xe1962f415feb5915962d5d3a075311e6be0f8f85` | ⚠️ Unaudited |
| RebalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2d2c72c4dc71aa32d64e5142e336741131a73fc0` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf8b3f6727e44abb211c0049fc849fbb091ff765e` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x215d61c7a658847c9595cdf8d145fd69c2e3a50c` | ⚠️ Unaudited |
| RebalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xfa196a6c9137b320e8801252e3020f25aee5c234` | ⚠️ Unaudited |
| SymbolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x52a60fa5092f92b96d1a007eedfcd349d6ce2471`; celo `0xa2969b83fd4e5decf46f037a26f8e5048b494db7`; celo `0xad8408d13381815fdb1b598bf162e7be8740b780`; celo `0xbed3cea309c8e413f785e1b547d06f37c49de85e` | ⚠️ Unaudited |
| UV3Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 14 deployments: polygon `0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d`; base `0xb177cf10f4382f671e5923c6c06f7b601d5a04e2`; base `0xbf60a8e623d4e776f6ffa94d8bb7ef7c22e057a1`; celo `0x065cb8139e9fed6c97f8b0851e599c56286ea031`; celo `0x3b5fbce2bd4587036dc1d7df44296f19094e0d3b`; celo `0x4608121a8d9a5f54664649e95e40829286898738`; celo `0x7a4ae815d561d267a0695b0fe8fe7f01728ede18`; celo `0x7f659c9010e5566a2628d1eaf0cebf149be3dc06`; celo `0xa45a0a9517700b747d61ab3e7f1bf673e43d883d`; celo `0xacdeab6e5baf2c9cffeb37d79271a5bd6635a3a6`; celo `0xafec075e37e7743593aeb2b67cfdd2907bdadf69`; celo `0xb9b42bf1478334df3557cf7a3793f6a3ff626dcc`; celo `0xf6b5ab192f2696921f60a1ff00b99596c4045fa6`; celo `0xfa02638efa7d79717b071a4e4fc5062d0d1b97c5` | ⚠️ Unaudited |
| VaultLocker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 8 deployments: polygon `0x39db7da035752c969265ef0cc5ab8481ba38510a`; polygon `0x4608121a8d9a5f54664649e95e40829286898738`; polygon `0x6e2bbd6035cb8d2b97be8e0c1e06c6b61fd1c814`; polygon `0x827cce45e8d39088e21cef2642f43100d0543047`; celo `0x0de3ba021a151030f344f8d05595672bbe31658c`; celo `0x2a8d0321cdac91be9da82d069c6116106ed0e337`; celo `0x7f2eaf858c5ebac086eabf3a3afeb0742fad8a65`; celo `0xd2c08d7a919b86f939cd4788caaa136de85837b3` | ⚠️ Unaudited |
| VaultSlippageCheckV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x69bf658252d8fd535a28a5cb477abe42a2d44e2a` | ⚠️ Unaudited |
| VaultSlippageCheckV2_1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaa650baa871269952b12a8ed8fa88d5c64157158` | ⚠️ Unaudited |
| VaultSlippageCheckV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcec8716cdd60856eacaa74d499abd14ae34b7da8` | ⚠️ Unaudited |
| VolatilityCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4eecd2cee06598c942a4c24f91b4452a1b11d6da` | ⚠️ Unaudited |
| VolatilityCheck | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394040 | `0x6c2e26005a0c1b5f610aacd9895d58f10f74e72e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (310)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| deep_vault / deployer | unknown | project_anchor | own_supporting | 0 | ink | unit-394054 | `0xcbd1f70235904d3764f5d159022ba0281536e3e8` | ❓ Unverified |
| deep_vault / depositGuard | unknown | project_anchor | own_supporting | 0 | ink | unit-394051 | `0x51339a25fb3f8351c43b4b552af82c1b234fed93` | ❓ Unverified |
| deep_vault / Pancakeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394065 | `0xeb8be56f9e22431d9fd41215047833ac7742b5df` | ❓ Unverified |
| deep_vault / Ubeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394037 | `0x17836940f24fdd0052a3ff06f12232def03000b3` | ❓ Unverified |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | polygon | unit-394035 | `0xe83a69e48a5715afe11ae39f6837035c1833e8fc` | ❓ Unverified |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394041 | `0xc9dcd76854823a1c7b322f4c265d9d1a7653bb42` | ❓ Unverified |
| deep_vault / volatilityCheck | unknown | project_anchor | own_supporting | 0 | ink | unit-394052 | `0x698e9fc89db4b865861e30a1dbd131f6e59ceed0` | ❓ Unverified |
| deep_velodrome_vault / depositGuard | unknown | project_anchor | own_supporting | 0 | ink | unit-394055 | `0xe6d6395a8ca329beb990e3b60324769b3b7657d1` | ❓ Unverified |
| deep_velodrome_vault / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394042 | `0xd3db0880f7bfca386d37a9f28f6548110e947894` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x08992f9f36510abb1c31785c03f36863c3009691` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x641da39d1f5582f05341d8e836520bf1744a4cdc` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x67de648799d29f5b70fcf42d8c9d3de0b0c7b278` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x8cb886a9f7e86d0429bb79af468258e54735a23c` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xdbbdc296edfcc06815b7d8fadae4be53d78773b9` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf1d63f9ed15368ebd4810b2e9a5ea5e2bfdbfac8` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xffaff16ab9543dd2a3d24f5ea6f1de6391130c34` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x16eb8e3b7d23b9eddc82ba0e034860e722b96483` | ❓ Unverified |
| RebalancerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x606332d543ba56be41bfa412e038612f34016d05` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x83ee9021c1c51dd2601f87f20230db6b3fedc23f` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xe04ba74a7da7807427c345dc235164ef2ccbbef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01eebba41fa1c5c8655fde507a816f7df76702b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03d34aad38105e8da0456765cb287c28f8b68bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x041285b5a653956cff1e434359dcc3a704282bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x076e46a317dfae50eef30dca94ff41a63118948d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07c4af336e076faf2f41020860279c9431d91efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x097cdb86deda87bc038eb13ef4488fff30a1255c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ac9e4a0423eec93357e2b0f83ef8c6469fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cea41a282852e72fa6901d23ac63bc59e45be7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0de3ba021a151030f344f8d05595672bbe31658c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eba278cd39fe9c7c21e0c8cb7099467b3863eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eebbaa800c4a63f5e403c88f94cf75853475d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f157b2c2d32444f5682a628ca09bc22007ef449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12f19bf099cf1e121d36c210e81c3995db311515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1301253b3c873bf72925d5b98a23c11f819e7f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x132a9710530dfe863b7d99c9fc795accc158ffa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x141db85183ddb07dee22c33846aebde2101d9f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1566fe51d83f4c387c5fa2b0e1c47bfefc1724d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18eb79810ddb765e8e57a185a5afb426ff1c837b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a3ebb29d65a09f6a7315c17c52ef2e79cc22702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b364d34071b6cb98ed70a8302086fbdd82f58d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c264f2fac27abc9c48b09d5b7777049ef75a886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2110488060616425953b2318343cb927e3b074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x204f7c93da15ac68a6665c64d36e5511e425f0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2174154294729e593001cbf0232fb787a914b232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21a2c2b407f8120754a67ef734edae908f73e05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24430e837efb64ef87bb32be03437fc6005eef74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28d642deea13fa95a19b1982c637eafbe7dc5f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b52c416f723f16e883e53f3f16435b51300280a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bb7f2eea0e6995fc1cbe1fbfeb0a1934fb0a41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f4b480a83b4e0bc1a8203ed039539fb2c36d085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32cd2158dd68f13c7fd55bf4d513d19b553bbdde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32d04b23c36579dc6291407ba9d2d777f172950b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33dd330fa4cd38c3a86c523d579373d92147c5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x355f8b466defa96f8cc084d6a2f3c27fe5abc9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36fa990340009b8df683cc997da1ec0a6f5669ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c943f302ac74704a66e04e6f34dac1e47db5de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x464ab5c0615dafb85fbcdc9790e288062e1f9687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a094b3e476d7c94445f023b5dac837f9e0f98c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a72de60a93055139efb3dc8f021ceecad8caa7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c0d7b55447eba4370e9df0923ab6dac9646e4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f949a00f122743b11e4cb0b4f272ea6dc8e44c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x511c5a440263667fe950331f469a88a71dbdbf22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52741d567df6a2400fd15e35fe0046c366b98c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56804100632f87b68d638601b5bf807a334ef3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bc9bb1ffe1243b877aa5602da331f85b1ab5bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5de395dd86b4dbd4bcd2bbf8116146d3573347cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e6bc7d98982ccb030468e6ae9397973536636d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x608042a004112d3ea2031ba29aac3c9aef143593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6331198b8c0fc4cb3fc1d3719eceba9e40c3397e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64da1ab5b42c71e8faf1664745af911b859a06d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65e816ec4c228b13fce915d121cc8c9fa1f474e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x668ae55887dc30de71a18e64928f3f7b81a38ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x690cd36534fbcd2082d7bda8c9a52bea8976502d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69bf658252d8fd535a28a5cb477abe42a2d44e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70cd54a6ab9fd7a816a707016b98d56305784395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72b735e20210fa8bb38e41287cbadc6520ff8ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7372896c2b1a10d274580e1a46c109784aa133a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73efcbdf2a63a886bd63af46210498ebf90d01e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x791968e05585b8d228b4ac946c1e4ca45b071497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b7fd55e8d11aad27b178c681ebc46c0c11f257f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bcce3ac0d053de0b36b71474b769e9efa9945c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6ea2efef6f7872c669381770900b9504e1befb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ca1fe9087c264518a6420adc41841dea9c86bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d18f2d60e4fd6f485419727515807d09a542eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ef6457e6ae4883bdab4a802fbf2e661c747b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f2eaf858c5ebac086eabf3a3afeb0742fad8a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80adf8e120a071264ecba2c3e5969e23c18d5b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x827cce45e8d39088e21cef2642f43100d0543047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x843b09c3a555b05ceadba3c8aa144fada5c68846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85602bf2b0351ac1fe0236327308086d8aeb6ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89069b0458d31e43abd69e9e49bf0f7a8cbf1949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b4dc8a8941173f555c23a34bbf2ca29c19a9cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f7ae06d3fc0e6734a46eef46fd1c12020d9e23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fa675f2b526c3e738536b33a2589dfcc077a250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x908f898dbd7081399a4beca3745827488080a15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x945193b15ea48f1c0f51051ce16bafc7601d640a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x962861ebb8e656c4dccbcfd3bddd86370af1f8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x988c2682caa9a4f77f65661356dc82a8eba6d6ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98ec75f065d028434df66bb29b9f10d805cd4939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x998f04847830945e7d30bf80a5da18e31c9ac395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a69b89a3c53ed09023162b2ab72f2c433e03bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b539b1f78c69ee151bfd4cbd19a8f1044ccb9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0f6b914b24eacfc8180eae9b81749bf3067e633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa24c2392eeb31568d5a21e060f86b3606745fca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa41fef85d7a7debad0cc265ad514716c52919559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa45a0a9517700b747d61ab3e7f1bf673e43d883d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabb886ab160e4c604132d1f10b90a67ac8679be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadde9c8f33a1b7d39c5b5b99c2e9caf0db4de625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae32bfc9bd6297f0b5ec924ce446600b5fbc3003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf56b645191fb5ef62bb055aa7f1ac9b515cea85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb066a06c730e9930e28c6f511198abcca49029c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb07468297d848f164d857d800a92524ec18b4acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb193d1208c577c90c592f14ef31735971d9b8801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba096706a850caf1cadaefe7529db1343a0c187e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba1e1280c80f93768dca8843e91b9498394319eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba6c144a981d7f8949906d4c3b210c42701585a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd054797f78f5bdb7f2f45468b19b5cbbb1cff1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf297259eeb3cc8f374d6dcaa4de54db34d3c3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1e6106cdaa66e2e82075c37f2b971c3e2471364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc23ce4df2f4740d031fb4e7b78f0f12ce1dd095a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc43b2601c82270726e8d9fd991595bb56b6cb884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4c351a89dde4b3d8f52d58e48ce2d1ed1660ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc808cf645060af2d2338f015d65c8f4ae5c8a679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd65e06e086c92c8bb3f6f707ab96a1ecaa64351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3cb84140ed9205dd786ebbbf06c3595c68e3197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6a09756d34dd965c59b811dec2d26f1b5777366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7772c313bea4c357748e825aa101ba6f730b7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8322bff17d4b27b09d5ca64fee530304191b08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd966f058cf2f64101676eb48504fc5fa517aa94a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb03e05b90bed1147df18a1997fac8e045431fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd503c1efb787a37eea080758a899cca57b58856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde329a4f56abc17b8e069bae95ca69d385b0b5a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdef802412c31a378ffd808cf2af6a3f54acb5220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf110272dee92eb59e8b77b14b5a95c001700494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf11a6cdb8db1f64e48af95925e25de88dd08b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf1da53334f1c71a1e377c371e11f55c9cddfc8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe16ce8fe5567aa31343c5809324d0e7d2cf1ee16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3762d764d29dd0a6bad592c870ef85758af7666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe47d9a62c7982e7c8991223270e60903a9b85b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe734a15e60d2ec14225cd3e2da56c11608e73017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7cb9d7e77f973e5341de62255be4bc06e2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8709a09d029f3c73e1f10fedb6b370074743549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef7449829ce18ab7f5164e4fec55a4e575b2c35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefdff73b6a15aa7b6d682d3b54145eae984515f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf06e5757c39518bdbe63bbabc690a04a7426bd89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf10075da7dd842e8c5fba17398e8f64f39c201e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf294a6e9814b4f914c90a399b7c93c3e0eba68f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4eb5a7848dd682f366362fdfd40358cdda18c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6966f7d0cd3b06cf9b222ddd22bf0be6fb69137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8d41b315116a1d0656c94b8af403381b304c613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa0fa9ab7ec69169bdacd2958bc4c02032525170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfab743b967ea5b8268e4d8f11159ad9e8e7c068b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfac2f9e2c03185d34982b99198765955b56b6933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb57d833081ebd65f3226f31c9a1f04e2532f3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe0a8fc7dbb45f6fea38f79949336a851c602912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x097cdb86deda87bc038eb13ef4488fff30a1255c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a13a862d7b9da69f6b4057b4b9f6cea1367fb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac9e4a0423eec93357e2b0f83ef8c6469fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e22c78b0f85ce52b83d2ffb9624ec86e6085cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1566fe51d83f4c387c5fa2b0e1c47bfefc1724d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x183e90bab73d254082800d8c43e3bb19ecb79f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c3eb3c090607b6b1e598b1722b4c91847ee8082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ff3781a5a1e4818db4e5533f08c30f78c28c0ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x228e956d8bf3e33b796b024a664933755a999808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27e02127ad8e8087ce1d6ba708daeb89dafd2d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2de071aca211c3af7a54dd7f5b4c4f1b1bbdf471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31860300e4daf46c6b1503c9061d70cc298f7002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c39f3233dc0ba505978995ac46b52fde2fded58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46a572c5a7c143a9ce6d3108a60da900c78c6b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f949a00f122743b11e4cb0b4f272ea6dc8e44c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52a60fa5092f92b96d1a007eedfcd349d6ce2471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a3da426389529a2aebe2528603e789e7822f841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cfe73b0238bb3e636dc4e68a31bee5d7fbea1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62a7d1fa1e67000e70e2a7ed59a99e39d8265da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65cd1f0ac298519be4891b5812053e00bd2074ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f45740ec47cacba196d6f922e8c2132ec9bd199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f4f7665fd287897227443b48a273d553a87d97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70af57b75b99268a322473c59876c28bba3a2190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x760801d08d37389f5996c7e0edc1b301badb9c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b7fd55e8d11aad27b178c681ebc46c0c11f257f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7debd5f6d6d2d43f0faa8d7fa7098759255c3c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e21f725c8865e72f9d9819d7273d32682bf5459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x830d3cf511534eb2593387393b9657784e5df95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x924b26ed04f7ef1d20254412faa5efba87bb596c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97bf8cb6be6757ab46d44853eabefd0d4c153037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2969b83fd4e5decf46f037a26f8e5048b494db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafcd976baf9d547720c20ae14081f30b3305faf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1fa728d712bf35ea1adf0f949410f820e7bd171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb24a00f2437528b2c73aa744796af513b2e00216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0fe74fd2530516bc47b35a44a24719a2dcc5cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc808cf645060af2d2338f015d65c8f4ae5c8a679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca3e892555bf1ed9be87d72c27d75fed68c3fde1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb03e05b90bed1147df18a1997fac8e045431fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe358529e139e373d4be0a5cf5e5de49744bd65c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4a759ef116d42da9515428fdff87bbe6d63f89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7961f9c4b5e7cec647c559d75ab5a1e6c170500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe84f1cca606b306039b1f5bb2de4bec3c9177227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8709a09d029f3c73e1f10fedb6b370074743549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedf7a8ac90c326062a047e0e879168be3566b463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee22adab82eed77f6601c1083841f4dac1d5bd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee64cb87521a0b6bf589e04c6edcce148bd2ad52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf13de814761c91a6eddaa749e6464e8d10c0e4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf36abda56b4a07800ec7cd52bf3bea3014b851b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbdf07a9c3fd0bb0d78d78a0bddb30709dba5e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfca3b4e8a10a0f3fbaf845bbd65fa88a6c867f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfea6ccabae26edef48e9cc05a599608198211dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02f4a98a4e59e8c7ba3269cbcd1f1e9f3eccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e76a8d053f839a04235341df1f25235437fedd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394060 | `0x5a66306e4b90346504cd88d7bf37b18e0e94c6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x921acca39e8d3519a503ee4a11b56d6eeacbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd2346e0da9540792c2f2e86016bc44ba39dc72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x05043ee22e5e64677d42a632d42a5cb15187947b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0c551e82888ad524125b1160c31f87a7809da944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0e9a6bf68d91a22fd0d564ae33a4a46451d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0ffba729d5f8f05a6c663bf723a0958f1a083b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x130666908899327cd93ecf9abf8e3c0db2ab6788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x14380cbff50df25372c9cb98763732e56af2d796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1657a62455939aaeea9741d95c79973e550e1a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x16edb18643a49e11a253ac05e7b870827e348ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x17f1a5f3f3fe3aa021b75dbade990d25d56fad11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1919c150d0f000aa7a199cdd2a444350cbdc2163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x204f7c93da15ac68a6665c64d36e5511e425f0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x22b2a7e976f0f8060b3c74567c9d0f851c57e875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x242cd12579467983dc521d8ac46eb13936ab65de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x278719fc40d288f40dfd56a31a1354277effe90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x288f5b15650c4fb58dd51788ec0e4546cb5313ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x34513e8a327987bb44acf5a925a7f3b4092d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x36a3f7859d3cc60f8586812712e11eefb7537b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3bc85a1d0b99cc295acd41b26c92cdd56bd0e909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3c568f2e4b165ebdc036d79b5924635ffb835663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3e5685f27e0727846234e2ac8d966b0d7ece1aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4238eb0205f6085b07b347265ce6cc6c261ab723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x48e2633a55e3b007fa2c3fd9fcc8120c4b54693f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4dc520c6839c628ed4a01308e2b7ab131b086497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4f5202b129a83d4f0101fe8b65b10c30dc1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x500c17803359a418a7c7685e00c1a3d5d8a5ded8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x513844eb4841984b768531add4244f0149e27987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x53511764de94cda43cbbadffcca3f29d2efab0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x56326f8a86ed6e77ab5e5d1bc77202670fd3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5df820eef576986aecc0fe4900f6e11492fe1001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x66854c8856731364a92e834a8ac2dff7c862eece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x683334e042141f0fa15ce78e831bd128a3f9b689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6aad667f0f897f9f9a3e2a82618483f7fe53524e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6b7ccf67211f45b7cb308e5dcad5d0397227208a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6dbb1eb98ebe56456a2d5b7b04ae30a7d5866fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6dc6968e11b1100ed01994f693150f731ead61e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6f6b1be0c50519c4c3a3b562ed382f9f9790e106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7582ce7690df96c375c1893c581c47361226809a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7a3bf3ee39af554555f3c15d69cf253e6910d04c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x808baad715ce1e3283ce1a237e08eb2e175dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x822b0be4958ab5b4a48da3c5f68fc54846093618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8244fd5b5c06f20e0f948be4dda480212e8d11ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8386029a2fe3eaafd09b455f48bdec65441c2119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x85840534d8e9afdeae6beb9d2f3d13e2ae0c78ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8e8aa5e4932cd2d92a0f2e4f40c7d0f0142ad7e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x92b1ba6acb1b94899838a25ff59ae295e063629c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x945193b15ea48f1c0f51051ce16bafc7601d640a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x974ea7ab6a01bcf86cdd21362656e3942c7fc0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x994969f2d3af0f49589880869cd435c6fa44369c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x998f04847830945e7d30bf80a5da18e31c9ac395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x99fb98dd8e856ac717c92b042803b8b11e4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a0ebec47c85fd30f1fdc90f57d2b178e84dc8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9bd3084a9485daf0174c79d10190ac00c1241f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9ff36c9e11eb0fb9956054b60bd563c1645bf847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa211394eab9aa2691c7e78ec3ff21ff07dba4f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa24c2392eeb31568d5a21e060f86b3606745fca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa287a20737946cddd05bbd77cae701d4c613e9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa8b1ba27085ff8ee49c8c5a43e262fc4304819dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xae7b342a94a6f528c30d75bc9edc9aa6def0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb108b485d4948681a70cec55d060e4e40fdb86ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb5fb134ac008388e9e0ffacc7fcc64176fa8b025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb838c26ec076a06602e0ea5da34f2482744d07ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbb1385152dbb10c281a16f86b15c7dcae36a6e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbdd0056e10445cc48f4a28f9710676d39f754dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc1de90bd807c230f2d616d02f329952f80f475f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc2ddc723ef3b073e478cdaa2c2b2243f552e261e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc4dcae24f740aec23388302af598538f8836b4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xca1d96adb70aa14acd86ce2538b2d445040d87b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd398090ba2fc528c3d6aeb17ea49038bfcbedd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4d56d64355b524cea5ed59e01c8edcf74d695e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd5996604f5d841bbd1eda10cc44cedc7fe8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd7772c313bea4c357748e825aa101ba6f730b7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd8322bff17d4b27b09d5ca64fee530304191b08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdeb87c4242860467eccefee0fcad15f64bccf879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdf5fea819b003fc9ca1d588907bcc1ffc1766529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe142091351e8b2b53c1d67c73f8868c13d5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe1c41558598e4f9f35db768b25fb3d06b0a998e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe5fa9c01c36f666e858a4dd64cd555d54709a8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7948b93414783e41eedade7c7591ce80277ab55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7cb9d7e77f973e5341de62255be4bc06e2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394044 | `0xed0819bdc69cfb5f4684cb8b5b7ce70d173371df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf2bf7b6f874248f3531ba67af0395257b9d32d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf4113fda5b0446b0ea6ab02f965bcf59c046c90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf891c4377039aa98e5cd42a3d716ec12ff6db75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfc7efdea7dd68160859b795d57309ee1114d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394049 | `0x2f4b480a83b4e0bc1a8203ed039539fb2c36d085` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394050 | `0x388c3ac7039b2c1522b9fb423e6d4271aca708d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ink | n/a | 5 deployments: ink `0x5541bcd3d163326cf12267d1cf6207dbde788348`; ink `0x64da1ab5b42c71e8faf1664745af911b859a06d4`; ink `0x65cd1f0ac298519be4891b5812053e00bd2074ac`; ink `0x822b0be4958ab5b4a48da3c5f68fc54846093618`; ink `0x9176b8eb7fdff309be258f2f2edb32a8b79f19b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394053 | `0xbf566ead23dd101873df0039c9e47934307cf342` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394056 | `0xfea6ccabae26edef48e9cc05a599608198211dd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-763373 | unit-394057 | `0xc5901f39c510c6d8c4d7b692608a6aa8982e4c3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-763373 | unit-394058 | `0xca8310832053de4909fe1a6c89c7200d033cbb76` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 236
- Live contracts: 0
- Unknown liveness contracts: 236
- Source-verified contracts: 50
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=3, candidate review=10, candidate hard block=32, contamination review=1, source verified unclassified=4, unverified unclassified=186

Showing first 200 of 236 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | ICHIVaultDeployer<br>`0x065cb8139e9fed6c97f8b0851e599c56286ea031` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate auto own | ICHIVaultDeployer<br>`0x5507b537650897493aed459457255996bf98d8b7` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate auto own | ICHIVaultDeployer<br>`0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | ICHIVaultFactory<br>`0xabe5b5ac472ead17b4b4cac7faf42430748ab3b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | ICHIVaultFactory<br>`0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | ProxyAdmin<br>`0x1b0ef045830466171d617dd0f1142ad699a4cd63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | ProxyAdmin<br>`0xbbb97d634460dacca0d41e249510bb741ef46ad3` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | TransparentUpgradeableProxy<br>`0x2d2c72c4dc71aa32d64e5142e336741131a73fc0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | UV3Math<br>`0xb177cf10f4382f671e5923c6c06f7b601d5a04e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | UV3Math<br>`0xbf60a8e623d4e776f6ffa94d8bb7ef7c22e057a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | ICHIVaultFactory<br>`0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | ProxyAdmin<br>`0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate review | UV3Math<br>`0x065cb8139e9fed6c97f8b0851e599c56286ea031` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| candidate hard block | UV3Math<br>`0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVault<br>`0x289dc4313997f78f04c2959a9a50aec4739df1cd` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVault<br>`0x3586c614486ee965275f7e33a17295fdfeffa98f` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVault<br>`0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVault<br>`0xf36abda56b4a07800ec7cd52bf3bea3014b851b6` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultERC20<br>`0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultERC20<br>`0xd20feb1df00171aa2f59c9f53c4dd230dc1f39a6` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultERC20<br>`0xeecb7ba52f1a689574e2f64242743f0a0ad9eb3c` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultERC20<br>`0xf92ac78dac667bae6b55c53b4da93c5c6ddd3cdb` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultFactory<br>`0x51a0d74e1791399ce02aafd9a21dc4637fe57959` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultFactory<br>`0xbeff7973ff3dfca2aa86e1da41abc8321334f6dd` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultFactory<br>`0xe83a69e48a5715afe11ae39f6837035c1833e8fc` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | AegisVaultFactory<br>`0xf39a4c7c87310116ad915833769d301c599b0298` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ICHIVaultDeployer<br>`0x56120079d3ed948223c746e07199cb388f9fbd20` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ICHIVaultDeployer<br>`0xe3f26d6fad0613c9d7f6b8e6e644f7fa09900dd4` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ICHIVaultDeployer<br>`0xfab743b967ea5b8268e4d8f11159ad9e8e7c068b` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ICHIVaultDepositGuard<br>`0x4fa116f8864ee7d7cee1f5fbb58d41b70d75a529` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ICHIVaultFactory<br>`0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ICHIVaultFactory<br>`0x2f4b480a83b4e0bc1a8203ed039539fb2c36d085` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ICHIVaultFactory<br>`0x8d05f6870106707baecfcf5c0570db7a583eb92a` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | ProxyAdmin<br>`0xb978c58fa57bbd3951d053edea493e5c3ff1a415` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | SymbolLib<br>`0x52a60fa5092f92b96d1a007eedfcd349d6ce2471` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | SymbolLib<br>`0xa2969b83fd4e5decf46f037a26f8e5048b494db7` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | SymbolLib<br>`0xad8408d13381815fdb1b598bf162e7be8740b780` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | TransparentUpgradeableProxy<br>`0xfa196a6c9137b320e8801252e3020f25aee5c234` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | UV3Math<br>`0x4608121a8d9a5f54664649e95e40829286898738` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | UV3Math<br>`0x7a4ae815d561d267a0695b0fe8fe7f01728ede18` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | UV3Math<br>`0x7f659c9010e5566a2628d1eaf0cebf149be3dc06` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | UV3Math<br>`0xa45a0a9517700b747d61ab3e7f1bf673e43d883d` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | UV3Math<br>`0xacdeab6e5baf2c9cffeb37d79271a5bd6635a3a6` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | UV3Math<br>`0xb9b42bf1478334df3557cf7a3793f6a3ff626dcc` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| candidate hard block | VolatilityCheck<br>`0x6c2e26005a0c1b5f610aacd9895d58f10f74e72e` | retained_scope_excluded_inventory | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| contamination review | QuoterV1<br>`0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2` | non_address_book | unknown | unknown | verified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| source verified unclassified | MultiFeeDistributionFactory<br>`0x5ccf5a000129988e4512408bc49d94e62f581afd` | non_address_book | unknown | unknown | verified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| source verified unclassified | MultiFeeDistributionFactory<br>`0xf251d047792f52790200881de177644b8938eb5a` | non_address_book | unknown | unknown | verified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| source verified unclassified | QuoterV1<br>`0xb1fa728d712bf35ea1adf0f949410f820e7bd171` | non_address_book | unknown | unknown | verified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| source verified unclassified | QuoterV1<br>`0xc7ea641156d1b6230c637d46699eb868ba02d9af` | non_address_book | unknown | unknown | verified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x01eebba41fa1c5c8655fde507a816f7df76702b2` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x03d34aad38105e8da0456765cb287c28f8b68bf8` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x041285b5a653956cff1e434359dcc3a704282bdb` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x076e46a317dfae50eef30dca94ff41a63118948d` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x07c4af336e076faf2f41020860279c9431d91efd` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x097cdb86deda87bc038eb13ef4488fff30a1255c` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x0ac9e4a0423eec93357e2b0f83ef8c6469fd47f7` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x0cea41a282852e72fa6901d23ac63bc59e45be7f` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x0de3ba021a151030f344f8d05595672bbe31658c` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x0eba278cd39fe9c7c21e0c8cb7099467b3863eba` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x0eebbaa800c4a63f5e403c88f94cf75853475d05` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x0f157b2c2d32444f5682a628ca09bc22007ef449` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x12f19bf099cf1e121d36c210e81c3995db311515` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x1301253b3c873bf72925d5b98a23c11f819e7f77` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x132a9710530dfe863b7d99c9fc795accc158ffa3` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x141db85183ddb07dee22c33846aebde2101d9f25` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x1566fe51d83f4c387c5fa2b0e1c47bfefc1724d5` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x18eb79810ddb765e8e57a185a5afb426ff1c837b` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x1a3ebb29d65a09f6a7315c17c52ef2e79cc22702` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x1b364d34071b6cb98ed70a8302086fbdd82f58d8` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x1c264f2fac27abc9c48b09d5b7777049ef75a886` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x1d2110488060616425953b2318343cb927e3b074` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x204f7c93da15ac68a6665c64d36e5511e425f0d2` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x2174154294729e593001cbf0232fb787a914b232` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x21a2c2b407f8120754a67ef734edae908f73e05f` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x24430e837efb64ef87bb32be03437fc6005eef74` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x28d642deea13fa95a19b1982c637eafbe7dc5f6f` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x2b52c416f723f16e883e53f3f16435b51300280a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x2bb7f2eea0e6995fc1cbe1fbfeb0a1934fb0a41e` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x2f4b480a83b4e0bc1a8203ed039539fb2c36d085` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x32cd2158dd68f13c7fd55bf4d513d19b553bbdde` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x32d04b23c36579dc6291407ba9d2d777f172950b` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x33dd330fa4cd38c3a86c523d579373d92147c5bb` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x355f8b466defa96f8cc084d6a2f3c27fe5abc9fd` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x36fa990340009b8df683cc997da1ec0a6f5669ab` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x3c943f302ac74704a66e04e6f34dac1e47db5de4` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x464ab5c0615dafb85fbcdc9790e288062e1f9687` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x4a094b3e476d7c94445f023b5dac837f9e0f98c2` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x4a72de60a93055139efb3dc8f021ceecad8caa7a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x4c0d7b55447eba4370e9df0923ab6dac9646e4ea` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x4f949a00f122743b11e4cb0b4f272ea6dc8e44c2` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x511c5a440263667fe950331f469a88a71dbdbf22` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x52741d567df6a2400fd15e35fe0046c366b98c52` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x56804100632f87b68d638601b5bf807a334ef3e3` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x5bc9bb1ffe1243b877aa5602da331f85b1ab5bad` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x5de395dd86b4dbd4bcd2bbf8116146d3573347cd` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x5e6bc7d98982ccb030468e6ae9397973536636d6` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x608042a004112d3ea2031ba29aac3c9aef143593` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x6331198b8c0fc4cb3fc1d3719eceba9e40c3397e` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x64da1ab5b42c71e8faf1664745af911b859a06d4` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x65e816ec4c228b13fce915d121cc8c9fa1f474e5` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x668ae55887dc30de71a18e64928f3f7b81a38ef8` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x690cd36534fbcd2082d7bda8c9a52bea8976502d` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x69bf658252d8fd535a28a5cb477abe42a2d44e2a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x70cd54a6ab9fd7a816a707016b98d56305784395` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x72b735e20210fa8bb38e41287cbadc6520ff8ce1` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7372896c2b1a10d274580e1a46c109784aa133a3` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x73efcbdf2a63a886bd63af46210498ebf90d01e6` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x791968e05585b8d228b4ac946c1e4ca45b071497` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7b7fd55e8d11aad27b178c681ebc46c0c11f257f` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7bcce3ac0d053de0b36b71474b769e9efa9945c4` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7c6ea2efef6f7872c669381770900b9504e1befb` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7ca1fe9087c264518a6420adc41841dea9c86bdb` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7d18f2d60e4fd6f485419727515807d09a542eb9` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7ef6457e6ae4883bdab4a802fbf2e661c747b9a8` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x7f2eaf858c5ebac086eabf3a3afeb0742fad8a65` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x80adf8e120a071264ecba2c3e5969e23c18d5b69` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x827cce45e8d39088e21cef2642f43100d0543047` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x843b09c3a555b05ceadba3c8aa144fada5c68846` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x85602bf2b0351ac1fe0236327308086d8aeb6ffd` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x89069b0458d31e43abd69e9e49bf0f7a8cbf1949` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x8b4dc8a8941173f555c23a34bbf2ca29c19a9cec` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x8f7ae06d3fc0e6734a46eef46fd1c12020d9e23d` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x8fa675f2b526c3e738536b33a2589dfcc077a250` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x908f898dbd7081399a4beca3745827488080a15f` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x945193b15ea48f1c0f51051ce16bafc7601d640a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x962861ebb8e656c4dccbcfd3bddd86370af1f8b5` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x988c2682caa9a4f77f65661356dc82a8eba6d6ea` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x98ec75f065d028434df66bb29b9f10d805cd4939` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x998f04847830945e7d30bf80a5da18e31c9ac395` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x9a69b89a3c53ed09023162b2ab72f2c433e03bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x9b539b1f78c69ee151bfd4cbd19a8f1044ccb9dd` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xa0f6b914b24eacfc8180eae9b81749bf3067e633` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xa24c2392eeb31568d5a21e060f86b3606745fca6` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xa41fef85d7a7debad0cc265ad514716c52919559` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xa45a0a9517700b747d61ab3e7f1bf673e43d883d` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xabb886ab160e4c604132d1f10b90a67ac8679be0` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xadde9c8f33a1b7d39c5b5b99c2e9caf0db4de625` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xae32bfc9bd6297f0b5ec924ce446600b5fbc3003` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xaf56b645191fb5ef62bb055aa7f1ac9b515cea85` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xb066a06c730e9930e28c6f511198abcca49029c3` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xb07468297d848f164d857d800a92524ec18b4acf` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xb193d1208c577c90c592f14ef31735971d9b8801` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xba096706a850caf1cadaefe7529db1343a0c187e` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xba1e1280c80f93768dca8843e91b9498394319eb` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xba6c144a981d7f8949906d4c3b210c42701585a8` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xbd054797f78f5bdb7f2f45468b19b5cbbb1cff1f` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xbf297259eeb3cc8f374d6dcaa4de54db34d3c3ba` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xc1e6106cdaa66e2e82075c37f2b971c3e2471364` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xc23ce4df2f4740d031fb4e7b78f0f12ce1dd095a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xc43b2601c82270726e8d9fd991595bb56b6cb884` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xc4c351a89dde4b3d8f52d58e48ce2d1ed1660ba9` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xc808cf645060af2d2338f015d65c8f4ae5c8a679` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xcd65e06e086c92c8bb3f6f707ab96a1ecaa64351` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xd3cb84140ed9205dd786ebbbf06c3595c68e3197` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xd6a09756d34dd965c59b811dec2d26f1b5777366` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xd7772c313bea4c357748e825aa101ba6f730b7d3` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xd8322bff17d4b27b09d5ca64fee530304191b08c` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xd966f058cf2f64101676eb48504fc5fa517aa94a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xdb03e05b90bed1147df18a1997fac8e045431fac` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xdd503c1efb787a37eea080758a899cca57b58856` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xde329a4f56abc17b8e069bae95ca69d385b0b5a9` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xdef802412c31a378ffd808cf2af6a3f54acb5220` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xdf110272dee92eb59e8b77b14b5a95c001700494` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xdf11a6cdb8db1f64e48af95925e25de88dd08b17` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xdf1da53334f1c71a1e377c371e11f55c9cddfc8e` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xe16ce8fe5567aa31343c5809324d0e7d2cf1ee16` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xe3762d764d29dd0a6bad592c870ef85758af7666` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xe47d9a62c7982e7c8991223270e60903a9b85b45` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xe734a15e60d2ec14225cd3e2da56c11608e73017` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xe7cb9d7e77f973e5341de62255be4bc06e2e9e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xe8709a09d029f3c73e1f10fedb6b370074743549` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xef7449829ce18ab7f5164e4fec55a4e575b2c35b` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xefdff73b6a15aa7b6d682d3b54145eae984515f6` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xf06e5757c39518bdbe63bbabc690a04a7426bd89` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xf10075da7dd842e8c5fba17398e8f64f39c201e2` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xf294a6e9814b4f914c90a399b7c93c3e0eba68f3` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xf4eb5a7848dd682f366362fdfd40358cdda18c58` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xf6966f7d0cd3b06cf9b222ddd22bf0be6fb69137` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xf8d41b315116a1d0656c94b8af403381b304c613` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xfa0fa9ab7ec69169bdacd2958bc4c02032525170` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xfab743b967ea5b8268e4d8f11159ad9e8e7c068b` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xfac2f9e2c03185d34982b99198765955b56b6933` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xfb57d833081ebd65f3226f31c9a1f04e2532f3cc` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0xfe0a8fc7dbb45f6fea38f79949336a851c602912` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x4f949a00f122743b11e4cb0b4f272ea6dc8e44c2` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x02f4a98a4e59e8c7ba3269cbcd1f1e9f3eccfcf5` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x101eb16bdba37979a771c86e1caafbadbabfc879` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x2e76a8d053f839a04235341df1f25235437fedd6` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x921acca39e8d3519a503ee4a11b56d6eeacbb2aa` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xdd2346e0da9540792c2f2e86016bc44ba39dc72d` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | RebalancerFactory<br>`0x606332d543ba56be41bfa412e038612f34016d05` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x05043ee22e5e64677d42a632d42a5cb15187947b` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x130666908899327cd93ecf9abf8e3c0db2ab6788` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x17f1a5f3f3fe3aa021b75dbade990d25d56fad11` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |
| unverified unclassified | UnnamedContract<br>`0x242cd12579467983dc521d8ac46eb13936ab65de` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x278719fc40d288f40dfd56a31a1354277effe90c` | non_address_book | unknown | unknown | unverified | n/a | `0x9a45122d496983bdfde3ae464c92b4610ad690fe` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bailsec - ICHI - Vaults - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20ICHI%20-%20Vaults%20-%20Final%20Report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11711] Bailsec - ICHI - Vaults - Final Report.pdf — matched: All contracts are explicitly listed in the report's scope sections. The audit date is inferred from 'December 2024' on the cover page, using the last day of the month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bailsec - ICHI - Vaults - Final Report.pdf | Enum | unmatched — not counted | — | Listed in scope as a contract under 'Common Enum' section. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ContractImports | unmatched — not counted | — | Listed in scope as 'External ContractImports'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | InterfaceImport | unmatched — not counted | — | Listed in scope as 'InterfaceImport'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultDeployer | unmatched — not counted | — | Listed in scope as 'Lib ICHIVaultDeployer'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | OracleLibrary | unmatched — not counted | — | Listed in scope as 'OracleLibrary'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | UV3Math | unmatched — not counted | — | Listed in scope as 'UV3Math'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultDepositGuard | own contract | ICHIVaultDepositGuard (alternative) `0x62fd1824c810906f449227f1f453528bb54774c2` — deployed 2024-02-26 15:50:34+03 — liveness: live (current_address_book_code)<br>ICHIVaultDepositGuard (alternative) `0x2b8ca8e6768e49f1256f91bf5b0d8f30a776d4c6` — deployed 2025-11-25 23:59:43+03 — liveness: live (current_address_book_code)<br>ICHIVaultDepositGuard (selected) `0x238394541de407fd494e455ef17c9d991f4fbed8` — deployed 2024-09-19 23:34:19+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-19 was 103d from audit; next candidate 309d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVault | unmatched — not counted | — | Listed in scope as 'ICHIVault'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | VaultSlippageCheckV2_1 | unmatched — not counted | — | Listed in scope as 'VaultSlippageCheckV2_1'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | VaultSlippageCheckV2 | unmatched — not counted | — | Listed in scope as 'VaultSlippageCheckV2'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultFactory | unmatched — not counted | — | Listed in scope as 'ICHIVaultFactory'. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x2b8ca8e6768e49f1256f91bf5b0d8f30a776d4c6` | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x62fd1824c810906f449227f1f453528bb54774c2` | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x141db85183ddb07dee22c33846aebde2101d9f25` | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 322 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=1

Fork inheritance lineage and inherited audits are included when available.
