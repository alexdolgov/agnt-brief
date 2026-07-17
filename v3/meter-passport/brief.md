# Agentic Audit Brief: Meter Passport

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Meter Passport (`meter-passport`)
- Website: [https://passport.meter.io](https://passport.meter.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, moonbeam, moonriver, polygon
- Contract surface: 86 unique implementations (86 raw deployments)
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
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 84 discovered implementations shown in the inventory but excluded from coverage (6 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 2 of 86 unique; 84 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 86
- Raw deployments: 86
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
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0142ed98ecc63daec2a6cb90b73d6d405d6d9b83` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x17f084dff8a71e38521bcbd3da871753dc67aa81` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x0b9709fe3aa76068f07d054fd4417445d5c7da9a` | ⚠️ Unaudited |
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| needs_review | 0 |

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
