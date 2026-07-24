# Agentic Audit Brief: ICHI

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

- Project: ICHI (`ichi`)
- Website: [https://www.ichi.org](https://www.ichi.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, kava, linea, mantle, mode, opbnb, polygon, polygon-zkevm, scroll, sonic, zksync-era
- Contract surface: 934 unique implementations (980 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $9,684,904.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ICHI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, kava, linea, mantle, mode, opbnb, polygon, polygon-zkevm, scroll, sonic, zksync-era. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5a40dfaf8c1115196a1cdf529f97122030f26112`, chain 1)
- UnnamedContract (`0x8dd50926e12bd71904bccc6d86dfa55d42715094`, chain 1)
- UnnamedContract (`0xeaec81f0ed4f622d4b389672d9859166c0832b3e`, chain 1)
- UnnamedContract (`0x065356d9f628cdd1bb9f2384e2972cdac50f51b7`, chain 56)
- UnnamedContract (`0xac93148e93d1c49d89b1166bfd74942e80f5d501`, chain 56)
- UnnamedContract (`0x11700544c577cb543a498b27b4f0f7018bdb6e8a`, chain 137)
- UnnamedContract (`0x2d2c72c4dc71aa32d64e5142e336741131a73fc0`, chain 137)
- UnnamedContract (`0xb2f44d8545315cdd0baab4ac7233218b932a5da7`, chain 137)
- UnnamedContract (`0xadda3a15ea71c223a82af86d4578ef2b076035f1`, chain 204)
- UnnamedContract (`0x8a76c26e0089111989c14ef56b9733aa38b94148`, chain 324)
- UnnamedContract (`0x797ebb6a84367b0409094fea0d10ac7516432433`, chain 5000)
- UnnamedContract (`0x92bce3972916c2ceda46c4eebc9684ac26effe5b`, chain 5000)
- UnnamedContract (`0xbbb97d634460dacca0d41e249510bb741ef46ad3`, chain 5000)
- UnnamedContract (`0xabe5b5ac472ead17b4b4cac7faf42430748ab3b3`, chain 8453)
- UnnamedContract (`0xfbf38920ccbcff7268ad714ae5f9fad6df607065`, chain 8453)
- UnnamedContract (`0xedac86bc526557c422ab1f6bf848bf0da9fb44a6`, chain 42161)
- UnnamedContract (`0xfbf38920ccbcff7268ad714ae5f9fad6df607065`, chain 42161)
- UnnamedContract (`0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f`, chain 42220)
- UnnamedContract (`0xdd2346e0da9540792c2f2e86016bc44ba39dc72d`, chain 43114)
- UnnamedContract (`0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b`, chain 59144)
- UnnamedContract (`0x2592686212c164c1851df2f62c5d5ec50600195e`, chain 59144)
- UnnamedContract (`0x6e3eb904966b0158833852cafd1200c171772b53`, chain 59144)
- UnnamedContract (`0xa29f3d5403d50ea1bf597e2ef01791a1ce4f544e`, chain 59144)
- UnnamedContract (`0xb0e7871d53be1b1d746bbfd9511e2ef3cd70a6e7`, chain 59144)
- UnnamedContract (`0x2145b1cce3a13af4fbb14131f1f480fc121ead93`, chain 81457)
- UnnamedContract (`0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f`, chain 81457)
- UnnamedContract (`0xb42d5956cde4386b65c087cfcd16910ab6114f15`, chain 81457)
- UnnamedContract (`0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f`, chain 534352)
- UnnamedContract (`0xb42d5956cde4386b65c087cfcd16910ab6114f15`, chain 534352)
- UnnamedContract (`0x89ffdaa18b296d9f0cf02fbd88e5c633fefa5f34`, chain 250)
- UnnamedContract (`0x932e1908461de58b0891e5022431dc995cb95c5e`, chain 250)
- UnnamedContract (`0x1721cb3ff3caf70a79bde9d771b27646ed8115b1`, chain 1101)
- UnnamedContract (`0xe8532db60408f2d47693da5b9093d71580b8c23f`, chain 1101)
- UnnamedContract (`0x2d2c72c4dc71aa32d64e5142e336741131a73fc0`, chain 2222)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 34 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 899 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 34 of 934 unique; 900 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 894
- Unique implementations: 934
- Raw deployments: 980
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AegisVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x289dc4313997f78f04c2959a9a50aec4739df1cd` | ⚠️ Unaudited |
| AegisVaultERC20 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf92ac78dac667bae6b55c53b4da93c5c6ddd3cdb` | ⚠️ Unaudited |
| AegisVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbeff7973ff3dfca2aa86e1da41abc8321334f6dd` | ⚠️ Unaudited |
| Ally | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aa1e61369874bae3444a8ef6528d6b13d6952ef` | ⚠️ Unaudited |
| Arbitrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6287d56e246eee33bead2d7dd3a99db693f4554c` | ⚠️ Unaudited |
| EtherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315`; ethereum `0xd76b5c2a23ef78368d8e34288b5b65d616b746ae` | ⚠️ Unaudited |
| ETHVaultWithSlippage | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x980d4a48077cde0b51c2ae19d44cc2dd0c8efb1d`; ethereum `0xeaf2de9d66740a3c5185eaf496dd77f9a8913755`; arbitrum `0xb24a00f2437528b2c73aa744796af513b2e00216`; arbitrum `0xb443de99d660570605055d3b16118ac49b723083`; arbitrum `0xd4493957338e3f66214c733883f789b99558758f` | ⚠️ Unaudited |
| Ichi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x903bef1736cddf2a537176cf3c64579c3867a881` | ⚠️ Unaudited |
| IchiStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70605a6457b0a8fbf1eee896911895296eab467e` | ⚠️ Unaudited |
| IchiV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-242402 | `0x111111517e4929d3dcbdfa7cce55d30d4b6bc4d6` | ⚠️ Unaudited |
| ICHIVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460d84b04f53d8e4021a514b08180d775714323d` | ⚠️ Unaudited |
| ICHIVaultDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x544113cc95cc2d076065c6028ab718d8682756e1`; celo `0xb78144a950ed367f8fb94322bfa079f30bc8eb68` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 19 deployments: ethereum `0xe6e32d20258f475baa8d0b39d4c391b96f0ef70a`; bsc `0x454130394b8013d4a7288fe9db570a0a24c606c2`; bsc `0xd9272a45bbf488816c6a5351894bce7b04a66ee1`; bsc `0xe7914034d4d39087bff0aed442a652f5945e914b`; polygon `0x64e44525a98bc85ac097cc6ca4c8f6be7d483041`; polygon `0xa5ce107711789b350e04063d4effbe6ab6eb05a4`; polygon `0xdb8e25d78483d13781622a40e69a9e39a4b590b6`; base `0xbf38e4ffb0b0aa075531b38d71d3b18a5f599819`; base `0xe2381b5afae99b899596bc550184a080daa31f26`; arbitrum `0x932e1908461de58b0891e5022431dc995cb95c5e`; arbitrum `0xfb5263779d551d0f8a85d47a7d576c4893686d12`; celo `0x238394541de407fd494e455ef17c9d991f4fbed8`; celo `0x62fd1824c810906f449227f1f453528bb54774c2`; celo `0xa19595c6ca6186621ddde0dba0ad24c5e84d5a14`; linea `0x57c9d919aea56171506cfb62b60ce76be0a079df`; linea `0x60f50858953dbf1a699b88037d9dce235b8c505d`; linea `0x92bce3972916c2ceda46c4eebc9684ac26effe5b`; blast `0x8346a803e1754f9d4c6935aee1fd864ff15955f1`; blast `0xd4493957338e3f66214c733883f789b99558758f` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x141db85183ddb07dee22c33846aebde2101d9f25`; celo `0xb066a06c730e9930e28c6f511198abcca49029c3`; celo `0xdb771ed1930b1a5993ca878e8c4f9a3e0dd6fccc` | ⚠️ Unaudited |
| ICHIVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x2b52c416f723f16e883e53f3f16435b51300280a`; celo `0x7df494ad51faeafb8c46c63d23ee40a48b14e975`; celo `0x82dca62c4b5dd28cc85ce8ae3b170ce020e33870`; celo `0xb3bf88cb919a222a6f9c90ca8a9ac261cbd3e5bf` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56` | ⚠️ Unaudited |
| Mooniswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dce26f543e591c27717e25294aebbf59ad9f3a5` | ⚠️ Unaudited |
| MultiFeeDistributionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x772960d9a88004cdb2cc0fca020e04bfea3790b3`; celo `0xb005d5b820acc4b6b86fb67cd14013b3c50002fc`; celo `0xe734a15e60d2ec14225cd3e2da56c11608e73017` | ⚠️ Unaudited |
| oneBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88f47067db2e25851317a2fdae73a22c0777c37` | ⚠️ Unaudited |
| oneETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fcbbb527fb2954bed2b224a5bb7c23c5aeeb6e1`; ethereum `0xec0d77a58528a218cbf41fa6e1585c8d7a085868` | ⚠️ Unaudited |
| OneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x111111111117dc0aa78b770fa6a738034120c302` | ⚠️ Unaudited |
| oneLINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18cc17a1eed37c02a77b0b96b7890c7730e2a2cf` | ⚠️ Unaudited |
| oneVBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd198b9107496fd5cc3d7655af52f43a8edbc4c` | ⚠️ Unaudited |
| oneWING | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f041a3940a5e6fb580075c3774e15fcfa0e1618` | ⚠️ Unaudited |
| QuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe1962f415feb5915962d5d3a075311e6be0f8f85` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x40af9be27b203da639a237447613879184d52f10` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xcf60dbf617618a17eda28dd8dfe89905dcf9388f` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf8b3f6727e44abb211c0049fc849fbb091ff765e` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x215d61c7a658847c9595cdf8d145fd69c2e3a50c` | ⚠️ Unaudited |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0xbb7a3d439abf42cf39837f9102f987bab3ee2e73` | ⚠️ Unaudited |
| SmartToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c` | ⚠️ Unaudited |
| SymbolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbed3cea309c8e413f785e1b547d06f37c49de85e` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cd028b1287803250b1e226f0180eb725428d069` | ⚠️ Unaudited |
| UV3Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x3b5fbce2bd4587036dc1d7df44296f19094e0d3b`; celo `0xafec075e37e7743593aeb2b67cfdd2907bdadf69`; celo `0xf6b5ab192f2696921f60a1ff00b99596c4045fa6`; celo `0xfa02638efa7d79717b071a4e4fc5062d0d1b97c5` | ⚠️ Unaudited |
| VaultLocker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: sonic `0x6613f64ced3e3d2a447a6191befabb15e5344a4e`; sonic `0x765c2170441e8ecae3ecaf3282dc15d3969eef75`; sonic `0xccd6d4a3308cb318bffebf03030585cf40a6cfa2`; celo `0x0de3ba021a151030f344f8d05595672bbe31658c`; celo `0x2a8d0321cdac91be9da82d069c6116106ed0e337`; celo `0x7f2eaf858c5ebac086eabf3a3afeb0742fad8a65`; celo `0xd2c08d7a919b86f939cd4788caaa136de85837b3` | ⚠️ Unaudited |
| VaultSlippageCheckV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x69bf658252d8fd535a28a5cb477abe42a2d44e2a` | ⚠️ Unaudited |
| VaultSlippageCheckV2_1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaa650baa871269952b12a8ed8fa88d5c64157158` | ⚠️ Unaudited |
| VaultSlippageCheckV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcec8716cdd60856eacaa74d499abd14ae34b7da8` | ⚠️ Unaudited |
| VolatilityCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4eecd2cee06598c942a4c24f91b4452a1b11d6da` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (894)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x16eb8e3b7d23b9eddc82ba0e034860e722b96483` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x83ee9021c1c51dd2601f87f20230db6b3fedc23f` | ❓ Unverified |
| RebalancerFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xe04ba74a7da7807427c345dc235164ef2ccbbef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0220864a5c899b0848a5797ca84b34cc494293ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0474790b580242d0439eaeac58c51cca3451fc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0511f555ff9908ab325bb97333c0170607413e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06899b9092ab29ab197c1588b326b13812ba8a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0718cd20c7f7482cf776ee15364d1ef7051bf015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x080e42e3e2647d326ba6e519ab45a3683b5bf17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08804dd8c76233f790992d3f8f3b0c1743ba1a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088f0de8db45a4dd34f473a3052887a02241c698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab3135cc9f186f1d13c73466971cf928d761ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0e063dac08740df0c98fbce4e876851b07f657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b10e483aac4340256772754d23131b6e0dc31ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfeefaa191e7e440209cbc5bf60e345ca583405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107bb677fa7036595a9c0289f2c6655cfa45314a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11923c00d9c73b3b8e9ef7ce7f31fc1f70e9c3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12f4a35c915032e147711584b2845d36931e3d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13198fb5cdde6aa5e1c1145f1b41b1028338341f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x134fb1b3b3519187a43be9789e7ac5473caeb01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e11a57c6cba7fa1700b8c3086c628d9a88db3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f01f6a69a870bf79163fb02a65abd58ccb8230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14356bf935d6a62f3b87ab89f729217599bc108d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f219f6cf66418b867ca3c633f0470ceb7db425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15187432d28d8ee94957a3277a51708b707d374e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1658042a455f2092016575e21d0b1ea97398b45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188c65138b72b2581aca13225c49ecd5029f0aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199921335fa1cab3454042e8e839fdb0581e2e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1afb48efff691f2a48792b3319308f495e9b0b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c2deaf8ac1c65e7cf8ef98e409d20a30370f87b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5cbc5c1e72aae09dba98b6ed9c5c9a6ed80393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dfbc56f3c26e93adde335e1472c2a27b3a11548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1faac4842054f2db2dddfc8152d7c259d5102c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2022eff6aa7d1c97663e846dc69c566d674d0558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20e518632b7dafa09f6325e1f0815862e5798d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21a13bcd87e0089de557226a51418c9f98773e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c83be47d0e95cee9643c300a8311114119f6ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22a063ec41aa1ef71099f37e15921e1631d770c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22fe8aa903f9c4b18168b5931f10fc0c4abd7220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23146b474158b2a7cdafce966d80eceb1fffaa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25a862691978b47071244227ff77969bc27031ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d4ba0b43ce3b1805906060f8bd74868d37388e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x270dd604ba26b77d24f62285358816d359c6d29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x275dfe03bc036257cd0a713ee819dbd4529739c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d05578588c31e72fb6bb814bc82ce8308b7fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2930e2a64986f8cb265c25da4df723d1b79fb18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293be849d5a30c83fae862f452a0abced1e36cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3a0409c31db62f229973a521771c1de24d86ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dfb5348cc20218426e566c1bd7b8b3789cba9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e65593392589a780dc36784ac44c9be37620e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e76a8d053f839a04235341df1f25235437fedd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ecf8d543ec41fc669fcbc8d8f60fe2f9966147a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3134cb69297c965caf2ac5c4fdb46b4a77352439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x331ae2ddb5854581496659f183e266e3bfa4a6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3324b3e07082be41048c2421863c4d5b25c91f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ffdcf917b3b015a77d45d0eee40cbf30c0e241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x340ff6c01b1bf5a52bc7a587f598e4a038b3fc35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bf4c6510a949e3aca07d7daed3a466e2d8e30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371be922a89fbb160b1387dc0d3b61c1014248ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x372d7b2baa26157c66118055cdc0da49e2c3f8e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x378879089a5e7b6640c38be486bc66ba7a65a926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3881f0db85d2ba0ba419ddaa267f93419305d6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac029080bf07c94c34f88527537b150055a48c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b5fcb1d099ae8c7f065dde579293841c74d9114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c00b7150e8030bb18c14d3d39a537a24a541f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d469bcb945d0c58759fa3bb4b8ddca23a021930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d75b34ea2b6354f824515aed5470519a0b4909b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dfd6dd38f055188adcb2332c2926dda28d318bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1afdb89b6ea49e828c565ab6a36a485b7a4775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed0abc49569dce331ba7d3706b462d194246cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f57443040cc438d5d6108fd024dfbfd048d9503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e2bfa76856d922097a100906c54fc2d3c80ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x423ef15de9c641f7dc8debfe80c0b811d912e55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4263cdfa1c544cf4698cfd7dc4246b26c83fc5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x435b65196f302b04baabcc1e5f07ca1192736771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bc9d1f5e8a078be140cc1b1be8754132d4516a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f1cacdacd3fa65dbcbd56604b90e077fffbb83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44e8676d864cb635baea3b0adb0a63621477711e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467e73358df5e80a082cc35e673236c0ddd94ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480dab56f09a7f79a825b23bd2bfe0035a0e1b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a62552d0896a16cd1607c6ec03cbde97ed13fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b162306ee680bf440541c3e5c70c553f632c8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b3707114f92a2c88b3fa62c418d0a3357e3763c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8ee384d444a0bd455f43672104aec4104089ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c8e041157f3dc06d6cc5670ede41aba881d66e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfa3d1d3af8078759d2126e92f385e5681ab100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ed128f3087db2d9f6ea0f1dca3b7fc716ec256c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50547726c7a572c7ea5efaaed7d76ee3e90f2f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53dd55d8eff8df63fe777b26fc6f60c8e49f0d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5428c15031e801bd350054ee386d6ce4cb22a200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a584dc5ff0a3cc7523874357e6d04c68f9605f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5538277f8d08e79e3f3e531267422bb55b127474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55922fa5084f9367b73fc0df9163b089d8ac4cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e7487490a6bf2c3888fa0bbd14eb93180a8312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580949061021048e770d3c814964de54ac5ba762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58254b405e85359fc7eb3b8856ba82a4dd7c82e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5897e2121183404a225f80647a1bc11a362208ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242403 | `0x5a40dfaf8c1115196a1cdf529f97122030f26112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b41462adab5cb4eef45db6feac32be36a5cbda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b67866fd594b31ec8289483a719707965c67dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca9478e9b4f6e659f00bb7d9661f9d51c83591a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa1cc03be296cd63d99351c3112609cb269cff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b0752ed6c9ff079bbb356f835b2f498800dd69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646143722f2ce1decaa521fb89237fb2e5896b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64ea7f100f0062d86ea2eae112dec221f011e52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e1a3555f2c544f84c97a385cc1dbe69da5ee6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66fc74b90aae7a2271ba7a20790a3bcd558a9db1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699f0635379c5026f8ef921ec4a1b05fb1694876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af1f57d75fcf8670ae48f6341c12faba520a9b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b664980dd0642b911c684866d883b9fa538a8f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b85c2adb47cd82b016530569b0f87035c67e501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b9afc9832a51ab0c5c1bdbce8c2dbe2eb0848ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5050e76287b0540348f4a9db5a68da47ebff19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5bb773550aa20ceab5c1a44d625c6c44939980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6da3be5c443be54567128409f078ceaee08e9828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e3eb904966b0158833852cafd1200c171772b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7184c745d3995bcc2d14ef6a7b4306fa67f3ecca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d266ef3654749e83c73148b39794477657106e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73c30d100e7d8e3f1282d2b106940f3d80765f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a53159a3e73df5ee024a4af9bf1cfa2f4c1cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752d716c0a6f86f7ec46d4cba239081da42cfb04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75d0b5025ef5bb96d7c9c4ff54a254a20790ec9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f54021909da35d519aa5868c9e81bab6f99726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x772418e26ab32833f4b889855b09e31abcb14775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa8272ffe20fe3984d8a233a5ba2e8c63cfbe60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0557627e4521a4c754bfcbde0a25dcb413f73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c49fc7110ef49d080f1d0cfc57fad5f21515014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ccb2bb6794fbd3838abb823286431948b0f7fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ce22f910dbd79741a14648157e465889a9f96e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d89e4020a042eddb42fa764daca6e7feb4535c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ed17afdbb3431bd17e7d3799a5a2fad832a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81b2f475e1ca7ab6b2720adfa2fa6d4c52c4f49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81c9932bd9a87e454710ef83551ac32dd808630e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8236ddc00bce5f8069aa8b665abae8db3f6ad9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85679f5db841e00a5406c4c7f331e65ea619edcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x873902a3c0731ecc1f2075435fe035acceed5459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8740c9f316241f905323920f4f4fa8a4d6ab100b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880184f9ae881d0326fc62bea8e68623a02e7056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a17a9acf32811b0d2a10bd97839643e8ad14b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad02d1742458c1bd888dbcedd523ce7633ac460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae3859947734eed9f58e2f6954955ab5c8dc8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bb4227a9403781d3f6126802abb3e8a36d719d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c261c87288dd5e2dc462fa0fd4c6399a7f102ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242404 | `0x8dd50926e12bd71904bccc6d86dfa55d42715094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2e82ab8350ef12af6fe85ba77579c70489ea54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fd003f7c10ebd1431df50d88d9aba06dd9d2c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91fa656c217eec432251d18d86490347b7e70955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92fce8302a00aaf90f45fd37a9b44b3dbb1fc37e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x934af7631d61c3f9f77564abb8b3488a130db936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9419148ba2352cfc9d4f104509262529eafa4a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9422f6bfc25b42b56f109593aea252cf79fb305a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944344cd4014305e1ffaa613396d82eaf5b67b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95507fc832609db0c8c18235800b4f6172942c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b380ae50160e400d68c92abeaf24402c9caa62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98896f730c78a33417c6f16ef4d3f50b1615f798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d136a1733b152bd8b1f87d267ca23525c42a22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f493813d4ea0328d263bdcd8d486e914ec5ebc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f54f8249baedad9000a33c0143a6f3f0d41fda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd4df9dc332d029f5b80c2be1ad47bb592d3ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd678389480590511302922cca092482816d564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00f7422adc87b5622cb4bc822646c028cec755f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04052f27bd8a0ff0376a1cd0eeed681c68a1d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d90a83ee1920e47acbf5be08aa753284b1e575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20a5359c54f3f29892ba288f79312c0f6e91c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3338b50ed9af2a017dafbe3f3b37419987a4eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5fd4ed30d7d7de50d23164791f08fb02c208153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6fe7112f0e710763046cd9af2e4365571f85bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ceb20891c357abbcec4c87c8a0f1a6f942c35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d7145fa208d92ee47fd909a694b8c2ef14e56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87c231a2311b9484bfc9bf90c51c3181161ecb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa105c7172e6dcadae94961c04f4b4d186106e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac20007a5cbda40d8e16df26bad89e8738404691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac225b5be5b2ebe53b75798366287626b9881bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaffc276d3c0fb0dbabf0b4ce0a3605fd5837b1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4514ad7d76253e57c4a30c2c4dca9ecdd11a808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8030ad48950644e7fa77782a9c913e3c205be25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb883d2af071d9e3a3ea6b06c94b9ec9b71a2234a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9220b9d31da138eaaaaf0ea5f686271f504d4c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb973c8be7d9a5a6db9b227555c70c8f4de3fb82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba2fd16fa050d8ddb1662b3aa63b37f81e51db92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb97d634460dacca0d41e249510bb741ef46ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf6e0ae67f66c83116db811e5ec8a983366794e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf32c838e1b5d927b9ecb099b1f01f81d677a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbecd659243836c491b0e4e61a04512d8f186863b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0fdd99a80b5ac431375e44ece56cdf0eb84d11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2222658ab9a42fa926f4af549bfdf9f0d939a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3822b5e61d6702315efd86573978a8a3f3acb83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc58596d7c48bcff23541a31251f09802ba597657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ad95554ae0b908b7a6f61013d99cd89eacb110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f957496d0d2a4331405270d1ea3ae78dac5838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6cf29e778b3de48e4f2b610e91301527b4363f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7ee9a338c8d4f4224d743c3565edeac70d4d3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc965593d433a2bcc775272b929cb168a02994836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9682298cd1c39145eb34614a0b4356c7f29c92e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc50953a743b9ce382f423e37b07efa6f9d9b000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd96edb15c022c105a8ea78816cf7a93fe02ee52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0092632b9ac5a7856664eec1abb6e3403a6a36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01ecc7c8fe397d34c7b9a92b2d4fb8611e8516b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0abb7e6538853ee4739b87bc9a7cee86e535bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0bae9b165467f105fe073054dc2b310a78e2866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41ea28e17bd06136c416ca942fb997122138139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e6d83f3302b6f2e11ff9cb451bef8393088d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e9558b9d8404c0c87d9a3c6ddf459878b9d3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8d146e456963fd1d5d09e9071bf4bb3cfa29248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd701bc94b590c570b5c05a2be112e40ed5d6d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2bec38cab780987f50b85cb7f643345739cf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0191c950b2c19d7a470b00c59969c17fcd9a150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f61b6c50ee29c103f2c8af2b25a93a82b7a437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5b38672756f9c0f4cee88f5d57d4114a09cedb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe605c8d3564d1fd3744c619801c4936ade916bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe79cd6acd58456a94c30c549888f31032c3c38c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f4c751f181cb923b72988186cfcfd80ec07807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea2bcbf64b046cc1af11605e28b6fa02abd38505` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242405 | `0xeaec81f0ed4f622d4b389672d9859166c0832b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb370ee6927e4655a463f898fff30479b34708f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb72170f2d01c779217109cabacd1d59bb8973c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed87056204a062fe64b42d4293f8dd657df93976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedbe48ab828e3283649b7940ddc35e5d8270bb56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeebbd38ca358db5345977f29f3d3eb3d71562c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeecb0c4210cb8096fd3fc628cc8e8271ea231dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1587cb51349cdf5bb408845249de36466c35f41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f63bf81307c74ff6f8baa751b89d1d43b89448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2163e3b0f1f9c7bc927c7104d4cecef51a61e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf30ecddebba9ec1c5709365e9aad188a312aa110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf41c294de081afe43e39d21f27bd93d6a6abce24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf480f773f442ab9d57e8579833031bfd265eada7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5fdf50cfbd5fc5798ac917b39150b28d7403588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64f2afffe4f1dae3e250ba86a333172fce92c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c16df27a54c0c0cb4e1f00200c815d0fa5869b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb5c18ff12224313fec3b90fe7166d32153ddb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc63b151e018bcf8e6ec93cb9002354874907d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff28be2c71ef0d420e1ccded16129ba76f35e9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00501f23965512eab62c0bfd085d7f0e745b0673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242425 | `0x065356d9f628cdd1bb9f2384e2972cdac50f51b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07c607056b1acd7b3f2cebeb44187f722695f166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b10e483aac4340256772754d23131b6e0dc31ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x131c03ca881b7cc66d7a5120a9273ebf675c241d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ba62a09e6e295a696d02f8e4b80a8a13bf3785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18674b4adaa79acda180d5a14f9f7e830f2cd87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1aa1e61369874bae3444a8ef6528d6b13d6952ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2290954cf0daa963d3ad07d18edb8dcb54232087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250c8a087487667d00b1ecfa09295d24268be5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2536d37f67ef12b40ccdfc942e977f28e35fba3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2592686212c164c1851df2f62c5d5ec50600195e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x265a26af68fd815c91714831b0d7ecc0c86af4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x435b65196f302b04baabcc1e5f07ca1192736771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f696b2f8dcb91bea7248d83df47281203d32cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58c97744c5419ebfa4ea4ea15c1422ae98a09254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dc2a9c92a2385ea2e0314f15cafd6ffe58c1b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x605932d16b147f3232e6f44a12bc4c53dcaded6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7087dda31fccf1abf089e6af27ba6687f3356103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x726535589d58f53d34a313eb44ac769e86caefe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7984d3ad2de4dd54d1fd6b4d89112ebf7c0df151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a0c9a3d399985508e3ac756b0c86297f1d890b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f039bebcf1eb0fa9cff5edb8ad277150140770f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f12f9c3993baa0087f469e6aa343b594add4f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x932e1908461de58b0891e5022431dc995cb95c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x967768f830d44cd14695d27de3b7d8826023bd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97d1cd59a917a6ffaf141996653647d048999957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98b60e1fbe13e04cb637a432b319f9a96e84447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa23a224add122f31eed712e0c074ce0501b4cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9b6b30c9bde1ddea20853aa31f64163c718e7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9b751f37857790d0412c81b072db57ccc0af545` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242426 | `0xac93148e93d1c49d89b1166bfd74942e80f5d501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8cf7eed9f87c8eba432b7ab794d3ceb9362e1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbb97d634460dacca0d41e249510bb741ef46ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc03c49034590eea9ead799bb73c5f271591a34b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc030bef30ede8ebd7fd319361ceba54c81754ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc43b934b52fd5bc88d908f2ac489db52af002721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc6a77454e00244863697719f91ba7967f50d7b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4c0e17794a83665b5a61836333610d2d48dfd7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd67985335113ea7b7b2cbd20e69fd5e04f84721c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdebf48409050c0f6d25709e86989afe613af34d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe30a4227dc09539cca9913ca935dae96891a7dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe71473d78759b190ccbb10fbdc08e9dfdecedbf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8532db60408f2d47693da5b9093d71580b8c23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe94909be6477d1f00dc2a7246f91dcfaacd28577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec9fc3d8aeaa6beca8a627771d6543c237b111ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeeb687cfc99d8e35c874a2c88648a47e87adee2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4dfcbf43e532bb9d1a8de271763c65193ff2157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd96f3b1c0d3032d98f87a4f31dd9efe8a54428c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0169d443624972f3949be72683478bcc5e470f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0367b249f3b0e012e00571745c040d45bcb47abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067ec6134e6ec277c7d9589889c85b94a293bf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x080e42e3e2647d326ba6e519ab45a3683b5bf17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x088f0de8db45a4dd34f473a3052887a02241c698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cba93da289bdaafc385ff7e0aa0a59b0e8c2219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f513c054f93b21f6213bf9511d68b5acfc4dad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242408 | `0x11700544c577cb543a498b27b4f0f7018bdb6e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x131c03ca881b7cc66d7a5120a9273ebf675c241d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a47894097e875b0dde8bb2a1cf35b6fe3b32596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b941dd6072a9305454b24a0d94889f09af2199b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c4063366cf116616518e9950729936b8c323411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1dfbc56f3c26e93adde335e1472c2a27b3a11548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2145b1cce3a13af4fbb14131f1f480fc121ead93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x227abe238ae066b7a6f081c0791b69b668d80864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23146b474158b2a7cdafce966d80eceb1fffaa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x250c8a087487667d00b1ecfa09295d24268be5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2538d707427eaee17756a4071f581785509b1bd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242409 | `0x2d2c72c4dc71aa32d64e5142e336741131a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e76a8d053f839a04235341df1f25235437fedd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e7d49e42de635eaa3b35de0048ab791a3e8a252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f662b1cc505905ee747b58b26534b33ef6adc2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x310c5401745144389887b82216dfbb25899ee053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x391dc9821c3b4ab588d1d0c8aae13ac648d83cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f57443040cc438d5d6108fd024dfbfd048d9503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f7c8ea3689b72545295f0fce24b68c3092610f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40e2bfa76856d922097a100906c54fc2d3c80ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44f696b2f8dcb91bea7248d83df47281203d32cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x454130394b8013d4a7288fe9db570a0a24c606c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48096fa37a7498e4d595f9e2545b9bf41654a6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48d756814a30a09b1e7a06c49dadd559ccaa4aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49dd44f8fff8e0498b3630daebfabea19afaf2e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51803f621c5e90011de58b57fd5b7a92e0e39b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58c97744c5419ebfa4ea4ea15c1422ae98a09254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59ff4fe665b2c30244bb14ec92c9bb7162bf31a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f2a696a4d73ba8b14c9f580d3b314e4324135ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f89ec0c234ffa0a9a3b85503c275cd426a51503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5fa1cc03be296cd63d99351c3112609cb269cff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62824f7fe57bf6c9a46fe382d3228042495c5f6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66dcb1e8a6ca366341ae8d6af55cbcf3e21c8dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69ff838c63180091e95a475768556e53ec364c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a34c94a26382c8de0b4092d4393c0dc52ad2b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dc9b390130c96b788ebeb389cb3cba992289532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f352c629e31425eb0db3f0f64c92ec33b2b999b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70550de4724cc3fbfb2bcfe77ed2ff6343dd9e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7087dda31fccf1abf089e6af27ba6687f3356103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71338eacde9ef818d4f5ff979e0e727b90dd5f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x737ed22eff148d84834aab4c1082117b7fa6fb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7cd09bd8023d67f457a679bb4386395a9b1deffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e3199f8c1d34029e108dab8e8571fabb6384a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f039bebcf1eb0fa9cff5edb8ad277150140770f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f86b5613c93152669c6bd91ba1e28746c76d108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8492bc82a96d936b746d87f44f5705b47b0f3ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x871c2b65c9a1b1158527f5dca2dd481faa1c7124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8845fe66db1e421fbe263f14473ee2ae8249d70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89ffdaa18b296d9f0cf02fbd88e5c633fefa5f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c031f5eded09be27d64919b5b9bee5031f4d787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ce76d23c216970c169e870bff3ddf897cbd2372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8dd50926e12bd71904bccc6d86dfa55d42715094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x932e1908461de58b0891e5022431dc995cb95c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x976367e8d84a08b528b798614519501d17602e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9840fc65177288132819b8cea9f29a78de409310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98b60e1fbe13e04cb637a432b319f9a96e84447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b3ea1a39576925fa94c4bcc7eecfa0d95d331e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa02b3908b989a54548bede44ca58e2d700c87231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1d9ac7453c49ae24324042195d323ac7dea52c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa20596671cabc39a3da0e8bd9940215690c0c4ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5338db2bfbece970ba38ed76d970f810f0f3ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac225b5be5b2ebe53b75798366287626b9881bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad7633c58d66c736d0f3153732c6d7a3206316eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf2afc84441a2ca1f63be1d4b71367289155da24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242410 | `0xb2f44d8545315cdd0baab4ac7233218b932a5da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb44095cbdcd3552ad6cc01cb48983993d2af86ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4514ad7d76253e57c4a30c2c4dca9ecdd11a808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7b928a7852b3113097b895efc5c6a26b08b96a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb7a3d439abf42cf39837f9102f987bab3ee2e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbb97d634460dacca0d41e249510bb741ef46ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc43f2b29f9b206713aaf6178b509d6f030c0a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd80bdd411bde5f149b68f3d7e093771f3f45b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf78ef8304e41f1ff475f2c38b110ebd09e35980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc030bef30ede8ebd7fd319361ceba54c81754ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1dec22a7b54c0afaa3a22f98897585b15d8e458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2643ee2886feef8cfbc87ad8c92a665d0895f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc705479e4c7a3846958b2d3187a21c16c659ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf1ebe0ad3c00c6836f5bd72cda5e022b4b0068a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf60dbf617618a17eda28dd8dfe89905dcf9388f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf99c2b3d1a9588a9a9a34eab25cd6f425fa8801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9104cbd77ad3c67101adf037424e01b74c43b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf48287ab739ae86e8303902a50d628177a24ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe67bef739a0822b1da8813a8c1aabdd8e8b34064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe976cd5146342a4378ea821aae44658f5d3c481a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeaff03406ea56645d5f629d43be7dcbe2eee7b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf38c0e922856ae192c1c494097ec507ec42e347b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5fdf50cfbd5fc5798ac917b39150b28d7403588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9b0af54d262ecb3326b9080825d0c6b232775f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfcee25bdbf40335694fdd608e17ad513bc5c32a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd96f3b1c0d3032d98f87a4f31dd9efe8a54428c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x043d91ecea2e66e51bfb0c61780393707460ce28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x046c3b5de733524468097a51dfead097b2ddbadd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0919987a0acdb17c1de18c61c14edd5f030611ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ac9e4a0423eec93357e2b0f83ef8c6469fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0dad5a47adbec92e7472f6f34ac066798dedee40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f3a3f26ed5a80cabe9d146d6a717f202075b642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a58d4cff22c7e2e0c4ccf4a0010b87822d024a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e3b3f9562adaf0351a558f8a1ce281e5a2623ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x259743ff627313d55b6a15735bd40aa9ac4d6ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x28cf3b462a1adde87fe7144d110bcf0d464c97b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3156855e98ea8d25ac50de5c2c95b28829523dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x315b6510f832a2c3c996f82e638e4b7b4f0f6973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31860300e4daf46c6b1503c9061d70cc298f7002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x318f30cd6468073b50e55b3545cc53355cb6bb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34513e8a327987bb44acf5a925a7f3b4092d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x355f8b466defa96f8cc084d6a2f3c27fe5abc9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3650a024f06d4bac869d0f6a7df9bdf24cb7ed9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3aa31b2e925d0e872f9a68fe057ed677e735f38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3db4ddb402582db16b02e8c9ce4a9ebeb7276ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f77a086280c3299a9fdaaa702e2a4036f0f5ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4a094b3e476d7c94445f023b5dac837f9e0f98c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4a72de60a93055139efb3dc8f021ceecad8caa7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c8c0d2ca19a97896aa9135449e6d6471a53fc5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d8f0b0240467a40d05d25e72b7aaf5924562036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4dee2581e2a9f0673f94521deeaa112cdf1c026f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4e5fff4c833aae0f672cb7a4659d8d9b2627a411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50893df23638db2607a3d398eac6c65cdf847bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x51339a25fb3f8351c43b4b552af82c1b234fed93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x532ec6b4e859a0e39610ac73707fc655fb33c285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56326f8a86ed6e77ab5e5d1bc77202670fd3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5b92f48d5004deea179334ed63edf4c215af0cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ccf5a000129988e4512408bc49d94e62f581afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5cfe73b0238bb3e636dc4e68a31bee5d7fbea1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d8153354640678cef4c8fadb85a1e3e03df780c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x62a7d1fa1e67000e70e2a7ed59a99e39d8265da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x65cd1f0ac298519be4891b5812053e00bd2074ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66717d147b113e257adf007063c06e7f33685653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6aad667f0f897f9f9a3e2a82618483f7fe53524e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x749716918b78447610e4aa03d8895454b19fd59d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x799542dd34de2d675409005da66829c4313856b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d18f2d60e4fd6f485419727515807d09a542eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ef6457e6ae4883bdab4a802fbf2e661c747b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85a4dd4ed356a7976a8302b1b690202d58583c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x886ef6d0e38d3e37eef7e73c856ededf0e6c0e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x89ec5589c030fcef8c29e7eec491d2e73b53a623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bc9982ebbc55e999fc198cf8bde860b174905e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8ccd02e769e6a668a447bd15e134c31beccd8182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8dd5e4dd43b8736ea7fca37a751563c2bda929f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9176b8eb7fdff309be258f2f2edb32a8b79f19b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x97bf8cb6be6757ab46d44853eabefd0d4c153037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa41fef85d7a7debad0cc265ad514716c52919559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa730caa84b6e72bb51ed5b2a1b08bc6031a95294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf1ffadf58c7a6ef30f715a7f20757e1a0fafe28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb108b485d4948681a70cec55d060e4e40fdb86ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb2ac187a67ffe899b73c440cfb9988550f9ff017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc7944fb8e8f4c89e7d8a997f59f2efec3ce02b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xca3534c15cc22535bf880ba204c69340f813730b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xccb0515c385f3637e337632ebf2e6a861ad12405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcd952718e6ef25ac7dbddd55e501aaa0177dbfa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcfea11557bc9cb71bc6916e09fc8493d668b8d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd4b27ae6e3d6c95c57bd26de9e346f7fb727ee39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdb03e05b90bed1147df18a1997fac8e045431fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7961f9c4b5e7cec647c559d75ab5a1e6c170500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7edc3bdb72116d00b086ae89514feb1e21d266e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf0d899e6582cf2fd1a05f52c8e1b3a56fed9fdb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf1d63f9ed15368ebd4810b2e9a5ea5e2bfdbfac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6c0eeb54c74637170cd890a731a618cd1745fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf8d41b315116a1d0656c94b8af403381b304c613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf93a1a8d85b28a6dae9b5d77643a8a48e16327e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb57d833081ebd65f3226f31c9a1f04e2532f3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1b0ef045830466171d617dd0f1142ad699a4cd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x242cd12579467983dc521d8ac46eb13936ab65de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x481be66de423b6a0df368b526713ba632ef23add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x51803f621c5e90011de58b57fd5b7a92e0e39b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x5507b537650897493aed459457255996bf98d8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7c6389714719c68caac8ae06bae6e878b3605f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xabe5b5ac472ead17b4b4cac7faf42430748ab3b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242411 | `0xadda3a15ea71c223a82af86d4578ef2b076035f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xb1634b81a448df6a1d87827d88ed5275575fb338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xb62399d23d1c81f08ea445a42d7f15cc12090a71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242413 | `0x89ffdaa18b296d9f0cf02fbd88e5c633fefa5f34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242414 | `0x932e1908461de58b0891e5022431dc995cb95c5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242415 | `0x8a76c26e0089111989c14ef56b9733aa38b94148` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-242406 | `0x1721cb3ff3caf70a79bde9d771b27646ed8115b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 6 deployments: fantom `0x85a4dd4ed356a7976a8302b1b690202d58583c55`; fantom `0xb62399d23d1c81f08ea445a42d7f15cc12090a71`; fantom `0xfbf38920ccbcff7268ad714ae5f9fad6df607065`; polygon-zkevm `0x63703a4ddfa51b6cffc1bb40cc73912df62535fa`; polygon-zkevm `0x860f3881acbbf05d48a324c5b8ca9004d31a146c`; polygon-zkevm `0x8ccd02e769e6a668a447bd15e134c31beccd8182` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-242407 | `0xe8532db60408f2d47693da5b9093d71580b8c23f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-242412 | `0x2d2c72c4dc71aa32d64e5142e336741131a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x15ea9a2a0ffbaa8ad51a10a9bda84e60585ba0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1bd8e5d59a1190d37eb5492e15c35e0b9c3aec31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2121aa95a8b05d9c1db90368b60c6867618814b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x23146b474158b2a7cdafce966d80eceb1fffaa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x236d6769f6657f5d8c56a73a879c61914903a211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2e76a8d053f839a04235341df1f25235437fedd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x30673b62c26a22da8aaf6b08a7c39be94eb20f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3119d200eb798f06bd1f26b953c873c0a2d79981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3ed0abc49569dce331ba7d3706b462d194246cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x550ed36936ac0a44c1abed60d06bc3b019d334dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x57c9d919aea56171506cfb62b60ce76be0a079df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x62fd1824c810906f449227f1f453528bb54774c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6aa1e3906075936801126274e0a4cdd0c1effb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242420 | `0x797ebb6a84367b0409094fea0d10ac7516432433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7984d3ad2de4dd54d1fd6b4d89112ebf7c0df151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x84bbddf6d5f8bd2ec8a513809ac78510fcc47430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x860f3881acbbf05d48a324c5b8ca9004d31a146c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88d0cc152a78a8afa2b9bb9898e515c60e0a1e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x89cd0f2a59deb6ac0db8401eac5bfe132a25153b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x921acca39e8d3519a503ee4a11b56d6eeacbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242421 | `0x92bce3972916c2ceda46c4eebc9684ac26effe5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x932e1908461de58b0891e5022431dc995cb95c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x967768f830d44cd14695d27de3b7d8826023bd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9ff0bcb15fc33226c92a42ca04cd2e4ea18b0901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa085447b580c2fe4f289ce919828e39cf3ffc958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa23a224add122f31eed712e0c074ce0501b4cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa5fd4ed30d7d7de50d23164791f08fb02c208153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa74b06cf5a28750f3928367790d4f218c097c348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xadda3a15ea71c223a82af86d4578ef2b076035f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xae4cfe842652c82c21df90e06ab07361e171c836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb42d5956cde4386b65c087cfcd16910ab6114f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb4514ad7d76253e57c4a30c2c4dca9ecdd11a808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb90ca9dfa7128f5e074106acd93cbf05928c78af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbb7a3d439abf42cf39837f9102f987bab3ee2e73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242422 | `0xbbb97d634460dacca0d41e249510bb741ef46ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbc43f2b29f9b206713aaf6178b509d6f030c0a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd9272a45bbf488816c6a5351894bce7b04a66ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdc9d2dea61f59720f826ebcae5d1d99535a8ecb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdd2346e0da9540792c2f2e86016bc44ba39dc72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdfd2dde98120b4c5710113d672f8d23a6e4ceb24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2381b5afae99b899596bc550184a080daa31f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe95c255aceda3c70c38f252094b15171fad5580f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeaaa9b7f2380252211c51ad1a6e329c4f90557d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeeb687cfc99d8e35c874a2c88648a47e87adee2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02f4a98a4e59e8c7ba3269cbcd1f1e9f3eccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x065cb8139e9fed6c97f8b0851e599c56286ea031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b0ef045830466171d617dd0f1142ad699a4cd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d2c72c4dc71aa32d64e5142e336741131a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e76a8d053f839a04235341df1f25235437fedd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5507b537650897493aed459457255996bf98d8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x921acca39e8d3519a503ee4a11b56d6eeacbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242435 | `0xabe5b5ac472ead17b4b4cac7faf42430748ab3b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb177cf10f4382f671e5923c6c06f7b601d5a04e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbb97d634460dacca0d41e249510bb741ef46ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf60a8e623d4e776f6ffa94d8bb7ef7c22e057a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd2346e0da9540792c2f2e86016bc44ba39dc72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242436 | `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xadda3a15ea71c223a82af86d4578ef2b076035f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00501f23965512eab62c0bfd085d7f0e745b0673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x065cb8139e9fed6c97f8b0851e599c56286ea031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x067ec6134e6ec277c7d9589889c85b94a293bf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07ee54286f65c05d94a4badd095614dba3f5ebdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f513c054f93b21f6213bf9511d68b5acfc4dad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fd9935bd905172de786b47ffa9b87cbd429e3fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c4063366cf116616518e9950729936b8c323411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc05b01f2e52ae3bb29f7a0059fe112c60aa3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e4a5d2201ee4456130a5195fd6261d1ba297225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20021bbb9221de650838a4325c7515dbdd011a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2121aa95a8b05d9c1db90368b60c6867618814b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2185b01dc7867e0888d5a7ab3b4875e911c6dc82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x246e22d93a89e9002a9295f4a63a01b61a098d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2472ca62c19ab99ab9947a7754fc38945b68fb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2536d1c9615eadf3083ad224b4dc59b72ece8694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2592686212c164c1851df2f62c5d5ec50600195e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x288f5b15650c4fb58dd51788ec0e4546cb5313ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab2c46df4146e092bac933b73ed37b420ae52ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d2c72c4dc71aa32d64e5142e336741131a73fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34204a0f240e81c9a7070d0e80421a498959cc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ab392793914a1dfd90bb7dca4ecb487983dd262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b6518088fa645c5ba7b17e037386c529ae14c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e5685f27e0727846234e2ac8d966b0d7ece1aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e69524c36dc8462573f8626cebe4be22a9eb01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f77a086280c3299a9fdaaa702e2a4036f0f5ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x423f214ecdd0df2afebc4241544d76ce864479c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46cfd2fa813d7d70a83839fab1924337b255d66e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cfa9d54a54867ef914f88315f54ec004972aa01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50c670e3130ab1aadc523a94302b19c32d3adb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f89ec0c234ffa0a9a3b85503c275cd426a51503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61a19b4c3ce822b12b1e8d5adf772014c9c87b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aa1e3906075936801126274e0a4cdd0c1effb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d3d2c72824cb63944e4feced59cbc7bbebf3caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6dc9b390130c96b788ebeb389cb3cba992289532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e03bc427fca3b4664cb9df787134e349e0f0d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e93dea7ec9c515dda1501225e65769d4cab2dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7515fd09a998fcf8815cba1297bba26e0b79f756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x764bf1b9e528ac9ec7143bc3665273d8b8955d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7984d3ad2de4dd54d1fd6b4d89112ebf7c0df151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84bbddf6d5f8bd2ec8a513809ac78510fcc47430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c261c87288dd5e2dc462fa0fd4c6399a7f102ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x944344cd4014305e1ffaa613396d82eaf5b67b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x950fb7abfedf31527a1a5c9067e21eb9761bf35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95e669875f903aec3b96c031b6dda0b40885b529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ecd84b70b038c76ecc760afb434654eaeeb264d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa20a5359c54f3f29892ba288f79312c0f6e91c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa54eb62954a6492779c41b4fc015c927016bd8b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5ce107711789b350e04063d4effbe6ab6eb05a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac93148e93d1c49d89b1166bfd74942e80f5d501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad6c5e4e1ec034937d77f1f8fb5211c01fcbdf63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf216fa9be6bc0a56884e31f92c27c87eb46df1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb77463eba7f1bd5f37fca35fdf9306b09baa7379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba4c7b5efd44aa60da0440d0427555bdbe50e6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf60a8e623d4e776f6ffa94d8bb7ef7c22e057a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfe8d46e257639749e062457da68cdb7cec3973e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc030bef30ede8ebd7fd319361ceba54c81754ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc28a098cf816bf481c15af4397e83ad35318e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf8393cbf815eaf63e607a9d6e6909e88345433c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcee751585b7f39f0efc20d1841436c862061caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfad754a7a5a6a48553e75c9669a919ea09ce816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0f792a9fb50b307e38a1aab456b9258d3e5594c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe13c307f65fafe4b76107ca53e3eaef927500d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7914034d4d39087bff0aed442a652f5945e914b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe872eab78fc6877a6dac64cea18451da31d213a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe976cd5146342a4378ea821aae44658f5d3c481a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242416 | `0xedac86bc526557c422ab1f6bf848bf0da9fb44a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf19a5284988099c07117b1668c63bf9a8626e50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf21f2f154918fcf21dde647bc61079cc74c3a989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf231afdbcdd6a0cb391888f5951a40a643ea7395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf251d047792f52790200881de177644b8938eb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf38c0e922856ae192c1c494097ec507ec42e347b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb98a750ff0f31328a7699a0c66bc22129e5b114` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242417 | `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x05043ee22e5e64677d42a632d42a5cb15187947b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x065cb8139e9fed6c97f8b0851e599c56286ea031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0c551e82888ad524125b1160c31f87a7809da944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0e9a6bf68d91a22fd0d564ae33a4a46451d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0ffba729d5f8f05a6c663bf723a0958f1a083b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x130666908899327cd93ecf9abf8e3c0db2ab6788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x14380cbff50df25372c9cb98763732e56af2d796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1657a62455939aaeea9741d95c79973e550e1a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x16edb18643a49e11a253ac05e7b870827e348ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x17836940f24fdd0052a3ff06f12232def03000b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x17f1a5f3f3fe3aa021b75dbade990d25d56fad11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1919c150d0f000aa7a199cdd2a444350cbdc2163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x204f7c93da15ac68a6665c64d36e5511e425f0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x22b2a7e976f0f8060b3c74567c9d0f851c57e875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x242cd12579467983dc521d8ac46eb13936ab65de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x278719fc40d288f40dfd56a31a1354277effe90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x288f5b15650c4fb58dd51788ec0e4546cb5313ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2f4b480a83b4e0bc1a8203ed039539fb2c36d085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x34513e8a327987bb44acf5a925a7f3b4092d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3586c614486ee965275f7e33a17295fdfeffa98f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x36a3f7859d3cc60f8586812712e11eefb7537b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3bc85a1d0b99cc295acd41b26c92cdd56bd0e909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3c568f2e4b165ebdc036d79b5924635ffb835663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3e5685f27e0727846234e2ac8d966b0d7ece1aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4238eb0205f6085b07b347265ce6cc6c261ab723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4608121a8d9a5f54664649e95e40829286898738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x48e2633a55e3b007fa2c3fd9fcc8120c4b54693f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4dc520c6839c628ed4a01308e2b7ab131b086497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4f5202b129a83d4f0101fe8b65b10c30dc1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4fa116f8864ee7d7cee1f5fbb58d41b70d75a529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x500c17803359a418a7c7685e00c1a3d5d8a5ded8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x513844eb4841984b768531add4244f0149e27987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x51a0d74e1791399ce02aafd9a21dc4637fe57959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x52a60fa5092f92b96d1a007eedfcd349d6ce2471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x53511764de94cda43cbbadffcca3f29d2efab0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x56120079d3ed948223c746e07199cb388f9fbd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x56326f8a86ed6e77ab5e5d1bc77202670fd3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5ccf5a000129988e4512408bc49d94e62f581afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5df820eef576986aecc0fe4900f6e11492fe1001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x606332d543ba56be41bfa412e038612f34016d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x66854c8856731364a92e834a8ac2dff7c862eece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x683334e042141f0fa15ce78e831bd128a3f9b689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6aad667f0f897f9f9a3e2a82618483f7fe53524e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6b7ccf67211f45b7cb308e5dcad5d0397227208a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6c2e26005a0c1b5f610aacd9895d58f10f74e72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6dbb1eb98ebe56456a2d5b7b04ae30a7d5866fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6dc6968e11b1100ed01994f693150f731ead61e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6f6b1be0c50519c4c3a3b562ed382f9f9790e106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7582ce7690df96c375c1893c581c47361226809a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7a3bf3ee39af554555f3c15d69cf253e6910d04c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7a4ae815d561d267a0695b0fe8fe7f01728ede18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7f659c9010e5566a2628d1eaf0cebf149be3dc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x808baad715ce1e3283ce1a237e08eb2e175dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x822b0be4958ab5b4a48da3c5f68fc54846093618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8244fd5b5c06f20e0f948be4dda480212e8d11ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8386029a2fe3eaafd09b455f48bdec65441c2119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x85840534d8e9afdeae6beb9d2f3d13e2ae0c78ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8d05f6870106707baecfcf5c0570db7a583eb92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8e8aa5e4932cd2d92a0f2e4f40c7d0f0142ad7e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x92b1ba6acb1b94899838a25ff59ae295e063629c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x945193b15ea48f1c0f51051ce16bafc7601d640a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x974ea7ab6a01bcf86cdd21362656e3942c7fc0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x994969f2d3af0f49589880869cd435c6fa44369c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x998f04847830945e7d30bf80a5da18e31c9ac395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x99fb98dd8e856ac717c92b042803b8b11e4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a0ebec47c85fd30f1fdc90f57d2b178e84dc8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9bd3084a9485daf0174c79d10190ac00c1241f76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242418 | `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9ff36c9e11eb0fb9956054b60bd563c1645bf847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa211394eab9aa2691c7e78ec3ff21ff07dba4f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa24c2392eeb31568d5a21e060f86b3606745fca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa287a20737946cddd05bbd77cae701d4c613e9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa2969b83fd4e5decf46f037a26f8e5048b494db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa45a0a9517700b747d61ab3e7f1bf673e43d883d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa8b1ba27085ff8ee49c8c5a43e262fc4304819dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xacdeab6e5baf2c9cffeb37d79271a5bd6635a3a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xad8408d13381815fdb1b598bf162e7be8740b780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xae7b342a94a6f528c30d75bc9edc9aa6def0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb108b485d4948681a70cec55d060e4e40fdb86ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb1fa728d712bf35ea1adf0f949410f820e7bd171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb5fb134ac008388e9e0ffacc7fcc64176fa8b025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb838c26ec076a06602e0ea5da34f2482744d07ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb978c58fa57bbd3951d053edea493e5c3ff1a415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb9b42bf1478334df3557cf7a3793f6a3ff626dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbb1385152dbb10c281a16f86b15c7dcae36a6e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbdd0056e10445cc48f4a28f9710676d39f754dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc1de90bd807c230f2d616d02f329952f80f475f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc2ddc723ef3b073e478cdaa2c2b2243f552e261e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc4dcae24f740aec23388302af598538f8836b4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc7ea641156d1b6230c637d46699eb868ba02d9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc9dcd76854823a1c7b322f4c265d9d1a7653bb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xca1d96adb70aa14acd86ce2538b2d445040d87b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd20feb1df00171aa2f59c9f53c4dd230dc1f39a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd398090ba2fc528c3d6aeb17ea49038bfcbedd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd3db0880f7bfca386d37a9f28f6548110e947894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4d56d64355b524cea5ed59e01c8edcf74d695e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd5996604f5d841bbd1eda10cc44cedc7fe8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd7772c313bea4c357748e825aa101ba6f730b7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd8322bff17d4b27b09d5ca64fee530304191b08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdeb87c4242860467eccefee0fcad15f64bccf879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdf5fea819b003fc9ca1d588907bcc1ffc1766529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe142091351e8b2b53c1d67c73f8868c13d5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe1c41558598e4f9f35db768b25fb3d06b0a998e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe3f26d6fad0613c9d7f6b8e6e644f7fa09900dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe5fa9c01c36f666e858a4dd64cd555d54709a8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7948b93414783e41eedade7c7591ce80277ab55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7cb9d7e77f973e5341de62255be4bc06e2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe83a69e48a5715afe11ae39f6837035c1833e8fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xed0819bdc69cfb5f4684cb8b5b7ce70d173371df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xeecb7ba52f1a689574e2f64242743f0a0ad9eb3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf251d047792f52790200881de177644b8938eb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf2bf7b6f874248f3531ba67af0395257b9d32d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf36abda56b4a07800ec7cd52bf3bea3014b851b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf39a4c7c87310116ad915833769d301c599b0298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf4113fda5b0446b0ea6ab02f965bcf59c046c90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf891c4377039aa98e5cd42a3d716ec12ff6db75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfa196a6c9137b320e8801252e3020f25aee5c234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfab743b967ea5b8268e4d8f11159ad9e8e7c068b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfc7efdea7dd68160859b795d57309ee1114d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b10e483aac4340256772754d23131b6e0dc31ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e44f5cdabefe34d5b729acfa0a79971ffbc0e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x153d9192fb1a7860863c8bf6cac8b317584a5298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e76a8d053f839a04235341df1f25235437fedd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x435b65196f302b04baabcc1e5f07ca1192736771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x481be66de423b6a0df368b526713ba632ef23add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5507b537650897493aed459457255996bf98d8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57c9d919aea56171506cfb62b60ce76be0a079df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x605932d16b147f3232e6f44a12bc4c53dcaded6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x860f3881acbbf05d48a324c5b8ca9004d31a146c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89ffdaa18b296d9f0cf02fbd88e5c633fefa5f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x921acca39e8d3519a503ee4a11b56d6eeacbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x932e1908461de58b0891e5022431dc995cb95c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95507fc832609db0c8c18235800b4f6172942c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x967768f830d44cd14695d27de3b7d8826023bd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa23a224add122f31eed712e0c074ce0501b4cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadda3a15ea71c223a82af86d4578ef2b076035f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb177cf10f4382f671e5923c6c06f7b601d5a04e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb42d5956cde4386b65c087cfcd16910ab6114f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb7a3d439abf42cf39837f9102f987bab3ee2e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbb97d634460dacca0d41e249510bb741ef46ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf38e4ffb0b0aa075531b38d71d3b18a5f599819` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242419 | `0xdd2346e0da9540792c2f2e86016bc44ba39dc72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2381b5afae99b899596bc550184a080daa31f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe573920139a208989d83c57ea48837c6285f2cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242427 | `0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x02f4a98a4e59e8c7ba3269cbcd1f1e9f3eccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0e44f5cdabefe34d5b729acfa0a79971ffbc0e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19227e17944faf42419f019dcc8762c400fe50a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1afb48efff691f2a48792b3319308f495e9b0b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1bcb7027d5687d62b34ae347aa03eb491e139dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c4063366cf116616518e9950729936b8c323411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1dfbc56f3c26e93adde335e1472c2a27b3a11548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242428 | `0x2592686212c164c1851df2f62c5d5ec50600195e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x27d5333a14e1bccc3bb22753a601735b99dafbf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3b5fcb1d099ae8c7f065dde579293841c74d9114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3e69524c36dc8462573f8626cebe4be22a9eb01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3ed0abc49569dce331ba7d3706b462d194246cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x481be66de423b6a0df368b526713ba632ef23add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x48d756814a30a09b1e7a06c49dadd559ccaa4aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5507b537650897493aed459457255996bf98d8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5799df456453d35d9cc5811d3f44a32d9ec5db2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5ea3d9dd53422593c7c1ca16f26d79d96a171475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6337625bf843911da1e1eefaeafb5599c876469c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242429 | `0x6e3eb904966b0158833852cafd1200c171772b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x705d45564f162e4b1ad62a0adbace670e4309ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x726535589d58f53d34a313eb44ac769e86caefe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7a0c9a3d399985508e3ac756b0c86297f1d890b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7cd09bd8023d67f457a679bb4386395a9b1deffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7e3199f8c1d34029e108dab8e8571fabb6384a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7f039bebcf1eb0fa9cff5edb8ad277150140770f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x81c7858d048843f8d47fe11ba261d4592b843510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8346a803e1754f9d4c6935aee1fd864ff15955f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x89cd0f2a59deb6ac0db8401eac5bfe132a25153b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8fd003f7c10ebd1431df50d88d9aba06dd9d2c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9330903ab0a6ac94e65937652343c3fa6bcfd92f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x98e6cc74b58d60a3f463762f7090cc183cdb93a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9fd678389480590511302922cca092482816d564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa1d9ac7453c49ae24324042195d323ac7dea52c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa20596671cabc39a3da0e8bd9940215690c0c4ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242430 | `0xa29f3d5403d50ea1bf597e2ef01791a1ce4f544e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa7e0fb32618818cfcaba025a3af3544c17ca84f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa9554bfe7f962c5f71d0ab3488178f382c0862ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xadda3a15ea71c223a82af86d4578ef2b076035f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb09b0715bb6299c8954ea95190f727ca1b5f3263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242431 | `0xb0e7871d53be1b1d746bbfd9511e2ef3cd70a6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb177cf10f4382f671e5923c6c06f7b601d5a04e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb5c3fa1b505b1a8fe595aa0a51c32fd88305481a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbda11118c628920fd2a00cb0c818e997c716ffe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbf38e4ffb0b0aa075531b38d71d3b18a5f599819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbf44e27639fcedcb51b49e245ff10f535d61cafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc030bef30ede8ebd7fd319361ceba54c81754ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc43b934b52fd5bc88d908f2ac489db52af002721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc5ad95554ae0b908b7a6f61013d99cd89eacb110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcf99c2b3d1a9588a9a9a34eab25cd6f425fa8801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd67985335113ea7b7b2cbd20e69fd5e04f84721c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb12144372d1c588ee74e0340144c294f3bf0cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe2381b5afae99b899596bc550184a080daa31f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeea9077251cdb9154e03694fab5ed9cdadb06c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf2163e3b0f1f9c7bc927c7104d4cecef51a61e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf2239961d2e916503fd35315660733b8a323b929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x065cb8139e9fed6c97f8b0851e599c56286ea031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0b10e483aac4340256772754d23131b6e0dc31ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x138361ea0f91cecde6a282089edfeeb740076724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x153d9192fb1a7860863c8bf6cac8b317584a5298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x15ba62a09e6e295a696d02f8e4b80a8a13bf3785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x19e8f71f8dd925d57c6394dd16cf3a151eaa90ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1b0ef045830466171d617dd0f1142ad699a4cd63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242432 | `0x2145b1cce3a13af4fbb14131f1f480fc121ead93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3f57443040cc438d5d6108fd024dfbfd048d9503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x605932d16b147f3232e6f44a12bc4c53dcaded6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6337625bf843911da1e1eefaeafb5599c876469c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6e3eb904966b0158833852cafd1200c171772b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7c6389714719c68caac8ae06bae6e878b3605f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7e3199f8c1d34029e108dab8e8571fabb6384a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8492bc82a96d936b746d87f44f5705b47b0f3ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x879c95ce414de0127d1c1375c8119e16697d0555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x89ffdaa18b296d9f0cf02fbd88e5c633fefa5f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x921acca39e8d3519a503ee4a11b56d6eeacbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x967768f830d44cd14695d27de3b7d8826023bd7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242433 | `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9fd678389480590511302922cca092482816d564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa00bcf4561ebe91e8087bf17597354367464dbb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa300183aa7fd08cbc0e261a6f8122b355e126867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xadda3a15ea71c223a82af86d4578ef2b076035f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242434 | `0xb42d5956cde4386b65c087cfcd16910ab6114f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb62399d23d1c81f08ea445a42d7f15cc12090a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbf38e4ffb0b0aa075531b38d71d3b18a5f599819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdb12144372d1c588ee74e0340144c294f3bf0cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe10823866965f61aa845900c8ce1f1f116793534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe127720bf7e745eae742cbdf953d0ea9ceb48ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe573920139a208989d83c57ea48837c6285f2cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xec9fc3d8aeaa6beca8a627771d6543c237b111ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x01edbdd19ccf0d88eddba0b640bb4d6e180c2968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x02f4a98a4e59e8c7ba3269cbcd1f1e9f3eccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x065cb8139e9fed6c97f8b0851e599c56286ea031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0b10e483aac4340256772754d23131b6e0dc31ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x131c03ca881b7cc66d7a5120a9273ebf675c241d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x153d9192fb1a7860863c8bf6cac8b317584a5298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x19e8f71f8dd925d57c6394dd16cf3a151eaa90ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x89ffdaa18b296d9f0cf02fbd88e5c633fefa5f34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-242423 | `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xadda3a15ea71c223a82af86d4578ef2b076035f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-242424 | `0xb42d5956cde4386b65c087cfcd16910ab6114f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb62399d23d1c81f08ea445a42d7f15cc12090a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbf38e4ffb0b0aa075531b38d71d3b18a5f599819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd4493957338e3f66214c733883f789b99558758f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe62fc7b1b4687e40edb8448df108ceaca146373a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 802
- Live contracts: 21
- Unknown liveness contracts: 781
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=21, unverified unclassified=781

Showing first 200 of 802 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x5a40dfaf8c1115196a1cdf529f97122030f26112` | project_anchor | unknown | live | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| exact address book overlap | UnnamedContract<br>`0x8dd50926e12bd71904bccc6d86dfa55d42715094` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xeaec81f0ed4f622d4b389672d9859166c0832b3e` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x065356d9f628cdd1bb9f2384e2972cdac50f51b7` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xac93148e93d1c49d89b1166bfd74942e80f5d501` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x11700544c577cb543a498b27b4f0f7018bdb6e8a` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x2d2c72c4dc71aa32d64e5142e336741131a73fc0` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xb2f44d8545315cdd0baab4ac7233218b932a5da7` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xabe5b5ac472ead17b4b4cac7faf42430748ab3b3` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xedac86bc526557c422ab1f6bf848bf0da9fb44a6` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x2592686212c164c1851df2f62c5d5ec50600195e` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x6e3eb904966b0158833852cafd1200c171772b53` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xa29f3d5403d50ea1bf597e2ef01791a1ce4f544e` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xb0e7871d53be1b1d746bbfd9511e2ef3cd70a6e7` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x2145b1cce3a13af4fbb14131f1f480fc121ead93` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| exact address book overlap | UnnamedContract<br>`0xb42d5956cde4386b65c087cfcd16910ab6114f15` | project_anchor | unknown | live | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x0220864a5c899b0848a5797ca84b34cc494293ca` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x0474790b580242d0439eaeac58c51cca3451fc5e` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x0511f555ff9908ab325bb97333c0170607413e89` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x06899b9092ab29ab197c1588b326b13812ba8a9d` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x0718cd20c7f7482cf776ee15364d1ef7051bf015` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x080e42e3e2647d326ba6e519ab45a3683b5bf17f` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x08804dd8c76233f790992d3f8f3b0c1743ba1a8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x088f0de8db45a4dd34f473a3052887a02241c698` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x0ab3135cc9f186f1d13c73466971cf928d761ffa` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x0b0e063dac08740df0c98fbce4e876851b07f657` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x0b10e483aac4340256772754d23131b6e0dc31ea` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x0dfeefaa191e7e440209cbc5bf60e345ca583405` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x107bb677fa7036595a9c0289f2c6655cfa45314a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x11923c00d9c73b3b8e9ef7ce7f31fc1f70e9c3af` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x12f4a35c915032e147711584b2845d36931e3d7a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x13198fb5cdde6aa5e1c1145f1b41b1028338341f` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x134fb1b3b3519187a43be9789e7ac5473caeb01a` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x13e11a57c6cba7fa1700b8c3086c628d9a88db3a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x13f01f6a69a870bf79163fb02a65abd58ccb8230` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x14356bf935d6a62f3b87ab89f729217599bc108d` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x14f219f6cf66418b867ca3c633f0470ceb7db425` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x15187432d28d8ee94957a3277a51708b707d374e` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x1658042a455f2092016575e21d0b1ea97398b45d` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x188c65138b72b2581aca13225c49ecd5029f0aed` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x199921335fa1cab3454042e8e839fdb0581e2e7f` | non_address_book | unknown | unknown | unverified | n/a | `0x514df5293aa7ca53c05d79c37b836596c4abf687` |
| unverified unclassified | UnnamedContract<br>`0x1afb48efff691f2a48792b3319308f495e9b0b03` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x1c2deaf8ac1c65e7cf8ef98e409d20a30370f87b` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x1d5cbc5c1e72aae09dba98b6ed9c5c9a6ed80393` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x1dfbc56f3c26e93adde335e1472c2a27b3a11548` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x1faac4842054f2db2dddfc8152d7c259d5102c13` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x2022eff6aa7d1c97663e846dc69c566d674d0558` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x20e518632b7dafa09f6325e1f0815862e5798d66` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x21a13bcd87e0089de557226a51418c9f98773e5b` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x21c83be47d0e95cee9643c300a8311114119f6ad` | non_address_book | unknown | unknown | unverified | n/a | `0x514df5293aa7ca53c05d79c37b836596c4abf687` |
| unverified unclassified | UnnamedContract<br>`0x22a063ec41aa1ef71099f37e15921e1631d770c7` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x22fe8aa903f9c4b18168b5931f10fc0c4abd7220` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x23146b474158b2a7cdafce966d80eceb1fffaa6f` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x25a862691978b47071244227ff77969bc27031ce` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x25d4ba0b43ce3b1805906060f8bd74868d37388e` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x270dd604ba26b77d24f62285358816d359c6d29b` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x275dfe03bc036257cd0a713ee819dbd4529739c8` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x28d05578588c31e72fb6bb814bc82ce8308b7fad` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x2930e2a64986f8cb265c25da4df723d1b79fb18a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x293be849d5a30c83fae862f452a0abced1e36cae` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x2a3a0409c31db62f229973a521771c1de24d86ad` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x2dfb5348cc20218426e566c1bd7b8b3789cba9d5` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x2e65593392589a780dc36784ac44c9be37620e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x2e76a8d053f839a04235341df1f25235437fedd6` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x2ecf8d543ec41fc669fcbc8d8f60fe2f9966147a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x3134cb69297c965caf2ac5c4fdb46b4a77352439` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x331ae2ddb5854581496659f183e266e3bfa4a6f6` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x3324b3e07082be41048c2421863c4d5b25c91f0f` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x33ffdcf917b3b015a77d45d0eee40cbf30c0e241` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x340ff6c01b1bf5a52bc7a587f598e4a038b3fc35` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x36bf4c6510a949e3aca07d7daed3a466e2d8e30b` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x371be922a89fbb160b1387dc0d3b61c1014248ab` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x372d7b2baa26157c66118055cdc0da49e2c3f8e4` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x378879089a5e7b6640c38be486bc66ba7a65a926` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x3881f0db85d2ba0ba419ddaa267f93419305d6bb` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x3ac029080bf07c94c34f88527537b150055a48c4` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x3b5fcb1d099ae8c7f065dde579293841c74d9114` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x3c00b7150e8030bb18c14d3d39a537a24a541f99` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x3d469bcb945d0c58759fa3bb4b8ddca23a021930` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x3d75b34ea2b6354f824515aed5470519a0b4909b` | non_address_book | unknown | unknown | unverified | n/a | `0x514df5293aa7ca53c05d79c37b836596c4abf687` |
| unverified unclassified | UnnamedContract<br>`0x3dfd6dd38f055188adcb2332c2926dda28d318bd` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x3e1afdb89b6ea49e828c565ab6a36a485b7a4775` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x3ed0abc49569dce331ba7d3706b462d194246cf4` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x3f57443040cc438d5d6108fd024dfbfd048d9503` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x40e2bfa76856d922097a100906c54fc2d3c80ecc` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x423ef15de9c641f7dc8debfe80c0b811d912e55a` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x4263cdfa1c544cf4698cfd7dc4246b26c83fc5f2` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x435b65196f302b04baabcc1e5f07ca1192736771` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x43bc9d1f5e8a078be140cc1b1be8754132d4516a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x43f1cacdacd3fa65dbcbd56604b90e077fffbb83` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x44e8676d864cb635baea3b0adb0a63621477711e` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x467e73358df5e80a082cc35e673236c0ddd94ac0` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x480dab56f09a7f79a825b23bd2bfe0035a0e1b55` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x4a62552d0896a16cd1607c6ec03cbde97ed13fd8` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x4b162306ee680bf440541c3e5c70c553f632c8aa` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x4b3707114f92a2c88b3fa62c418d0a3357e3763c` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x4b8ee384d444a0bd455f43672104aec4104089ad` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x4c8e041157f3dc06d6cc5670ede41aba881d66e8` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x4dfa3d1d3af8078759d2126e92f385e5681ab100` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x4ed128f3087db2d9f6ea0f1dca3b7fc716ec256c` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x50547726c7a572c7ea5efaaed7d76ee3e90f2f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x53dd55d8eff8df63fe777b26fc6f60c8e49f0d7a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x5428c15031e801bd350054ee386d6ce4cb22a200` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x54a584dc5ff0a3cc7523874357e6d04c68f9605f` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x5538277f8d08e79e3f3e531267422bb55b127474` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x55922fa5084f9367b73fc0df9163b089d8ac4cb7` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x55e7487490a6bf2c3888fa0bbd14eb93180a8312` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x580949061021048e770d3c814964de54ac5ba762` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x58254b405e85359fc7eb3b8856ba82a4dd7c82e2` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x5897e2121183404a225f80647a1bc11a362208ed` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x5b41462adab5cb4eef45db6feac32be36a5cbda6` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x5b67866fd594b31ec8289483a719707965c67dca` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x5ca9478e9b4f6e659f00bb7d9661f9d51c83591a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x5fa1cc03be296cd63d99351c3112609cb269cff8` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x60b0752ed6c9ff079bbb356f835b2f498800dd69` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x646143722f2ce1decaa521fb89237fb2e5896b07` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x64ea7f100f0062d86ea2eae112dec221f011e52a` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x65e1a3555f2c544f84c97a385cc1dbe69da5ee6c` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x66fc74b90aae7a2271ba7a20790a3bcd558a9db1` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x699f0635379c5026f8ef921ec4a1b05fb1694876` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x6af1f57d75fcf8670ae48f6341c12faba520a9b2` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x6b664980dd0642b911c684866d883b9fa538a8f4` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x6b85c2adb47cd82b016530569b0f87035c67e501` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x6b9afc9832a51ab0c5c1bdbce8c2dbe2eb0848ff` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x6c5050e76287b0540348f4a9db5a68da47ebff19` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x6c5bb773550aa20ceab5c1a44d625c6c44939980` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x6da3be5c443be54567128409f078ceaee08e9828` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x6e3eb904966b0158833852cafd1200c171772b53` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x7184c745d3995bcc2d14ef6a7b4306fa67f3ecca` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x72d266ef3654749e83c73148b39794477657106e` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x73c30d100e7d8e3f1282d2b106940f3d80765f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x74a53159a3e73df5ee024a4af9bf1cfa2f4c1cc1` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x752d716c0a6f86f7ec46d4cba239081da42cfb04` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x75d0b5025ef5bb96d7c9c4ff54a254a20790ec9d` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x75f54021909da35d519aa5868c9e81bab6f99726` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x772418e26ab32833f4b889855b09e31abcb14775` | non_address_book | unknown | unknown | unverified | n/a | `0x514df5293aa7ca53c05d79c37b836596c4abf687` |
| unverified unclassified | UnnamedContract<br>`0x7aa8272ffe20fe3984d8a233a5ba2e8c63cfbe60` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x7c0557627e4521a4c754bfcbde0a25dcb413f73c` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x7c49fc7110ef49d080f1d0cfc57fad5f21515014` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x7ccb2bb6794fbd3838abb823286431948b0f7fa8` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x7ce22f910dbd79741a14648157e465889a9f96e6` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x7d89e4020a042eddb42fa764daca6e7feb4535c3` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x812ed17afdbb3431bd17e7d3799a5a2fad832a1a` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x81b2f475e1ca7ab6b2720adfa2fa6d4c52c4f49d` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x81c9932bd9a87e454710ef83551ac32dd808630e` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x8236ddc00bce5f8069aa8b665abae8db3f6ad9b3` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x85679f5db841e00a5406c4c7f331e65ea619edcc` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x873902a3c0731ecc1f2075435fe035acceed5459` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x8740c9f316241f905323920f4f4fa8a4d6ab100b` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x880184f9ae881d0326fc62bea8e68623a02e7056` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x8a17a9acf32811b0d2a10bd97839643e8ad14b1b` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x8ad02d1742458c1bd888dbcedd523ce7633ac460` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x8ae3859947734eed9f58e2f6954955ab5c8dc8e6` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x8bb4227a9403781d3f6126802abb3e8a36d719d1` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x8c261c87288dd5e2dc462fa0fd4c6399a7f102ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x8e2e82ab8350ef12af6fe85ba77579c70489ea54` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x8fd003f7c10ebd1431df50d88d9aba06dd9d2c3e` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x91fa656c217eec432251d18d86490347b7e70955` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x92fce8302a00aaf90f45fd37a9b44b3dbb1fc37e` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x934af7631d61c3f9f77564abb8b3488a130db936` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x9419148ba2352cfc9d4f104509262529eafa4a11` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x9422f6bfc25b42b56f109593aea252cf79fb305a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x944344cd4014305e1ffaa613396d82eaf5b67b2d` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x95507fc832609db0c8c18235800b4f6172942c6d` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x97b380ae50160e400d68c92abeaf24402c9caa62` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x98896f730c78a33417c6f16ef4d3f50b1615f798` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0x9d136a1733b152bd8b1f87d267ca23525c42a22a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x9f493813d4ea0328d263bdcd8d486e914ec5ebc8` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x9f54f8249baedad9000a33c0143a6f3f0d41fda9` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x9fd4df9dc332d029f5b80c2be1ad47bb592d3ed8` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0x9fd678389480590511302922cca092482816d564` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xa00f7422adc87b5622cb4bc822646c028cec755f` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xa04052f27bd8a0ff0376a1cd0eeed681c68a1d04` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xa1d90a83ee1920e47acbf5be08aa753284b1e575` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xa20a5359c54f3f29892ba288f79312c0f6e91c04` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xa3338b50ed9af2a017dafbe3f3b37419987a4eba` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xa5fd4ed30d7d7de50d23164791f08fb02c208153` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xa6fe7112f0e710763046cd9af2e4365571f85bbd` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xa7ceb20891c357abbcec4c87c8a0f1a6f942c35c` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xa7d7145fa208d92ee47fd909a694b8c2ef14e56d` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xa87c231a2311b9484bfc9bf90c51c3181161ecb0` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xaa105c7172e6dcadae94961c04f4b4d186106e0d` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xac20007a5cbda40d8e16df26bad89e8738404691` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xac225b5be5b2ebe53b75798366287626b9881bc8` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xaffc276d3c0fb0dbabf0b4ce0a3605fd5837b1ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xb4514ad7d76253e57c4a30c2c4dca9ecdd11a808` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xb8030ad48950644e7fa77782a9c913e3c205be25` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xb883d2af071d9e3a3ea6b06c94b9ec9b71a2234a` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xb9220b9d31da138eaaaaf0ea5f686271f504d4c6` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xb973c8be7d9a5a6db9b227555c70c8f4de3fb82d` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xba2fd16fa050d8ddb1662b3aa63b37f81e51db92` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xbbb97d634460dacca0d41e249510bb741ef46ad3` | non_address_book | unknown | unknown | unverified | n/a | `0xc30220fc19e2db669eaa3fa042c07b28f0c10737` |
| unverified unclassified | UnnamedContract<br>`0xbbf6e0ae67f66c83116db811e5ec8a983366794e` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |
| unverified unclassified | UnnamedContract<br>`0xbdf32c838e1b5d927b9ecb099b1f01f81d677a30` | non_address_book | unknown | unknown | unverified | n/a | `0x11111d16485aa71d2f2bffbd294dcacbae79c1d4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK Audit Report for ICHI - FarmV2.pdf](https://github.com/ichifarm/ichi-farming/blob/main/audits/CertiK%20Audit%20Report%20for%20ICHI%20-%20FarmV2.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [audit.pdf (also discovered via alternate URL)](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp/audit.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 33 | high |
| [skynet.certik.com/projects/ichi](https://skynet.certik.com/projects/ichi) | CertiK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [de.fi/audit-database/defiyield/ichi](https://de.fi/audit-database/defiyield/ichi) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit (GitHub directory)](https://github.com/ichifarm/audit) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view](https://drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view?usp=sharing) | CertiK | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view](https://drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view?usp=drive_link) | FYEO: Quality Assessment | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Ichi_Farm_Audit_Bramah.pdf](https://github.com/ichifarm/audit/blob/main/Ichi_Farm_Audit_Bramah.pdf) | Bramah | Audit | 2020-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [quantstamp (GitHub directory)](https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6948] CertiK Audit Report for ICHI - FarmV2.pdf — no match: Only one contract in scope: ichiFarmV1.sol. Date inferred from 'Apr 1st, 2023' in header.
- [11799] audit.pdf — no match: All contracts mentioned in findings are in scope; audit date from title and final debrief date.
- [11801] skynet.certik.com/projects/ichi — no match: No reason recorded
- [11802] de.fi/audit-database/defiyield/ichi — no match: The provided text is not an audit report; it appears to be a snippet from a web page requiring JavaScript. No contract names or audit date could be extracted.
- [11803] audit (GitHub directory) — no match: The provided text is a GitHub repository page with no audit report content. No contracts or dates could be extracted.
- [11804] drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view — no match: Scope table lists 7 files; audit date from cover page 'October 2023' and testing end date October 10, 2023.
- [11805] drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view — no match: The report is a code quality and due diligence assessment, not a smart contract audit. It does not list specific contracts in scope. No contract names or audit date were found.
- [11806] Ichi_Farm_Audit_Bramah.pdf — no match: No reason recorded
- [11807] quantstamp (GitHub directory) — no match: The provided text is a GitHub page listing a PDF file named 'audit.pdf' but does not contain the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK Audit Report for ICHI - FarmV2.pdf | ichiFarmV1 | unmatched — not counted | — | listed in scope table and findings | no |
| audit.pdf | AddressSet | unmatched — not counted | — | — | no |
| audit.pdf | Arbitrary | unmatched — not counted | — | listed in findings | no |
| audit.pdf | CollateralToken | unmatched — not counted | — | — | no |
| audit.pdf | ControllerCommon | unmatched — not counted | — | — | no |
| audit.pdf | DummyMintMaster | unmatched — not counted | — | — | no |
| audit.pdf | ICHICommon | unmatched — not counted | — | — | no |
| audit.pdf | ICHICompositeOracle | unmatched — not counted | — | listed in findings | no |
| audit.pdf | ICHIERC20 | unmatched — not counted | — | — | no |
| audit.pdf | ICHIERC20Burnable | unmatched — not counted | — | — | no |
| audit.pdf | ICHIInitializable | unmatched — not counted | — | — | no |
| audit.pdf | ICHIModuleCommon | unmatched — not counted | — | — | no |
| audit.pdf | ICHIOwnable | unmatched — not counted | — | — | no |
| audit.pdf | ICHIPeggedOracle | unmatched — not counted | — | — | no |
| audit.pdf | Incremental | unmatched — not counted | — | listed in findings | no |
| audit.pdf | MemberToken | unmatched — not counted | — | — | no |
| audit.pdf | MintMasterCommon | unmatched — not counted | — | — | no |
| audit.pdf | NullController | unmatched — not counted | — | — | no |
| audit.pdf | NullStrategy | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenFactory | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenProxy | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenProxyAdmin | unmatched — not counted | — | — | no |
| audit.pdf | OneTokenV1 | unmatched — not counted | — | listed in findings | no |
| audit.pdf | OneTokenV1Base | unmatched — not counted | — | listed in findings | no |
| audit.pdf | OracleCommon | unmatched — not counted | — | — | no |
| audit.pdf | SetTest | unmatched — not counted | — | — | no |
| audit.pdf | StrategyCommon | unmatched — not counted | — | listed in findings | no |
| audit.pdf | TestController | unmatched — not counted | — | — | no |
| audit.pdf | TestMintMaster | unmatched — not counted | — | — | no |
| audit.pdf | TestOracle | unmatched — not counted | — | — | no |
| audit.pdf | Token18 | unmatched — not counted | — | — | no |
| audit.pdf | Token6 | unmatched — not counted | — | — | no |
| audit.pdf | Token9 | unmatched — not counted | — | — | no |
| audit.pdf | UniswapOracleSimple | unmatched — not counted | — | listed in findings | no |
| skynet.certik.com/projects/ichi | IchiV2 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/ichi | Timelock | unmatched — not counted | — | — | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | TestOracle | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | TestERC20 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ITestOracle | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ICHIVaultDeployer | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | UV3Math | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ICHIVault | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view | ICHIVaultFactory | unmatched — not counted | — | listed in scope table | no |
| Ichi_Farm_Audit_Bramah.pdf | HitchensList | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IERC20 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Callee | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2ERC20 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Factory | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Router01 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IUniswapV2Router02 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | IWETH | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | Math | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | SafeMath | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | SafeMathInt | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | SortedList | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | Timelock | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UQ112x112 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2ERC20 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Factory | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Library | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Pair | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | UniswapV2Router02 | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | governorAlpha | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiBuyer | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiFarm | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiStake | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | ichiToken | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | oneETH | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | oneFactor | unmatched — not counted | — | — | no |
| Ichi_Farm_Audit_Bramah.pdf | uniswapV2Oracle | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 894 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 72 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=4
- Match method counts: n/a

Zero-match audit list:

- [6948] CertiK Audit Report for ICHI - FarmV2.pdf
- [11799] audit.pdf
- [11801] skynet.certik.com/projects/ichi
- [11802] de.fi/audit-database/defiyield/ichi
- [11803] audit (GitHub directory)
- [11804] drive.google.com/file/d/1DA8qnvezkfBpIlLQaSENi9MAq3ps7M0o/view
- [11805] drive.google.com/file/d/1YyK49Hbo2DqFVzDMYwQLLl-56_uCHIPR/view
- [11806] Ichi_Farm_Audit_Bramah.pdf
- [11807] quantstamp (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
