# Agentic Audit Brief: FireBot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: FireBot (`firebot`)
- Website: [https://firebot.gg](https://firebot.gg)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 91 unique implementations (208 raw deployments)
- Coverage basis: 1/7 confirmed own live verified implementations (14.3%); conservative 14.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,357,511.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for FireBot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum, polygon. Structural roles: 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (6), erc20permit (3), ownable (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf9680d99d6c9589e2a93a78a04a279e509205945`, chain 1)
- UnnamedContract (`0x10f964234cae09cb6a9854b56ff7d4f38cda5e6a`, chain 137)
- UnnamedContract (`0xab594600376ec9fd91f8e885dadf0ce036862de0`, chain 137)
- UnnamedContract (`0xc907e116054ad103354f2d350fd2514433d57f6f`, chain 137)
- FirePool (`0xe20e046b230a5530438d32abfbcc3e61d7670234`, chain 137)
- FireVaultEP (`0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3`, chain 137)
- FireVaultFBXV2 (`0x960d43be128585ca45365cd74a7773b9d814dfbe`, chain 137)
- FUSDv2 (`0x3c56f017d9ce85350df8f4b495033aaa15563a99`, chain 137)
- Pyromancy (`0xea459c173753da4126e665530e6c82ccb7bf370a`, chain 137)
- UniswapV2Pair (`0x1000bb854fbc6d98dc9d859d6cb47e22a31eb8f9`, chain 137)
- UniswapV2Pair (`0xe7b7cf919e2798defc1f08133312cd151e5a5bed`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/7 (14.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 11 of 91 unique; 80 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/71
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 91
- Raw deployments: 208
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| RedTiger | Tier 2 | 1 | 1.4% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FireVaultEP | core_logic | project_anchor | own_supporting | 0 | polygon | unit-239909 | `0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17b509b2b65b0d07b9e46bfc2ffe6c9c09a8e821` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0551ea48bd7322655b99e75f3beac71356443815` | ⚠️ Unaudited |
| BurnerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x188cd8e985668b9a5e53649e3d3f23d535f264d2`; polygon `0x8626611fc4c756dec73bf52ccec77960b79232cc` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1f71901daf98d70b4baf40de080321e5c2676856`; polygon `0x4a900f81deda753bbbab12453b3775d5f26df6f3` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x841e380e3a98e4ee8912046d69731f4e21efb1d7` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0`; polygon `0x72874cfe957bb47795548e5a9fd740d135ba5e45` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xaeb318360f27748acb200ce616e389a6c9409a07` | ⚠️ Unaudited |
| DynamicCryptoIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xc91953e110ebb0039859304a0d1b64f8450763fc`; polygon `0xfae813768a473d006e2629c55b1104d0c099c488` | ⚠️ Unaudited |
| ElementalParticles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: polygon `0x0315090445c79de5c69c25f15aefb1a546263fd8`; polygon `0x0a68d497f2e2e38de43daec413d9c9aafc78ee04`; polygon `0x0ebbb58e92db012fb5422b44577047e6ee4c752e`; polygon `0x0f9f54202446a4d8be9b8dfb03dffa90ed120d01`; polygon `0x29bef7b4b31c977b3c24df4f9a38290e000e5481`; polygon `0x4b63fe582dee389154ba0b227d7f7155e6905d2d`; polygon `0x5f7a5f714cd9f619cff9d35835b4c01a825faa62`; polygon `0x60ed6acef3a96f8cdaf0c0d207bbafa66e751af2`; polygon `0x7087fdbc5b62b589a8dbd06523433f0d1446b459`; polygon `0x898fa6c1436a0c7514bd2215405591e71e665234`; polygon `0xa476a91d084e8b5f4bf0dc86c889888be2d26f1e`; polygon `0xc16a31e0b36c3e5e9130730351cf9c0586e2b83b`; polygon `0xd1ed84f415fb54fa9a212f60d35406ef0056fc09`; polygon `0xf581bd6418603c2754701ff80fb1ea983d7767ab`; polygon `0xf91d9905b2e33022b44373a80a7f959742202dcb`; polygon `0xfb0f33679639d7bfc9cfb80d4ee519f21552f504` | ⚠️ Unaudited |
| EPSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x2918eacb1f91e9c30c07513b0c41e03da0e41402`; polygon `0x5b7c2bbda7ca4df4cfef9be9cc15dd8a20b991c7`; polygon `0x814dbfbba37ae17f19fbc19099eca246b6c99b28`; polygon `0x85658c943bb3dc71ce808b24cb2ce770f7e81f76`; polygon `0xa824742a34d6b261bdf670db01e384fcefc30f6f`; polygon `0xbc036dd8b22306f041f17d8580549015156c0066` | ⚠️ Unaudited |
| Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x92a9180af33531a5d78d81d90afc0523dc6c62c9`; polygon `0xf65c47befed8eb5d388bce2c0e88254360f57ab8` | ⚠️ Unaudited |
| FBX_WETH_LP_Farm | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c1bfefc1ea12b698540c8f7cf233fe499e8d6ee` | ⚠️ Unaudited |
| FireBondETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xd1aad9405d852ec78eb8ebca53ab9b8587ee8f3e`; polygon `0xf1e32e8aff67554cafedf151917a685e57a236b6` | ⚠️ Unaudited |
| FireBot_Bulksender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x1e9bba266b3d2f732a0f9c4661df613dfd9b06a0`; polygon `0xc85285e97f74fb9b3af74a7dd85c54988c4cde90` | ⚠️ Unaudited |
| firebot_market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x02e219d7b59c43cb012bb87dcab86172ff31dd86`; polygon `0x242fa75d00d8904ae01abb3625c22a8138af9538`; polygon `0xd709e16081b3ac929833a1cbd389555142d2d0bd` | ⚠️ Unaudited |
| FireBotGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c10db92c0a6e2bf089f08a60fa98158359ae457` | ⚠️ Unaudited |
| FireBotItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e3c7417555b7c77db6efd7697a9dc19e13c89da` | ⚠️ Unaudited |
| FireBotItemsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e14520c30370d114612552616964a3bced6176e` | ⚠️ Unaudited |
| firebotMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xc99567b0b5649120fe882554cacfcaa68bc1d334`; polygon `0xf312bf23569151becd5ba27745e4e05e9d7eb39c` | ⚠️ Unaudited |
| FireBotPromoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x814a9f5301ebc9233cab4928e4bf95f6d4831a4f`; polygon `0xd3ec89bfd804a8b7e58fd1f93eef8eb8f01cf109` | ⚠️ Unaudited |
| FireBots | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9eee7294dc7c3bb64fd57a514e755022a333295` | ⚠️ Unaudited |
| FireBotStakedEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd167804ca2ad66cbbf959d707229c2229284acec` | ⚠️ Unaudited |
| FireBotToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd125443f38a69d776177c2b9c041f462936f8218` | ⚠️ Unaudited |
| FireLabsAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x94d072a84253161d0de08cf0629409c1693f48d2`; polygon `0xc0c17bba48abd6b7d5825eb355b396a3a23302cd`; polygon `0xf73e17d3c12f0def88879a69460c56772ea33c41` | ⚠️ Unaudited |
| FireLabsTransmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x003e00643cc31daac2368a84d9679843246daca9`; polygon `0x029aa886e57bfe7440b5b8e75609369ba8f3cd5b`; polygon `0x07f061438452073409854fcbeb65aa933cfb77d0`; polygon `0x88f4cc3dac423d95d97531a29ade052f21f54e18`; polygon `0xb3daf9ed3e09e86c6ed334dffb8fc1418e8f8c9a` | ⚠️ Unaudited |
| FireLabsUniversalStableDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x3e277ed2d80f9beefb94c4cb4b12ab426a8d3e29`; polygon `0x4a681e71708baf98b35eab88b0872c05c71455fa`; polygon `0x63c69b8cbbfb203939a1e9cadd1dc09529d2aa3d`; polygon `0xbf6a082088959bedcfd479e2813fa0ad525fd3d2`; polygon `0xde457735629d92510247c80765da6aeaf0e64b69`; polygon `0xeb7962955a488a0ddae8abfdd2b7fe89d7af077a` | ⚠️ Unaudited |
| FireLabsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x15a20c06b195c243522891d9619e98629ccf3b2e`; polygon `0x51990148f42dabfced3d942b410a7efe70b6326f`; polygon `0xa4e2a0161e4de96fede05bee0c9bfe369d585abb`; polygon `0xa865da2964402b64d915b28672dc30e8db7ae725` | ⚠️ Unaudited |
| FirePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: polygon `0x0170c4c00d18fd30f8323cca5e25e4594d1836a8`; polygon `0x0f427944f94a0567ee0a806b0620e18607c0309c`; polygon `0x18a7b310f39f20ab012c235df700bd2d19a3e1bd`; polygon `0x447cff3ab39a65f57c719dc361b69188b63e74b2`; polygon `0x49d1d858cbd84233dec8299f95bdd62d0a0ef0c4`; polygon `0x4f65a072327d2d58a4f6eb9e533263171c1a49de`; polygon `0x6eca89c90206af9f2c9e9b44f179de65f6350311`; polygon `0x7b354f64f50cafa73fcd94afe6cedd976838d7b5`; polygon `0x81110eabc84c07df4fd589056ecc382b5c0eb1e0`; polygon `0xccc2cb0df3041324a51733590d61f188f1cf3311` | ⚠️ Unaudited |
| FirePool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-239912 | `0xe20e046b230a5530438d32abfbcc3e61d7670234` | ⚠️ Unaudited |
| FireVaultEP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x3d161510e9161c0fdf5e484ae324dcf8335b15b5`; polygon `0x66cf8918c2ffca35a1b4217c10c3153e78c24094`; polygon `0xcf93d147638dd2e7292a362f6062e610ed720843` | ⚠️ Unaudited |
| FireVaultFBX | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0xa461b57d4794447bb53ad584844c4a19c6cf132b`; polygon `0xd3368e1fe701e9b3a7be7de1560cf08375a78e75`; polygon `0xe344dbaa709c52982ecd3bbdd9b690631d127b9a` | ⚠️ Unaudited |
| FireVaultFBXV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 17 deployments: polygon `0x09083fa4a172e52df84808edc31fa167e591c049`; polygon `0x0985342ed8cf870b970526f7b8ccf40b68a6d4df`; polygon `0x0f322612bd773346246786fab0014fcaa68b22d9`; polygon `0x2b5f1730efcd888591e4916606e0247b3d1ded23`; polygon `0x30f096f04e8be3b6d6b0e59256249b6f680bd486`; polygon `0x36466360e3d1f245e53fbe95cb1238284eabbf56`; polygon `0x4758d97b44c9ae11d5e45b956c5e050711e16044`; polygon `0x65104285ebd1d500293a20dda5a40c5ce6cd9047`; polygon `0x65b8e5d50885c2a2896ac65ca5772e71377f936d`; polygon `0x77ff4fbc590e54f32b5b64a1f2287525c3583348`; polygon `0x869f1ed23ca99f00efd38baf891cc36a918e241b`; polygon `0x9bf581e148f187f5df8cea884daa6192589c14c7`; polygon `0xa163f1a2ebcca2eb07fac7388be491d9768f5cfe`; polygon `0xd0e48967af74240d1c9526dcac63a9a782e7c271`; polygon `0xda6167d718b7439b8eca16e011d2d85c2c7046d1`; polygon `0xe44f4eb297ab29e163968a72df27a2442c05f5f8`; polygon `0xf584be26441bf224a91d4f6bb0320b7c9f4ef875` | ⚠️ Unaudited |
| FireVaultFBXV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-239908 | `0x960d43be128585ca45365cd74a7773b9d814dfbe` | ⚠️ Unaudited |
| FireVaultFBXV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d979fed1defc256c02a97687840c0afb7022594` | ⚠️ Unaudited |
| FireVaultFBXV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ccfb7d2598421ea897ba94f5d3fd598f4067577` | ⚠️ Unaudited |
| FUSDv1ToV2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x37852b1811c47f6a20824a3d9bc8516d64ff7901`; polygon `0x570ed0d7b9405c1e0bedbe9931f7b2335537dd27`; polygon `0x7db8ea029473b8b0819b5bd2506704d360fe82fb` | ⚠️ Unaudited |
| FUSDv2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-239907 | `0x3c56f017d9ce85350df8f4b495033aaa15563a99` | ⚠️ Unaudited |
| FUSDv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x9ac98c4f1abf12b4db0976c6c08d1d64922ec2c7`; polygon `0xcafab3ee74997bd8ff5357ea0edc9ced62550531`; polygon `0xef2a8e57c5e972616edae297d9e0c7827ab3562a` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x7a5475e89838e688cedf82cda56915c166b5d837`; polygon `0xf03d690099dbca0e8787a3223918634696e9ae50` | ⚠️ Unaudited |
| item_selector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad79b4a1905de5e505a7c8b34a20d7456676dcf0` | ⚠️ Unaudited |
| item_vault_swap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc82669f560e1d1099636ada24479bb0f2bcf4910` | ⚠️ Unaudited |
| LPFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x257793cb6a8111d36d62f50dcd27926f404c6626` | ⚠️ Unaudited |
| Migrations | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dcfd69c12e866dfbb857646b77f842c7b25a5fc` | ⚠️ Unaudited |
| NoLossRoulette | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc2d93f63f5be6385adcf42bd0fc194edf6e246a` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1267398f95a7ded2c5eaabd5508c047aff008592` | ⚠️ Unaudited |
| OracleLiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa347eaa79ad53596fc6ebe73bc034e06e27e4c84` | ⚠️ Unaudited |
| Pyromancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x3be8ffbf296e9a5bb1cacf7ec9f7576f48262701`; polygon `0x6a5f24c9ba295673aec6fe9df04ab3d1be694f5e`; polygon `0xd72c965e95458f24492863a2b7c490abac0ee643` | ⚠️ Unaudited |
| Pyromancy | unknown | project_anchor | own_supporting | 0 | polygon | unit-239914 | `0xea459c173753da4126e665530e6c82ccb7bf370a` | ⚠️ Unaudited |
| PyromancyBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dc9cf28c1496e7463ee155c72f198a49400c5f4` | ⚠️ Unaudited |
| PyromancyEPDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd06bd02b7072d126ca4c951eaaaab3418137a65b` | ⚠️ Unaudited |
| PyromancyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb83642be42fcdc7858fb447b90283ec8e650067` | ⚠️ Unaudited |
| RefToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 13 deployments: polygon `0x055fa35955bd0d895d719d8f2a164685fbff8bb5`; polygon `0x0d0c7e1ec40bc585d5c4e42dbab92be50c343e94`; polygon `0x13d9bb61fcc4d51b80fec1575de1d30500292e4d`; polygon `0x1aca6cde3cd48bb81715228c56a78cf23d790a4e`; polygon `0x1c6bcf00a3dafef41f4e69a36ba4de1a7f7baab5`; polygon `0x587290e8de1485c56a33368639bd45c68bb06798`; polygon `0x5f403d3517612fb4c93bd99d78505099cb402beb`; polygon `0x6c133826102c1da5dfcc023980a23e2f9649e57f`; polygon `0x7a0412239534361eafb2bd455b8d2c23350e9b08`; polygon `0x7fc0fd0d563c0487342ae937d6c0d98565d6cfdc`; polygon `0x995491caf3b001f7b0a5d945c32242208a316855`; polygon `0xc5d5a56fd7f2d7fd27bd670e17f8dbb7af48fca0`; polygon `0xc7f6940a28414ed619d4f08fd4fa07b972cfbd7d` | ⚠️ Unaudited |
| Sweeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x21406a2b6cea3b8556cbde91b9a5a13d0658b82e`; polygon `0x6fd632bac837301d5376ddfdeb3b285045ad8092`; polygon `0x96255566528d12b26009f0908ecbab8bed3b4d38`; polygon `0xa2632de695394cd62ced84880b641910927212a6`; polygon `0xca1e9c2d0b381933d2a6773d176d5c0abba1eecb`; polygon `0xcdac1ccb8dc1206e01b5946999ecf0709559a35e`; polygon `0xef2cb1040319cda7bd703fca8727cbea4fdedf00`; polygon `0xf3c6a4baaf014c4555471083e1debb9088b5058c` | ⚠️ Unaudited |
| SweeepETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x917c847eb0878f62e8d859be1ae20694757a62a3` | ⚠️ Unaudited |
| SweeepZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x07a9aaba0bcb5ede4734edef0571fb7e1ba574e2`; polygon `0x2d1f904abb603ac439288f40dc5e4ed97121f116`; polygon `0x8cb0c698fc960e8c1ebaf213b6209a43cbec0aeb` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefb4ff51dd2643f2d700a5561bf36959f4994740` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5ae2fe917f27d096d9bbe551c50a4ab391fb5cda`; polygon `0x6365b888c33d29834946fba62c94da5118cbb807` | ⚠️ Unaudited |
| TransmuterFBXtoDCI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x0d5ae7c9bce88849c4afb082d22c0a066c4e51ad`; polygon `0x3faf58353cafba7a957d35326e48674351d66148`; polygon `0xbc62a986cef0e62f3a5e8f7f83234132fe332285`; polygon `0xc0629abc0a04379051c9e7a32be2cbfb6069347a`; polygon `0xc3af5a105585b2e7c6c52e68500db043bd46e65e`; polygon `0xcc1ceac5c70ad69661e7e0814b299e2490f549b1`; polygon `0xfb9871635a15cd114e0966bf1dc66dee875fc72c` | ⚠️ Unaudited |
| TransmuterFBXtoFUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x497407644f721284c05fb3070dbd8c05d892d791` | ⚠️ Unaudited |
| TransmuterFUSDtoFBX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cdb5361809ea32728cf00445e346af4d9f26525` | ⚠️ Unaudited |
| TransmuterFUSDtoFBXZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe74cc17e99d8b4faf0ffe3e44c0d2a09d5490e7e` | ⚠️ Unaudited |
| TransmuterWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0039a4a4629db53deb6cee6becefd76bcc4d13ce` | ⚠️ Unaudited |
| TransmuterZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafac5dfaefc5898c391a6f0f6cd1fdb14edfe159` | ⚠️ Unaudited |
| TransmuterZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x129a3061b2af7a22db133a005abfb7213f502add`; polygon `0x703968e955ec0d41456c46a9a2c16e02cb160548`; polygon `0xbb6b8539f9d1767868102ae4f955a919d623cb26`; polygon `0xea81f7cdab072c823492f101b364321ffaf14d8d` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | polygon | unit-239905 | `0x1000bb854fbc6d98dc9d859d6cb47e22a31eb8f9` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x41d9de53ebf26f766229e42aa02904eb2495e397`; polygon `0xcffbfa978ac3fb10e829ca6b763c307daafe8a77` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | polygon | unit-239913 | `0xe7b7cf919e2798defc1f08133312cd151e5a5bed` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x6c14fa1b23a245efb97cbad357ca3948052d56df`; polygon `0x9da4dee26ab002521f0cb7ac73dcb91c6e1f2f1c`; polygon `0xa6b96e60648e11055e82f1b7b226a2aa453a29bb` | ⚠️ Unaudited |
| WorldCupPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x5fb33c7df70724e3253be661f0167c453646b455`; polygon `0xa2d632e8accf113d56681d19185a22140bd0f757`; polygon `0xf378f8e9603c2ec54b21f0a876ef847df976082e` | ⚠️ Unaudited |
| wUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42ea4507eed1de71b90a2ad839ba8072afc101ce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239904 | `0xf9680d99d6c9589e2a93a78a04a279e509205945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x036724df2bf0b053bb7e577e70cb61b4b9bb6e35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-239906 | `0x10f964234cae09cb6a9854b56ff7d4f38cda5e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19457defec6feee72c83ce43ea40a97f2561f5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d7168e865ef72372badf5f9b4a561ba1a25402d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f700a105741e88f9f2a0a2e72b3a6aa82c5ec01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61521398d03d59ebd7fd13f450c0cf9a645add21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6be50a218fc7a1f5098cdbdad3dfeaf877ec0007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d11d105614c5b78f626ab7e3f2d156efdebdfb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74911f83e714888a9f29d9af0007f3408b5fd403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74b03ffee5ed5a9436caa719a0455038c2cfea94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x922dcfd4ac4b219b3bf0d731ce2ef63e60ed62f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96f5791c6e2e436715888a0194c3f481930bb17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c3b60e93f1e6a07f638e72f17c24e96fb9aaded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-239910 | `0xab594600376ec9fd91f8e885dadf0ce036862de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2d6560c45e09ea9221c3815ad0fe53fd0439b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbaec62f014a65941f51ea542e73934776e5c8410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc42f651c6b8efa7a1a3d6953353ee63898620f80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-239911 | `0xc907e116054ad103354f2d350fd2514433d57f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf9a2de6c4a1799599b594fd9905a6e25bc193d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [RedTiger_FireBot_2023.pdf](https://firebot.gg/audits/RedTiger_FireBot_2023.pdf) | RedTiger | Audit | 2023-07 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [RedTiger_Sweeep_2023.pdf](https://firebot.gg/audits/RedTiger_Sweeep_2023.pdf) | RedTiger | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2865] RedTiger_FireBot_2023.pdf — matched: No reason recorded
- [2866] RedTiger_Sweeep_2023.pdf — no match: The provided text is a marketing/landing page for FireBot, not an audit report. No audit scope, contracts, or date are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| RedTiger_FireBot_2023.pdf | ElementalParticles | unmatched — not counted | — | — | no |
| RedTiger_FireBot_2023.pdf | FireVaultEP | own contract | FireVaultEP (selected) `0xa2b205f8c0f0e30b3f73b7716a718c53cb8e5cc3` — deployed 2023-07-07 23:57:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xe20e046b230a5530438d32abfbcc3e61d7670234` | FirePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x960d43be128585ca45365cd74a7773b9d814dfbe` | FireVaultFBXV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3c56f017d9ce85350df8f4b495033aaa15563a99` | FUSDv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xea459c173753da4126e665530e6c82ccb7bf370a` | Pyromancy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2866] RedTiger_Sweeep_2023.pdf

Fork inheritance lineage and inherited audits are included when available.
