# Agentic Audit Brief: Meter Passport

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Meter Passport (`meter-passport`)
- Website: [https://passport.meter.io](https://passport.meter.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, ethereum, moonbeam, moonriver, polygon
- Contract surface: 288 unique implementations (291 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $773,200.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Meter Passport. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum, moonbeam, moonriver, polygon. Structural roles: 2 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- MeterGovERC20V1_1 (`0xbd2949f67dcdc549c6ebe98696449fa79d988a9f`, chain 1)
- MeterGovProxy (`0x29e9fdf5933824ad21bc6dbb8bf156efa3735e32`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 284 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 2 of 288 unique; 286 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 202
- Unique implementations: 288
- Raw deployments: 291
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0142ed98ecc63daec2a6cb90b73d6d405d6d9b83`; bsc `0x306e5f3ab0b5e972cd68f1c93c8729d6081cac6d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x17f084dff8a71e38521bcbd3da871753dc67aa81`; bsc `0x6b64f602690e8d6eb43792c5650ec9faf512aca5` | ⚠️ Unaudited |
| AMPLChainBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc03bc755ac3e8cc511d9d480a5bffb16f6bbb` | ⚠️ Unaudited |
| AmplElasticCRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f2beff98ce62999792ec98d0ee4ad790e7786f` | ⚠️ Unaudited |
| AmplElasticCRPWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe39953deac442fd5a2ccd1ca3a1f5b4b90be229a` | ⚠️ Unaudited |
| AMPLMaticRebaseGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6625aa109bc11d18aa6f219d453e9dba728a7681` | ⚠️ Unaudited |
| AMPLMaticTransferGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b4fdaed477f018fd2e2024c7dc5291f0b83543` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | n/a | `0xe3f5a90f9cb311505cd691a46596599aa1a0ad7d` | ⚠️ Unaudited |
| App | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ab5ff14f658f1aa122f56ca86cf5f5682dcd9ba` | ⚠️ Unaudited |
| BatchTxCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36aaf46cab4b6e5390fb44311b5664a71a398400` | ⚠️ Unaudited |
| BatchTxExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c0144d04594ab99f4c02691b6684e3d871b589e` | ⚠️ Unaudited |
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ⚠️ Unaudited |
| Bepro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4edf8e0778967012d46968ceadb75436d0426f88` | ⚠️ Unaudited |
| BetProtocolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf3c8be2e2c42331da80ef210e9b1b307c03d36a` | ⚠️ Unaudited |
| BridgeUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2e8fc3d4399c9c775746469412b344716471e940` | ⚠️ Unaudited |
| bsc_bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdc5deefa9f540bac261829b6c64163e2cff92ca` | ⚠️ Unaudited |
| ChainBridgeBatchRebaseReport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454de9c544fcae74eb09c57a042349d3ead07e29` | ⚠️ Unaudited |
| ChainBridgeXCAmpleGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c318c047e8038e9a5e7ac613e73c39220b0311c` | ⚠️ Unaudited |
| CityFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x66182e72c7d3b1268d304a48ddd9bd4a5d9c5c94` | ⚠️ Unaudited |
| CityNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7cdc5d0188733edf08412eecb9afa840772615dc` | ⚠️ Unaudited |
| CityNftSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9326ffc875b32677132184e68bccc6fd75c79d51` | ⚠️ Unaudited |
| CitySwapParams | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb4d9d2ace6ecbc3264ef5fa8329ebfb467e53ea0` | ⚠️ Unaudited |
| CLIQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0def8d8adde14c9ef7c2a986df3ea4bd65826767` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ⚠️ Unaudited |
| CrownsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0104cca91d167873b8601d2e71eb3d4d8c33e0` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DistibutionContract1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x763e3ee4ee9cac68200e0d358ab10f5136206008` | ⚠️ Unaudited |
| DistibutionContract2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x531a9f9f384be2a3acd9581d574bd47e65ac8273` | ⚠️ Unaudited |
| DistibutionContract3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafea4511e634928f3a70b18ae565cd07736b7a04` | ⚠️ Unaudited |
| DistibutionContract4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126b53a1b0f6d036f4ef93a4e5af984bb4b95861` | ⚠️ Unaudited |
| DistibutionContract5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6972fd8b71e7af7173e18a3ed986114bb721805` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c4b07ecdad1b58ac05fa5a3c3c598b1c16232c7` | ⚠️ Unaudited |
| ERC20Handler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccf4a9fdee040782a6a37a65c986c23d964aad9d` | ⚠️ Unaudited |
| ERC20HandlerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de3826f4d28cf8bbc854c34a16753e9150422a8` | ⚠️ Unaudited |
| ERC20MinterBurnerPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x090916ac145b613c1481aab198168c3a37bc5213` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| ForthClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf497b83cfbd31e7ba1ab646f3b50ae0af52d03a1` | ⚠️ Unaudited |
| GenericHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b7026e9e5b35c844f6b115ab4558c3f7e7e3b1` | ⚠️ Unaudited |
| ImplementationDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287666565af226634a4d425943b84c88152c97bb` | ⚠️ Unaudited |
| LpMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82b6ed562f202e76a5bdbb209e077f4a96bd5605` | ⚠️ Unaudited |
| MainToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe580e7ee158da464b51ee1a83ac0289622e6be` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MedianOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c9775e076fdf99388c029550155032ba2d8914` | ⚠️ Unaudited |
| Members | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ⚠️ Unaudited |
| MeterGovERC20V1_1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246615 | `0xbd2949f67dcdc549c6ebe98696449fa79d988a9f` | ⚠️ Unaudited |
| MeterGovProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-246613 | `0x29e9fdf5933824ad21bc6dbb8bf156efa3735e32` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ea7f54b6dcf6cee86986edc18143a35f15505` | ⚠️ Unaudited |
| MscpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27d72484f1910f5d0226afa4e03742c9cd2b297a` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x83e3b61886770de2f64aacad2724ed4f08f7f36b` | ⚠️ Unaudited |
| Multicall2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x6477204e12a7236b9619385ea453f370ad897bb2` | ⚠️ Unaudited |
| MultiSend | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0xd224973b558d9b0c3a782d8984f8ff3932b08836` | ⚠️ Unaudited |
| NEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc80c051057b774cd75067dc48f8987c4eb97a5e` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5a41e85f4ce2433beef476305d307b9205d98d` | ⚠️ Unaudited |
| NftFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa304d289f6d0a30aeb33e9243f47efa3a9ad437d` | ⚠️ Unaudited |
| NftMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe563557fd604e3a40fff57a8f5b9082aaea10016` | ⚠️ Unaudited |
| NftSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8b4eba83ff7b2985924d05b9d0a064b9c6e3ff8f` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24232ccaf8bb87908c419ad7ddcca8cc9e74746d` | ⚠️ Unaudited |
| Package | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x722bcc1c85037c7c233eff80f3c057b980cf972e` | ⚠️ Unaudited |
| PolkamarketsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd478161c952357f05f0292b56012cd8457f1cfbf` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x027dbca046ca156de9622cd1e2d907d375e53aa7` | ⚠️ Unaudited |
| Rib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4bde98731149093a12579d71338fd3741fe6e5ce` | ⚠️ Unaudited |
| RightsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2992a06af9b5e156cd6574049d37ad8da52b9e28` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd25ce9a4e09d16c6ab2a2e9caa373aaeb0fdfd` | ⚠️ Unaudited |
| SeascapeNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc54b96b04aa8828b63cf250408e1084e9f6ac6c8` | ⚠️ Unaudited |
| setNumberContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x70755c95cad4d6917c51e49d4fbc932efd60803f` | ⚠️ Unaudited |
| SetText | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x65bf1e4a5af9939549afc7c8e9d2438f5ed1d27e` | ⚠️ Unaudited |
| SmartPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa854ecc4d8bf77cad542a04087fc6e0082d43b86` | ⚠️ Unaudited |
| standardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf305012ea754252184f1071c86ae99fac5b40320` | ⚠️ Unaudited |
| SwapSigner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbfb0b85fdbf132bb23db11f9c9aa72a153edcc69` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e98db51010dd1ade14dd3fb164e218805fdba1b` | ⚠️ Unaudited |
| TokenGeyser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0142ed98ecc63daec2a6cb90b73d6d405d6d9b83` | ⚠️ Unaudited |
| TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x805c7ecba41f9321bb098ec1cf31d86d9407de2f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0b9709fe3aa76068f07d054fd4417445d5c7da9a`; polygon `0x4c36f9dcd27b5ff3fb5b687941f1ac9101f0bf22` | ⚠️ Unaudited |
| UFragments | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027dbca046ca156de9622cd1e2d907d375e53aa7` | ⚠️ Unaudited |
| UFragmentsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e73381e5e29b00f91a1a6709d6f4509158f477` | ⚠️ Unaudited |
| UTUToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804dd5e6c45181b0b13ab58a3480956026150993` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xacc15dc74880c9944775448304b263d191c6077f` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991f0e5c5775ca9dd02e30e67f545c36cff3690e` | ⚠️ Unaudited |
| XFT_FARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5d4b6fad11bf3ac46862155a79dbbb7ee621d93` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (202)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0682642d18ebb4bb5e759af07a7de4eadae8e8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075bb66a472ab2bbb8c215629c77e8ee128cc2fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ea24a19b413f0f818566641db796032071bb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eef70ab0638a763acb5178dd3c62e49767fd940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1052e2cf3194a67397f0dd3c76f2fd4ceeabde51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106175d6cf20780b06944993185f7478ed046d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b228a749077b8e307c5856ce62ef35d96dca2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2771afc894107c4edc072e3bd15cb7f1bcc007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23796bc856ed786dcc505984fd538f91dad3194a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2398f3fa50c7f9cd75c517478695cfd6b710ae55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25fbc7d475b5013f631e5bb7f9da57a8d1522179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27417c374e79999415032b910121a2ad55c6d6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28aa3f5fdb1cac527cddd6cd6fea8d25981f1efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec2a066dc6066e36027848f19279acbe040b9f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3222a6c3fd5927437c9e5f4c9eb5c98b22bcde48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3267701115c58384e70897739f5bb1c258d620e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d3c21df4a26c06d7084f6319acbf9195a583c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb203e1d75fb2c518cd56f3a8094d22a46af83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4806751f3937120cc12384a7227fa56abb36d87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4839c37aa84583fe16aaf01a0e903de494e19aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a6fd66512d45006fc0426576c264d03dfda304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a26862d65cd3a316ce40d27fb5778ad923e5d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c6ea1a42ed10daa1c29965584e6e114915e8366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x517828d2549cec09386f89a67e92825e26740240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945432d6c0a4b30c1178888f776a4d430d5bc94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cf1cb58da9eff282136dce9ae8c73ae2d9a5c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d76aad615b5c6ab2dd41a56638c0e779bab423c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6282f43eb6d935363a9b3de10275046c90cea417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69299fcbe559b3494e428fd0796a24b5c5e301e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c8a3a2cc9b9831d550433626b262fb9365b5f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fb00a180781e75f87e2b690af0196baa77c7e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f94eb69b56792bbff41df00a56d35ebe39ce33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79fbe448a81f130410cc3d66e89ae4a47598526e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2d34f137877ba6226b39d9fbead484149e4dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8209815136b35f21b8c0f5aa2e2f915a73530df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82e415d7f43d2f56d431124c58221faa249ded42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x837f68d11cd15e8ab10dd5f3f210516f2cf2bcfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88ab9735aa084b59feb1fe2adc1518ec6d2e32d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0f1b4abb263b5329b02e1b8c42b9e8f539f917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ebe3fd905fe0d0fe18fa9c72e5dc9b68699663a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d144a99bd3ab1177b8df600769ad5422de7819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946fca8ab96cf5e3ee2476fa29736987d59f1c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9780f5a0e52e98d6448971a13a2365cae572ad77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9872ba4c31512f89615fa579c86acd168fc38cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x999f88ab581c5d3fc3806b90e8a97e6d84e23500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bbf85e5a6ff88c3c987356a7cf5a2215b083a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bed89582490fe0709023a048af3b16382e7a883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d52c746b4c8e197ece72117d25b8f742fd23054` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa023e6f6b4862ea38cbe45e377abd908abab2f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2a22b46b8df38cd7c55e6bf32ea5a32637cf2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa50947922908fb0275f4cd6e53d97170869f6688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52d1cea2d36c1e43b776a3392e21aff2ad74ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa58a4f5c4bb043d2cc1e170613b74e767c94189b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6121cb0e070be83aafd7353b1de082f765908b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa759f960dd59a1ad32c995ecabe802a0c35f244f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e2ce557980618253d9dafdedb27ecce2f82167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad5bac300e311169f8223484f242d43c627eca30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad89eededf3f4996932c6949ab37d9398bfbb215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae192568fadf3e2c0481901669ab5ab1bcd31a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf1d414569afcaa3ff57e0984d1a013c9a94adad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5faf2fc869f3ae44f192cc0d28b471ecd4455cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61b5aca15193ecb719433d0e5c066f9980e1e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd515e41df155112cc883f8981cb763a286261be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd6bcac46246a7cc2308e0ae87f7794f96e33aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd79ad7e14f42b714590a3a8f045ab8084507a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeffa3ecbcd244c979285bc4466cbe5899f89918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40f0615e8ac0bdf769b9310ce6c6f51f4934098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc55b373f3d14085057c053320fb34eb5b8d66637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88ba3885995ce2714c14816a69a09880e1e518c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc944eb24fd4993ad3b056fb8b166f3f40ee2f28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9dcf34c93032e4799912dda196796a35c856576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccdbeb21b702b1b71c07b3d2b2c70460757ef7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf98862a8ec1271c9019d47715565a0bf3a761b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfedb6b85283fbbd0f5f30c5f75324a4b91819c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02b9458642d98eb874c2e6f68c50c2fd95fc983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e3f82ab04b983c05263cf3bf52481fbaa435b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd31d776c18522ac0776283a0c54fca181f61d4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36132e0c1141b26e62733e018f12eb38a7b7678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd46ba6d942050d489dbd938a2c909a5d5039a161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd530ff90a4943fa5ad4afe94cf9006fb081d2778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbfc96df67f2044f3359cdc43b3b94b1a27a4b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcf3ca046171effdc7b3dc64345f5f4258c24565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4fc7c3c5e7be3f16506fcc790a8d93f8ca0b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d12f56293bc9fcd77378da7acee48bc0d7e9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3a0b70676ed6e1947140ff0b332cae7d7f0364b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe586ebca6f13a510fff9a830450aa9f92b81629c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea31ca828f53a41ba2864fa194bb8a2d3f11c0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf41e7fc4ec990298d36f667b93951c9dba65224e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5c081a4dc5c331844089457606559bbbe42ae9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6da3889397f1f529d2be690386e67a4c1f006d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe44373abbaac76e1851865ea2c73f4ff06b1250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfedad08ba2219489f3090ff118ac9e8b040c8ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14e73381e5e29b00f91a1a6709d6f4509158f477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2771afc894107c4edc072e3bd15cb7f1bcc007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24232ccaf8bb87908c419ad7ddcca8cc9e74746d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29d24f98662b6e527da30cffea3104e6ce11776d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47fb203e1d75fb2c518cd56f3a8094d22a46af83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4960382ca3151df595b944731304f71df7edb35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79fbe448a81f130410cc3d66e89ae4a47598526e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82e415d7f43d2f56d431124c58221faa249ded42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84fe6fadc0ce36fb085cb2918c5a6a5a30f25476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93b673975dcf148329097705e1bd1b68c8d22d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x946fca8ab96cf5e3ee2476fa29736987d59f1c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94f5a8fc43392eb417fc91c7a84c971f15465318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f2fcdc43e3c07069e6b4f0adad8f1cfad9086db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa811d187bb3ea39563a078f9c14e1b144d5a7365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5faf2fc869f3ae44f192cc0d28b471ecd4455cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8bcb0b06d5d920509adc02371f06e08c7653205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcf39f0edda668c58371e519af37ca705f2bfcbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc923994d56f6b574d9ff9c2a0b1156c59d542329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9dcf34c93032e4799912dda196796a35c856576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce188bf49ee072847c95414518eb56c5eb6f0e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdacb066c8448407c994e5e2f7f2cf34348729ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb021b1b247fe2f1fa57e0a87c748cc1e321f07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb8b1bd9a47443f7e97cccf985f0254b191a84ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf997d8fbad98b8b4cd71d220563a9fb2c4ccba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe138c66982fd5c890c60b94fdba1747faf092c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee5242e33dbcc177bb74047abbe7afa55fa9e3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfac364a4a6d2bec8d1353ae7367a4ebfbdcc503b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x362ef7dc240758d60ba6c51b120b24144ce00256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f5d4b34fbb394835457a271102e70e96f8d688e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb447acd21831f6615e208c9eea7e6049db3391cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb06fa7e1d400caa3d369776da45ebb5ebdf9b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x00ead383773aa379d0e8c162b96d164b1147b75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x05097e2ba96b8870949475115b9b91f75a0b308f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0c649ed10cfc1b1586f851099ed8080ff6991d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x123455360be78c9289b38bcb4dba427d9a6cd440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1abb8fde5e64be3419fcef80df335c68dd2956c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1af963a8bd09f13f412b967dceb987d64a11df05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x202ecc1efeb3fd40bb26ae64c1707485735227d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x27fbe3508c4c04fb2e979f1531d943640b9d8469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x29e9fdf5933824ad21bc6dbb8bf156efa3735e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x310d0b9bbe19c54bf00e55a7804098476997b81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3236c028ceca123ffd5da1cfe6e31071fb63082c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x39e592999df2fd3b6f9261b0cfdec72992f5aefc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x517828d2549cec09386f89a67e92825e26740240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x524dc5743a1c74bdda624de54cd0949cd9353be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5945241bbb68b4454bb67bd2b069e74c09ac3d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x59c14158be9146ababb4757e188a43d01f1ec01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5efe36df7235e9bb49a52d147fdafae6298520a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x689b07e430274c4f20e47535194c8baecd1f82b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6b7b1c3500d5f39ad5f9b262910635a39865ddec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x766e33b910cd6329a0cbd5f72e48ec162e38a25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7752859cd646e4c3caa36bd1808e46c6c243f903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7a98ef773fe4e074c83652d14a530fbce1f49be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x83fc24eb56121fa2a05e0b5170e7310738425839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8db8283729b2cb38a43f8bebfd34971d81c79727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8e789b5393f5b4614b75698075c08e6a89a9fb74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x911f32fd5d347b4eeb61fdb80d9f1063be1e78e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x94bf67b24c98eb612054a407673e0c9e946ad466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x983d3460fc959ee933edcd766cfefc9cf9afc637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9c3defbf878649e1b2b4eff49d14c4a91e26a35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa53cc329ad9555c51f02f37b3cc93a2be4a166be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa67cd90381e4c96382ea42ee1f5d58aab85614ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb3a128242e23aa80c37d14db2d577727a1fd4608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb5d814c5e4d772883bf9c7bab80c718820e15989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb60590313975f0d98821b6cab5ea2a6d9641d7b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbbe52b3df581b9e3127a23a514f96de2d9a78a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbd2949f67dcdc549c6ebe98696449fa79d988a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbd515e41df155112cc883f8981cb763a286261be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc9796b65555b18fe06a071b9f1ff26b76a4823ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcc98ae7160aa8c0fbbbbcd754d93bfaa0eba3127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd19f596b202e17b35c091d1a7520a55b7f345edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdb63afd747948a26e4979f0cdd6ad96fb9f3046f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdb84a42f23f2fcc91531df06a48da5e3a970f1cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xec550d7ce45cd0cec9ee471c9b52a7d9cf92476c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xedbd736c3614a5e9dacec92da0340f1381b954a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xee373e583e313b0bd9d7dc6dec694dc074212e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf03d603635589eeafc499b4ef4d57dd301ee10fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf41e7fc4ec990298d36f667b93951c9dba65224e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf50225a84382c74cbdea10b0c176f71fc3de0c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf7184fb77152697daeace960f335369a858eff19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf8c72b5432a5475d84699f6d6f0dedbbfc00f01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfb049b1376f36b784a9473fffe5f888c3f6b6efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfd8452e8ad9aded8e16d37e5c2e300be7884e217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0b5b9806b1b202e22aa26cfd527fdcafef9edacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d377265de3c004a4cef27dc0ed8af8b42728e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1e24ec84f66cd26dad607d81796dbeb13cb22692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3385777a17c9ff2fed6173c1253aae26f9a8612a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3674d64aab971ab974b2035667a4b3d09b5ec2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3ca3fefa944753b43c751336a5df531bdd6598b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4b4e05cb973635d1a894d2e95699cdf83510cc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x59a1b7b7469b968eb051f6c71512d2b61f27794d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x607e02aff1dc334a651172afd97ffb83c74662a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6b35140fcc6e502a7e1edac6e740513f41c4b5ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6b638f0e2aa14241e5bd686e66455565fb20853c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7b37d0787a3424a0810e02b24743a45ebd5530b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7ddc30e4948abf72391a678343dffa385da0d010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7e2d29e4ccd3e58c01c50ff057b039d99f54b01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x868892cccedbff0b028f3b3595205ea91b99376b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8de43aac40e09be38741de78a2eb459a4f22f585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x987bb5c0c25e5de95a9c1d20495f0f479ec7a8fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa93a5f77b2067b99932036ef5a1d0a5fdd2d036c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa9b46866b17c546e49a0857a7c7d9d7feca9a5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xabd347f625194d8e56f8e8b5e8562f34b6df3469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb94b5d77184f59716958e435cd105f2db50c734b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xce9572a9d273b176b2164c6dcb11276a6713c8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd8dfb1c4057a400aceda0cbb92d844f8a146b916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdf1380a3ade5f398c9233f36ad6fd0d88aea9e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe6a991ffa8cfe62b0bf6bf72959a3d4f11b2e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xff0bb979035bc622f01062f37e2bad4a05b31d83` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 204
- Live contracts: 0
- Unknown liveness contracts: 204
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=1, unverified unclassified=203

Showing first 200 of 204 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0xa023e6f6b4862ea38cbe45e377abd908abab2f82` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x0682642d18ebb4bb5e759af07a7de4eadae8e8c5` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x075bb66a472ab2bbb8c215629c77e8ee128cc2fc` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x09ea24a19b413f0f818566641db796032071bb6c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x0eef70ab0638a763acb5178dd3c62e49767fd940` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x1052e2cf3194a67397f0dd3c76f2fd4ceeabde51` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x106175d6cf20780b06944993185f7478ed046d11` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x1b228a749077b8e307c5856ce62ef35d96dca2ea` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x1d2771afc894107c4edc072e3bd15cb7f1bcc007` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x23796bc856ed786dcc505984fd538f91dad3194a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x2398f3fa50c7f9cd75c517478695cfd6b710ae55` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x25fbc7d475b5013f631e5bb7f9da57a8d1522179` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x27417c374e79999415032b910121a2ad55c6d6cd` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x28aa3f5fdb1cac527cddd6cd6fea8d25981f1efb` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x2ec2a066dc6066e36027848f19279acbe040b9f3` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x3222a6c3fd5927437c9e5f4c9eb5c98b22bcde48` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x3267701115c58384e70897739f5bb1c258d620e7` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x42d3c21df4a26c06d7084f6319acbf9195a583c1` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x47fb203e1d75fb2c518cd56f3a8094d22a46af83` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x4806751f3937120cc12384a7227fa56abb36d87c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x4839c37aa84583fe16aaf01a0e903de494e19aa1` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x48a6fd66512d45006fc0426576c264d03dfda304` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x4a26862d65cd3a316ce40d27fb5778ad923e5d4f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x4c6ea1a42ed10daa1c29965584e6e114915e8366` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x517828d2549cec09386f89a67e92825e26740240` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x5945432d6c0a4b30c1178888f776a4d430d5bc94` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x5cf1cb58da9eff282136dce9ae8c73ae2d9a5c2c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x5d76aad615b5c6ab2dd41a56638c0e779bab423c` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x6282f43eb6d935363a9b3de10275046c90cea417` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x69299fcbe559b3494e428fd0796a24b5c5e301e1` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x6c8a3a2cc9b9831d550433626b262fb9365b5f63` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x6fb00a180781e75f87e2b690af0196baa77c7e7c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x77f94eb69b56792bbff41df00a56d35ebe39ce33` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x79fbe448a81f130410cc3d66e89ae4a47598526e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x7b2d34f137877ba6226b39d9fbead484149e4dea` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0x8209815136b35f21b8c0f5aa2e2f915a73530df9` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x82e415d7f43d2f56d431124c58221faa249ded42` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x88ab9735aa084b59feb1fe2adc1518ec6d2e32d6` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x8b0f1b4abb263b5329b02e1b8c42b9e8f539f917` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x8ebe3fd905fe0d0fe18fa9c72e5dc9b68699663a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x92d144a99bd3ab1177b8df600769ad5422de7819` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x946fca8ab96cf5e3ee2476fa29736987d59f1c76` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x9780f5a0e52e98d6448971a13a2365cae572ad77` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x9872ba4c31512f89615fa579c86acd168fc38cbb` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x999f88ab581c5d3fc3806b90e8a97e6d84e23500` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x9bbf85e5a6ff88c3c987356a7cf5a2215b083a04` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x9bed89582490fe0709023a048af3b16382e7a883` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x9d52c746b4c8e197ece72117d25b8f742fd23054` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xa2a22b46b8df38cd7c55e6bf32ea5a32637cf2b1` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xa50947922908fb0275f4cd6e53d97170869f6688` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xa52d1cea2d36c1e43b776a3392e21aff2ad74ba3` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xa58a4f5c4bb043d2cc1e170613b74e767c94189b` | non_address_book | unknown | unknown | unverified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| unverified unclassified | UnnamedContract<br>`0xa6121cb0e070be83aafd7353b1de082f765908b9` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xa759f960dd59a1ad32c995ecabe802a0c35f244f` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xa7e2ce557980618253d9dafdedb27ecce2f82167` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xad5bac300e311169f8223484f242d43c627eca30` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xad89eededf3f4996932c6949ab37d9398bfbb215` | non_address_book | unknown | unknown | unverified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| unverified unclassified | UnnamedContract<br>`0xae192568fadf3e2c0481901669ab5ab1bcd31a1f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xaf1d414569afcaa3ff57e0984d1a013c9a94adad` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xb5faf2fc869f3ae44f192cc0d28b471ecd4455cc` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xb61b5aca15193ecb719433d0e5c066f9980e1e83` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xbd515e41df155112cc883f8981cb763a286261be` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xbd6bcac46246a7cc2308e0ae87f7794f96e33aaf` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xbd79ad7e14f42b714590a3a8f045ab8084507a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xbeffa3ecbcd244c979285bc4466cbe5899f89918` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xc40f0615e8ac0bdf769b9310ce6c6f51f4934098` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xc55b373f3d14085057c053320fb34eb5b8d66637` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xc88ba3885995ce2714c14816a69a09880e1e518c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xc944eb24fd4993ad3b056fb8b166f3f40ee2f28b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xc9dcf34c93032e4799912dda196796a35c856576` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xccdbeb21b702b1b71c07b3d2b2c70460757ef7f6` | non_address_book | unknown | unknown | unverified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| unverified unclassified | UnnamedContract<br>`0xcf98862a8ec1271c9019d47715565a0bf3a761b8` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xcfedb6b85283fbbd0f5f30c5f75324a4b91819c5` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xd02b9458642d98eb874c2e6f68c50c2fd95fc983` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xd0e3f82ab04b983c05263cf3bf52481fbaa435b1` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xd31d776c18522ac0776283a0c54fca181f61d4f7` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xd36132e0c1141b26e62733e018f12eb38a7b7678` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xd46ba6d942050d489dbd938a2c909a5d5039a161` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xd530ff90a4943fa5ad4afe94cf9006fb081d2778` | non_address_book | unknown | unknown | unverified | n/a | `0xd8461bd73f19e3d789ac0e5dbf1ad62fbbd15c22` |
| unverified unclassified | UnnamedContract<br>`0xdbfc96df67f2044f3359cdc43b3b94b1a27a4b55` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xdcf3ca046171effdc7b3dc64345f5f4258c24565` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xde4fc7c3c5e7be3f16506fcc790a8d93f8ca0b40` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xe2d12f56293bc9fcd77378da7acee48bc0d7e9a2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xe3a0b70676ed6e1947140ff0b332cae7d7f0364b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xe586ebca6f13a510fff9a830450aa9f92b81629c` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xea31ca828f53a41ba2864fa194bb8a2d3f11c0c0` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xf41e7fc4ec990298d36f667b93951c9dba65224e` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xf5c081a4dc5c331844089457606559bbbe42ae9d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xf6da3889397f1f529d2be690386e67a4c1f006d8` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xfe44373abbaac76e1851865ea2c73f4ff06b1250` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xfedad08ba2219489f3090ff118ac9e8b040c8ad7` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x14e73381e5e29b00f91a1a6709d6f4509158f477` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x1d2771afc894107c4edc072e3bd15cb7f1bcc007` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x24232ccaf8bb87908c419ad7ddcca8cc9e74746d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x29d24f98662b6e527da30cffea3104e6ce11776d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x306e5f3ab0b5e972cd68f1c93c8729d6081cac6d` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x47fb203e1d75fb2c518cd56f3a8094d22a46af83` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x4960382ca3151df595b944731304f71df7edb35a` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x6b64f602690e8d6eb43792c5650ec9faf512aca5` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x79fbe448a81f130410cc3d66e89ae4a47598526e` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x82e415d7f43d2f56d431124c58221faa249ded42` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x84fe6fadc0ce36fb085cb2918c5a6a5a30f25476` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x93b673975dcf148329097705e1bd1b68c8d22d10` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x946fca8ab96cf5e3ee2476fa29736987d59f1c76` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x94f5a8fc43392eb417fc91c7a84c971f15465318` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x9f2fcdc43e3c07069e6b4f0adad8f1cfad9086db` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xa811d187bb3ea39563a078f9c14e1b144d5a7365` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xb5faf2fc869f3ae44f192cc0d28b471ecd4455cc` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xb8bcb0b06d5d920509adc02371f06e08c7653205` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xbcf39f0edda668c58371e519af37ca705f2bfcbd` | non_address_book | unknown | unknown | unverified | n/a | `0x20b2401084a2d7ff13bc07c09e6c2af8d4443404` |
| unverified unclassified | UnnamedContract<br>`0xc923994d56f6b574d9ff9c2a0b1156c59d542329` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xc9dcf34c93032e4799912dda196796a35c856576` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xce188bf49ee072847c95414518eb56c5eb6f0e3b` | non_address_book | unknown | unknown | unverified | n/a | `0x20b2401084a2d7ff13bc07c09e6c2af8d4443404` |
| unverified unclassified | UnnamedContract<br>`0xdacb066c8448407c994e5e2f7f2cf34348729ca2` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xdb021b1b247fe2f1fa57e0a87c748cc1e321f07f` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xdb8b1bd9a47443f7e97cccf985f0254b191a84ef` | non_address_book | unknown | unknown | unverified | n/a | `0x20b2401084a2d7ff13bc07c09e6c2af8d4443404` |
| unverified unclassified | UnnamedContract<br>`0xdf997d8fbad98b8b4cd71d220563a9fb2c4ccba8` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xe138c66982fd5c890c60b94fdba1747faf092c20` | non_address_book | unknown | unknown | unverified | n/a | `0x94fa058031633f1cf1d438d681d0b2167c2f3642` |
| unverified unclassified | UnnamedContract<br>`0xe9e7cea3dedca5984780bafc599bd69add087d56` | non_address_book | unknown | unknown | unverified | n/a | `0xf07c30e4cd6cfff525791b4b601bd345bded7f47` |
| unverified unclassified | UnnamedContract<br>`0xee5242e33dbcc177bb74047abbe7afa55fa9e3f4` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0xfac364a4a6d2bec8d1353ae7367a4ebfbdcc503b` | non_address_book | unknown | unknown | unverified | n/a | `0x5a617f363674489339226e8a448307763a43108f` |
| unverified unclassified | UnnamedContract<br>`0x362ef7dc240758d60ba6c51b120b24144ce00256` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa152db4a7f46cd561ed79ca004913b1236a6c8` |
| unverified unclassified | UnnamedContract<br>`0x3f5d4b34fbb394835457a271102e70e96f8d688e` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa152db4a7f46cd561ed79ca004913b1236a6c8` |
| unverified unclassified | UnnamedContract<br>`0x4c36f9dcd27b5ff3fb5b687941f1ac9101f0bf22` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa152db4a7f46cd561ed79ca004913b1236a6c8` |
| unverified unclassified | UnnamedContract<br>`0xb447acd21831f6615e208c9eea7e6049db3391cd` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa152db4a7f46cd561ed79ca004913b1236a6c8` |
| unverified unclassified | UnnamedContract<br>`0xeb06fa7e1d400caa3d369776da45ebb5ebdf9b5b` | non_address_book | unknown | unknown | unverified | n/a | `0x1fa152db4a7f46cd561ed79ca004913b1236a6c8` |
| unverified unclassified | UnnamedContract<br>`0x00ead383773aa379d0e8c162b96d164b1147b75d` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x05097e2ba96b8870949475115b9b91f75a0b308f` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x0c649ed10cfc1b1586f851099ed8080ff6991d59` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x123455360be78c9289b38bcb4dba427d9a6cd440` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x1abb8fde5e64be3419fcef80df335c68dd2956c7` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0x1af963a8bd09f13f412b967dceb987d64a11df05` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0x202ecc1efeb3fd40bb26ae64c1707485735227d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x27fbe3508c4c04fb2e979f1531d943640b9d8469` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x29e9fdf5933824ad21bc6dbb8bf156efa3735e32` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x310d0b9bbe19c54bf00e55a7804098476997b81f` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x3236c028ceca123ffd5da1cfe6e31071fb63082c` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x39e592999df2fd3b6f9261b0cfdec72992f5aefc` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x517828d2549cec09386f89a67e92825e26740240` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x524dc5743a1c74bdda624de54cd0949cd9353be0` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x5945241bbb68b4454bb67bd2b069e74c09ac3d51` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x59c14158be9146ababb4757e188a43d01f1ec01a` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x5efe36df7235e9bb49a52d147fdafae6298520a0` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x689b07e430274c4f20e47535194c8baecd1f82b0` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0x6b7b1c3500d5f39ad5f9b262910635a39865ddec` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x766e33b910cd6329a0cbd5f72e48ec162e38a25d` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x7752859cd646e4c3caa36bd1808e46c6c243f903` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x7a98ef773fe4e074c83652d14a530fbce1f49be8` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x83fc24eb56121fa2a05e0b5170e7310738425839` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x8db8283729b2cb38a43f8bebfd34971d81c79727` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0x8e789b5393f5b4614b75698075c08e6a89a9fb74` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x911f32fd5d347b4eeb61fdb80d9f1063be1e78e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x94bf67b24c98eb612054a407673e0c9e946ad466` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0x983d3460fc959ee933edcd766cfefc9cf9afc637` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0x9c3defbf878649e1b2b4eff49d14c4a91e26a35a` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xa53cc329ad9555c51f02f37b3cc93a2be4a166be` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xa67cd90381e4c96382ea42ee1f5d58aab85614ed` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0xb3a128242e23aa80c37d14db2d577727a1fd4608` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xb5d814c5e4d772883bf9c7bab80c718820e15989` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0xb60590313975f0d98821b6cab5ea2a6d9641d7b6` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0xbbe52b3df581b9e3127a23a514f96de2d9a78a26` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0xbd2949f67dcdc549c6ebe98696449fa79d988a9f` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xbd515e41df155112cc883f8981cb763a286261be` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xc9796b65555b18fe06a071b9f1ff26b76a4823ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xcc98ae7160aa8c0fbbbbcd754d93bfaa0eba3127` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xd19f596b202e17b35c091d1a7520a55b7f345edb` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xdb63afd747948a26e4979f0cdd6ad96fb9f3046f` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0xdb84a42f23f2fcc91531df06a48da5e3a970f1cf` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xec550d7ce45cd0cec9ee471c9b52a7d9cf92476c` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xedbd736c3614a5e9dacec92da0340f1381b954a1` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xee373e583e313b0bd9d7dc6dec694dc074212e86` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xf03d603635589eeafc499b4ef4d57dd301ee10fc` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xf41e7fc4ec990298d36f667b93951c9dba65224e` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xf50225a84382c74cbdea10b0c176f71fc3de0c4d` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0xf7184fb77152697daeace960f335369a858eff19` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0xf8c72b5432a5475d84699f6d6f0dedbbfc00f01e` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0xfb049b1376f36b784a9473fffe5f888c3f6b6efb` | non_address_book | unknown | unknown | unverified | n/a | `0x1476e2069503fc7a1c8969f920d786fccdfa5b78` |
| unverified unclassified | UnnamedContract<br>`0xfd8452e8ad9aded8e16d37e5c2e300be7884e217` | non_address_book | unknown | unknown | unverified | n/a | `0xbb245d5c1d504dd5295b12b90963fd26b06bc743` |
| unverified unclassified | UnnamedContract<br>`0x0b5b9806b1b202e22aa26cfd527fdcafef9edacf` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x1d377265de3c004a4cef27dc0ed8af8b42728e4e` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x1e24ec84f66cd26dad607d81796dbeb13cb22692` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x3385777a17c9ff2fed6173c1253aae26f9a8612a` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x3674d64aab971ab974b2035667a4b3d09b5ec2b3` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x3ca3fefa944753b43c751336a5df531bdd6598b6` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x4b4e05cb973635d1a894d2e95699cdf83510cc04` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x59a1b7b7469b968eb051f6c71512d2b61f27794d` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x607e02aff1dc334a651172afd97ffb83c74662a1` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x6b35140fcc6e502a7e1edac6e740513f41c4b5ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x6b638f0e2aa14241e5bd686e66455565fb20853c` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x7b37d0787a3424a0810e02b24743a45ebd5530b2` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x7ddc30e4948abf72391a678343dffa385da0d010` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x7e2d29e4ccd3e58c01c50ff057b039d99f54b01d` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x868892cccedbff0b028f3b3595205ea91b99376b` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x8de43aac40e09be38741de78a2eb459a4f22f585` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0x987bb5c0c25e5de95a9c1d20495f0f479ec7a8fc` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0xa93a5f77b2067b99932036ef5a1d0a5fdd2d036c` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0xa9b46866b17c546e49a0857a7c7d9d7feca9a5e4` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0xabd347f625194d8e56f8e8b5e8562f34b6df3469` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0xb94b5d77184f59716958e435cd105f2db50c734b` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |
| unverified unclassified | UnnamedContract<br>`0xce9572a9d273b176b2164c6dcb11276a6713c8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xf8b43ac8dbefff876af48e0d7247b7bb53d9725f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf](https://github.com/meterio/Passportv2Contracts/blob/main/audit/%5BHAECHI%20AUDIT%5D%20Meter%20Bridge%20Smart%20Contract%20Audit%20Report%20v1.2.pdf) | HAECHI AUDIT | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [[HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf](https://github.com/meterio/Passportv2Contracts/blob/main/audit/%5BHAECHI%20AUDIT%5D%20Meter%20Bridge%20Smart%20Contract%20Audit%20Report%20v1.1.pdf) | HAECHI AUDIT | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21325] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf — no match: Extracted 42 contract names from the Audit Scope section (pages 7-8). The report date is Oct 11, 2022 from the cover page.
- [21326] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf — no match: All contracts listed in the 'Audit Scope' section (pages 7-8) are included. ERC20MintablePauseableUpgradeable.sol is explicitly excluded. The audit date is from the cover page: 'Published on : Sep 28, 2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | BasicFeeHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | FeeHandlerWithOracle | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20Handler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20HandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721Handler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721HandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1155Handler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1155HandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | GenericHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | GenericHandlerUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | HandlerHelpers | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | HandlerHelpersUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IDepositExecute | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IERCHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IERCMintBurn | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IFeeHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IGenericHandler | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1967Proxy | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1967Upgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | AccessControlUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Address | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | PausableUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | StorageSlot | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | BridgeUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | CentrifugeAsset | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20MinterBurnerPauser | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC20Safe | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721MinterBurnerPauser | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC721Safe | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | ERC1155Safe | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Forwarder | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | Signatures | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf | SignaturesUpgradeable | unmatched — not counted | — | listed in scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | BasicFeeHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | FeeHandlerWithOracle | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20Handler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20HandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721Handler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721HandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1155Handler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1155HandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | GenericHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | GenericHandlerUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | HandlerHelpers | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | HandlerHelpersUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IBridge | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IDepositExecute | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IERCHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IERCMintBurn | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IFeeHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IGenericHandler | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | IWETH | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1967Proxy | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1967Upgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Proxy | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | AccessControl | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | AccessControlUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Address | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Pausable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | PausableUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | SafeCast | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | SafeMath | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | StorageSlot | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Bridge | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | BridgeUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | CentrifugeAsset | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20MinterBurnerPauser | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC20Safe | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721MinterBurnerPauser | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC721Safe | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | ERC1155Safe | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Forwarder | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Migrations | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | Signatures | unmatched — not counted | — | listed in Audit Scope | no |
| [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf | SignaturesUpgradeable | unmatched — not counted | — | listed in Audit Scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xbd2949f67dcdc549c6ebe98696449fa79d988a9f` | MeterGovERC20V1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29e9fdf5933824ad21bc6dbb8bf156efa3735e32` | MeterGovProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 202 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 86 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [21325] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf
- [21326] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
