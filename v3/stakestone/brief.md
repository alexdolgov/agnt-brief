# Agentic Audit Brief: StakeStone

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 6 audit(s)
- Eligible audit results: 27 (6 matched; 21 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: StakeStone (`stakestone`)
- Website: [https://stakestone.io](https://stakestone.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, bsc, ethereum, linea, mantle, merlin, scroll
- Contract surface: 206 unique implementations (276 raw deployments)
- Coverage basis: 4/13 confirmed own live verified implementations (30.8%); conservative 30.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $17,184,100.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for StakeStone. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across base, berachain, bsc, ethereum, linea, mantle, merlin, scroll. Structural roles: 15 core, 5 supporting, 3 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: core (15), supporting (5), unclassified (3)
- Contract kinds: contract (23)
- Detected standards: erc165 (15), accesscontrol (10), erc20 (9), ownable (8)
- Frameworks: openzeppelin (19), layerzero (5), uniswap-v3 (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2fde62942759d7c0aaf25952da4098423bc1264c`, chain 5000)
- UnnamedContract (`0xe630abc6a480ac27270fa9ce615bfa5917e85525`, chain 534352)
- Proposal (`0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b`, chain 1)
- Stone (`0x7122985656e38bdc0302db86685bb972b145bd3c`, chain 1)
- StoneBTC (`0x094c0e36210634c3cfa25dc11b96b562e0b07624`, chain 1)
- StoneBTC (`0x15469528c11e8ace863f3f9e5a8329216e33dd7d`, chain 56)
- StoneBTCLayerZeroAdapter (`0x3f690f43a9fca689829a22bf925c89b7a48ca57f`, chain 1)
- StoneBTCLayerZeroAdapter (`0x7122985656e38bdc0302db86685bb972b145bd3c`, chain 56)
- StoneBTCLayerZeroAdapter (`0x4f9f1333cffa3e0dca98736e260442a86d918501`, chain 534352)
- StoneBTCVault (`0x7dbac0aa440a25d7fb43951f7b178ff7a809108d`, chain 1)
- StoneBTCVault (`0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b`, chain 56)
- StoneCross (`0x80137510979822322193fc997d400d5a6c747bf7`, chain 56)
- StoneCross (`0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6`, chain 8453)
- StoneCross (`0x93f4d0ab6a8b4271f4a28db399b5e30612d21116`, chain 59144)
- StoneVault (`0xa62f9c5af106feee069f38de51098d9d81b90572`, chain 1)
- StrategyController (`0x396abf9ff46e21694f4ef01ca77c6d7893a017b2`, chain 1)
- Token (`0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b`, chain 56)
- Token (`0xec901da9c68e90798bbbb74c11406a32a70652c3`, chain 80094)
- UnnamedContract (`0xb5d8b1e73c79483d7750c5b8df8db45a0d24e2cf`, chain 4200)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (18 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/13 (30.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 177 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 21 of 206 unique; 185 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/81
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 125
- Unique implementations: 206
- Raw deployments: 276
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 30.8% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 4 | 4.9% | 2025-04 |
| Secure3 | Tier 2 | 1 | 1.2% | 2025-10 |
| Veridise | Tier 2 | 1 | 1.2% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Stone | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257025 | `0x7122985656e38bdc0302db86685bb972b145bd3c` | ✅ Audited |
| StoneBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-257037 | `0x15469528c11e8ace863f3f9e5a8329216e33dd7d` | ✅ Audited |
| StoneBTCVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-257038 | `0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b` | ✅ Audited |
| Token | token | project_anchor | own_supporting | 0 | berachain | unit-257043 | `0xec901da9c68e90798bbbb74c11406a32a70652c3` | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x728da61583441bb4326481ae27edeaaaa2d75c19`; bsc `0x8449e6886bf865d522e10cc420f92b980c6b223d` | ⚠️ Unaudited |
| AssetRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xb823359367978a28eae71e90f79d95b62348bd80`; ethereum `0xcd4d5571c61108f61787f388425fcf844255a928`; ethereum `0xfc38d40277f76a49cf5b512a7361eb1dde36972f` | ⚠️ Unaudited |
| AssetsRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219e157c79f5b188397f6ccdb6d0f97600eadfb6` | ⚠️ Unaudited |
| AssetsVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257030 | `0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9` | ⚠️ Unaudited |
| AssetVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257018 | `0x1fc603779dc6b4866769a58067777d2c52628226` | ⚠️ Unaudited |
| AsyncDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed15e5dd75a266110a69764ac6919ef9188656cb` | ⚠️ Unaudited |
| AsyncVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x693a0649c24318008cf1d4d5ee4ac070f92e58da` | ⚠️ Unaudited |
| BeraStoneRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664` | ⚠️ Unaudited |
| BevmDepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8`; ethereum `0xc785247dc5a51223aeae23668c24a1a79841a235` | ⚠️ Unaudited |
| DepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e`; ethereum `0xdaf1695c41327b61b9b9965ac6a5843a3198cf07`; ethereum `0xfb4cb3f473203fac25d292701e3274c298909a03` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1565db133d0108e911224f174ec12d20f1531a76`; ethereum `0x27ad26e1c4d164a5561d7fd0ec910900be716440`; ethereum `0xc40329d3ae56af6b0757c3fe53941ddcc3d92671`; ethereum `0xea96d98d9a947b68899365202a43890a4d38db19` | ⚠️ Unaudited |
| DepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357` | ⚠️ Unaudited |
| EigenLSTRestaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d004f22bdd5f9c85ad6d3f74f1fb6e7a256982` | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3f987372a1ae29f834deaea66d2e72137ba10fc7`; ethereum `0x89cebc8e0ea5fa5f2febcbf9f6977dadf1cee901`; ethereum `0x8b80cabe10eaf14bdfe9787d346fcde18317fed2`; ethereum `0x9a7ca5e9d6713e9844c073bfe288a8c87b080ed2`; ethereum `0xc337baf4c7bd22292011614cb7c86472a3901612`; ethereum `0xeac3f8b89f8aab1c6bf664b4b65830b8c9d34ce7` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d` | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512258182db0ad147cdc1a116191be823f8f198c` | ⚠️ Unaudited |
| GenesisExpedition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1f3994c851696fabc9742b53558334950b8b1bf4`; bsc `0x2a6dc77ae8c6112336826af3743a6a2ca6165c3c`; bsc `0x9f269f8f2c1e2b952ebe5b1447d860c96f8d69b4`; bsc `0xdcb29a10b3f40c01268489281f6b9b52eeaa5bbb`; bsc `0xe33da1193f1142c337bc7b2bcededd56a220f1db`; bsc `0xe9f29295376a84f3530332423f50453f52b7d2ea` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed` | ⚠️ Unaudited |
| LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a` | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1290a6b480f7ef14925229fdb66f5680ad8f44ad`; ethereum `0x37e92d760a15231e652a2c502182a6b44c7510c0`; ethereum `0x3a7647c1323144a16e7d0d71a581e3fe5bd95299`; ethereum `0x6bc15d7930839ec18a57f6f7df72ae1b439d077f`; ethereum `0xa7c4d94f98b6e94c139c4645e4e9a94cd7c0abf7`; ethereum `0xacb11bc20b1945e59976e3307d2a805faa126c31` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb` | ⚠️ Unaudited |
| LombardTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055e84e7fe8955e2781010b866f10ef6e1e77e59` | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x61003ba35d6f57e0b61442bc88c2c7a45bf56095`; ethereum `0x88e18636effc3b3cd520fc72b710eb99c0017bc7`; ethereum `0xba59cf1c1563a9b93a8c5d70f8e445eaca9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052359563d104867a42c48cb7e688b1af22f0080` | ⚠️ Unaudited |
| MellowDepositWstETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574` | ⚠️ Unaudited |
| MiningPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257029 | `0x8f5420e76eec29027800d4e3e8e879617bde709b` | ⚠️ Unaudited |
| MiningPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9f37f06d75274c610fb5e428f38273afc1cd0d` | ⚠️ Unaudited |
| Minter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257032 | `0xec306e46549a7e8f4fce823d3058f2d134133b17` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b89d757668a830f17d693a88d46073501df635d`; ethereum `0x6be197c89104335dcb026b28eb3ae08ab83af7b3` | ⚠️ Unaudited |
| NativeLendingETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d70868f12a05b8c347974415bac5de053daa376` | ⚠️ Unaudited |
| NoDelayTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x00e72315f630b11034fd081793fca1279b6a3d82`; ethereum `0xa6b4bfa0da2a857e074eb9f108e14012c2c71c7c` | ⚠️ Unaudited |
| OneDayDelayTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eddcfe6b829621487a00e3b3d211ef80986de9a` | ⚠️ Unaudited |
| OracleConfigurator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257024 | `0x6cd42e64630d25406bfc51cca65cffa7cd495fb1` | ⚠️ Unaudited |
| OracleConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8636dd05027ec8ba84fa8c982951bbb61dcfef6c` | ⚠️ Unaudited |
| OracleRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196` | ⚠️ Unaudited |
| ParamRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fa8e2673ee9de09c31cad191d8974ac1f125e23` | ⚠️ Unaudited |
| Proposal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257021 | `0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b` | ⚠️ Unaudited |
| ReferralRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1a24e31afa95e88ebdfda34a7cb18abcf992bd4e`; bsc `0xa3ac2f9d7345883512f503c4709ddbd434fab007`; bsc `0xa5224855c09603ead17345934de341e51a9f448d`; bsc `0xe38f0dbf50cee3b6997ea901f29012ced3049af6`; bsc `0xf00142149e5424259255a6b60ed2574bf4e5cba9`; bsc `0xfa10ce45e46bdaaf44ec5135337fc73ad7beda58` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x46319f1a5e7bd21b89897de87679a4662cf59fd0`; bsc `0x5502fdf6f101ece6e4c7c10ef060a947d8b3c1d9`; bsc `0x84c58b92725a6abbaf859e53f4bcd95c8cd1fc5f`; bsc `0xc2f513f7d87462c180e963df85822cfd411d35cb`; berachain `0xd4dfb080a8904a7e2b7dfcc524cb828584f97782`; berachain `0xf46a21bb51ae1ddeab580696106cd9924cffbbe5` | ⚠️ Unaudited |
| SBTCBeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x437c885357425686b53e0d18c8d9c26a4a6be43f`; ethereum `0x5502fdf6f101ece6e4c7c10ef060a947d8b3c1d9`; ethereum `0x5ae986aa3777850dbe42f5afda171691225bab2f`; ethereum `0xf401cc9f467c7046796d9a8b44b0c1348b4deec7` | ⚠️ Unaudited |
| StakeAndBake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9088d8a41744e9cca78d01e6185f2acb81be497a`; ethereum `0xa252131fbbc87d737b7d2c633ea6cdbdfe673675`; ethereum `0xb492ac46a8e7f0cabfa0fa4041a2f50f595df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bca0fb61480530e87dddbb3bb5f0539c97eae88` | ⚠️ Unaudited |
| StakedLBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21f352fc288b5e030867eed41f7402482b083b02`; ethereum `0x8c21abcba5d634412e9d0fa503c9fe056d760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c`; ethereum `0x6db63b7b2a6401efe60ee92efe9d7f1cb65c9cd6` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf` | ⚠️ Unaudited |
| STO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d`; ethereum `0x9ffc173a8b4f137f58dff176c3c85bb8de0af371` | ⚠️ Unaudited |
| StoneBeraVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0` | ⚠️ Unaudited |
| StoneBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257016 | `0x094c0e36210634c3cfa25dc11b96b562e0b07624` | ⚠️ Unaudited |
| StoneBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x6c344c6191fee58f0de2604721f596efbc9f7822`; ethereum `0xdc939bee0e1ccd198a5af5ac1f90ea0b8ee03cd0`; bsc `0x3421981450758e341f2b91397bb7b76a556cb20b`; bsc `0xa0a2917cb9fbf3159730cb502e83cc7b32202c7f`; bsc `0xd081be7f329e13c4097cfa3668f1e690cde9c08d` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257022 | `0x3f690f43a9fca689829a22bf925c89b7a48ca57f` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-257039 | `0x7122985656e38bdc0302db86685bb972b145bd3c` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | scroll | unit-257035 | `0x4f9f1333cffa3e0dca98736e260442a86d918501` | ⚠️ Unaudited |
| StoneBTCOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bcf92ad4aa45f6f5038afc4a15a02419fb9dc66` | ⚠️ Unaudited |
| StoneBTCVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257026 | `0x7dbac0aa440a25d7fb43951f7b178ff7a809108d` | ⚠️ Unaudited |
| StoneCarnival | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0` | ⚠️ Unaudited |
| StoneCarnivalETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42af9986e56c8c9a88368d69879a64de6715754b`; ethereum `0xb3fc739972795e0f2a8da00173ee9cf834b54541` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | bsc | unit-257040 | `0x80137510979822322193fc997d400d5a6c747bf7` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | base | unit-257044 | `0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | linea | unit-257042 | `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116` | ⚠️ Unaudited |
| StoneOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a265bd3007931079d2eaf5ed8bddadc7156a976` | ⚠️ Unaudited |
| StoneOFT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257027 | `0x8235139902590521ba96b9c26009d34080388d67` | ⚠️ Unaudited |
| StoneOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5` | ⚠️ Unaudited |
| STONEUSDStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x18eb3ebc2c24502afbe42afd29ccb7e0a8525fe6`; bsc `0x4dff4a102623db0bfdded919b948dc70f89426d2`; bsc `0x5cd3cc345cd6c8c3889c539c325e24e6fdfe632f`; bsc `0x8dd2aa28b0a4cf7d918713c4013befd903125968` | ⚠️ Unaudited |
| StoneVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257031 | `0xa62f9c5af106feee069f38de51098d9d81b90572` | ⚠️ Unaudited |
| StoryPreDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb1381900c742b509cf2b23d6b293649ea875654c`; ethereum `0xb310890b6ea10e97f903edcc8964aad125257ddb` | ⚠️ Unaudited |
| STOStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3a6dae1caf8df7f37dc2418e2ff336a5057e28c9`; bsc `0x627a17ec3baa4c8678b4670d57a8ccd1e8580b06`; bsc `0xaee11824eb86ddb04bf763720ee2b5b882fa225d`; bsc `0xc716b79d4d7e26ab23ae21e7f96e392792a52f21` | ⚠️ Unaudited |
| StrategyController | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257020 | `0x396abf9ff46e21694f4ef01ca77c6d7893a017b2` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f`; ethereum `0xb90a473313fecf94443d2765cc74aa746a26c686` | ⚠️ Unaudited |
| ThreeDaysDelayTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc29f7781a26dd3958d0caf26885c4820d031ae6` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257023 | `0x6a6e3a4396993a4ec98a6f4a654cc0819538721e` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | bsc | unit-257041 | `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 12 deployments: ethereum `0x0de028af168524f3557615d2f0ef9943e6731ee4`; ethereum `0x17091b36bd06bb7a60d2c36e30b68c7d5508d168`; ethereum `0x2ea78379520380d37b0708a0294664a3ab626b74`; ethereum `0x97ad75064b20fb2b2447fed4fa953bf7f007a706`; ethereum `0xb28ecfc8ae218bc2c16c1f2218a9cc799191b1a7`; ethereum `0xc620cb64c6c504f417da517048ae2dab7cca75fa`; ethereum `0xd7f311a29b54e13b0a6c97027ece4a41cbe9ea38`; ethereum `0xfd47eb1084ebdb3f1ae000cbd213420b398bda70`; bsc `0xdaf1695c41327b61b9b9965ac6a5843a3198cf07`; berachain `0x095957ceb9f317ac1328f0ab3123622401766d71`; berachain `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116`; berachain `0xd0ebd9f75fbd0bc8852b6fa454cec6e52ac07e10` | ⚠️ Unaudited |
| VeSTO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0abc56ed707a55825312e2fe2f5dc11876828c2` | ⚠️ Unaudited |
| WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628` | ⚠️ Unaudited |
| WithdrawController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081d9019b016d7879b3aa4b278728771bfdb0b29` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (125)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009a0d4f1d2b5724c1875782793786a2984136a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f790cd26f932561f1b036546991cbb2490743b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6c5d9078c6b5e3cd58a019183abb70d14b490a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8061e98b20f23f313bd8981f126932161b10d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fac524f8cc56f693ab84fd30b888e38439ce43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fee4de7d1246eef15f53fa5ce955f5c2afb1ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb7191a7489f6be6f5739da1114ccd907e0344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b4fdb671b4102ce1f2bc64f61ba7e16fe781c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257017 | `0x129e49c0399e3c932d34c3b76a598214b5b82cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15469528c11e8ace863f3f9e5a8329216e33dd7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba12d2f3f3a7bed7dc0938ef040d38d3cdea35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23d7c4506142ed23025a9a61d696d63da6b3d57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2744f13466a00b5073a408357936e4fb3e235fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x280cc0dc62e12938d6af47d67406197973c0457e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b1d947f995cdad9ee38aed2096c75fcbb47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d209b857c6d1361031a2874da59ad9df593b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257019 | `0x2d83f5bfc83cf0b09b8884101c015fa9c74c32f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f453dffecb8fb45248882bf9232b039132cd192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3035ad9b8adba657a20bc6c4aec13c29d6e06fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318cd27ae7d6b81f1be3cfaf6cd62bc75c8e7b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3421981450758e341f2b91397bb7b76a556cb20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363d200e54fe86985790f4e210df9bfb14234202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d98fb5cb6d3d05880db8a9c6c4d668684db5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dc916664dae3ae8eecce340a36af8de2af7986f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9f9cc333db3169a583d93ee64bb5971e260fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502f174ce17c273449d3191000cabe0a040da29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x561f09697bddf86941cbdaeeddac7be39991dc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fb2f90f0962379e3722c55bb1abb70d14e9b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595d2018292b8c89fc3dfb049ae95cf73f2c1546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60de74f84f020a0f4bf6515775bb5bf48e7e156b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6109b5ff17b244914ee59104a01aaf0e61cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612ab72ec3c3493840156d45cef3d44861638da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e53ee3bc60899987bb2159ecc7c04beb09d3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a2adbb67491eece4302444896ffb74ec9dde52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d23c3c68c6c8668f13892841e3c7d04e97e2b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7061bbc6fe070aa0492dd9fc65e92d17184e51ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7356c596e6e0167b251ee80fb7567c310dd594de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7519af366e629eaa9dbfb898ae72c34ec09e6151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7549383dce0bc1b5fbdb5b8f107df0720ea37f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78787f403e008461c45a7ece12c9ff2762a7eebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78cb7b1af1db06bec1035f2949dbe99adbee3947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ed45e12187f03bebecb94765cdb5af3362828b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf51c1a6f53fe990e47ccb9497b38c78036af9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cf9e2e7fe72455fbbb698c56db81c98c891d75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0dcb8574f6d3680945c250f6674418ce3c3f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f60e63e40e5065e5a48a77010169de269fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257028 | `0x8236a87084f8b84306f72007f36f2618a5634494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bd64913e71b0fa466bcc0a746cbc61bee4fd9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c9c3a4763fc57d7e3763e23b60f40fe9dc779e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856edf1b835ea02bf11b16f041df5a13ef1ec3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8613d529a8c243690aedd69e427216029e4ba3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88bcc9ae483d1baf65b2a45888e350c487958354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c17d2e1d968c5f71cc81c8b87f4c4e23cc16115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4998661618c5cc5dbcc0ae19923d6537622180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91063e115e49589dc058272bf5683eb881d00d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916f462d66154362b3546fefae6fda7104d8a3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9221fbe66be06f43dcbda3fc17cdd66ef1b236f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cabf2a0460661f70f044b8af2626cfacc44341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958e01198d746588d0fad38d86a41684bcf7dd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d45e2d3a24b37eef35ee00dd0bf325bc655ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e505923f2a7ed083bab013f500978dedfd7791b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0a2917cb9fbf3159730cb502e83cc7b32202c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11e34eeea62a157d44a0bf18a6e0c18f35f72bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23cb55e79c08af3d30557c8f29caf640eed334f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa56248248eba8f815621f9f4c686696a6b148cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa66723d951f15423ef2c9c11edcb821e38301836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb52b0a8f3131303ec4efbcdfd1b82cb3727d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0d7c9a60500b16f7929d766eda67eae52ec429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff83f1190024e2edbdfd3e0372359f772c52c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0824e760c44b995317b95490f97c10ab4d74131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb305101fd13b46d4e79bbd293526ca441af8d24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb347062b566621604963256be3ef958f8bbad586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f77e4071dd8aee400d08ca0905425430df233d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ea9f1d8ac2b9da5182b1e298f827e7309947cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d5d68a9d6debdf125073a391b2a12e8321e9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5895f5050c030c4bc4f76ba4d590d8c09d9450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe90e99931b65ff3055aec69b45ef21382b88e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc84ff8a2f781eb76febb8558699bba83acb38ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc697a694d3f9b25bb1851ecdc0c77c52199872a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f830bb162e6cfb7b4bac242b0e43cf1984c853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b62ef27d0ef314ebcfa46f657e232bc27db057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b644191993ca1e9ce94920f267ed7fb16e90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd081be7f329e13c4097cfa3668f1e690cde9c08d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a81dacde6b8b9760302a0b91953a1392a6c61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ebd9f75fbd0bc8852b6fa454cec6e52ac07e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4dfb080a8904a7e2b7dfcc524cb828584f97782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5bb230544b77e866d9769a7f1cb7da534c4574f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd682c2b9814fb096c843984da9810916cb2206e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd800602fa6d4713d90a261f16100add2105ae48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcd0c0703146d8debc55fda559c5fb5d3ed3608a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7e639dc4b1c3b53ca4b07c2a7f59b4064b2cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe578acc6943025150e5985409b314fe4ea81d9fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84a28afb0cece439a3fac11f19141d353e0ad68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe942cdd0af66ab9ab06515701fa3707ec7deb93e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94bf3290877d1ffb5aabbc643e4429655e007c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf100443eef300ad8c2fddb1457ee0e8ce9d9980b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1670996a123042fda40c14e13b52318d2f78e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c1c788817a9a9f56dbe81945f7a0d712eb5c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60b394638ecbc2020ac3e296e04fd955a3eb460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d904d2849e562c71ba055a859c70abe876199a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf97c478f34e1dba7e399b973f4b720ba5885290b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaac8b3fba2fcc01e4ddb5d5fc761578d0d05545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb153d3b08871f9e113e3e474eac0d944bf9164f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5ed981bbea652ab0c44bf3006fac48b0d69b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6577ad85a00055907b0c6f7b0c7ecc3fa60465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc32373813de01ddd3aa6df9fef30ae53097cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dc916664dae3ae8eecce340a36af8de2af7986f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6109b5ff17b244914ee59104a01aaf0e61cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f60e63e40e5065e5a48a77010169de269fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97ad75064b20fb2b2447fed4fa953bf7f007a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3e9043e5ffacea7bc4d37608fb6e1b277bc47c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6f830bb162e6cfb7b4bac242b0e43cf1984c853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb4cb3f473203fac25d292701e3274c298909a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-257033 | `0xb5d8b1e73c79483d7750c5b8df8db45a0d24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257034 | `0x2fde62942759d7c0aaf25952da4098423bc1264c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x80137510979822322193fc997d400d5a6c747bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97ad75064b20fb2b2447fed4fa953bf7f007a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa62f9c5af106feee069f38de51098d9d81b90572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaf1695c41327b61b9b9965ac6a5843a3198cf07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x80137510979822322193fc997d400d5a6c747bf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257036 | `0xe630abc6a480ac27270fa9ce615bfa5917e85525` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Stone Bera Vault - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Stone%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [STONE BTC - SlowMist Audit Report_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20-%20SlowMist%20Audit%20Report_en-us.pdf) | SlowMist | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [STONE BTC Vault - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Link:** <> (also discovered via alternate URL)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [**Link:** <>\ (also discovered via alternate URL)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi_en-us.pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [<>](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy_en-us.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [<>](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SBTC%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F4QRxWHR92kPuv1t3HJxn%2FStakeStone%20Tokenized%20Vault%20-%20Report.pdf) | Secure3 | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FrOtzZvGDMtPpY3slhFyh%2FStakeStone_Final_Report.pdf) | Secure3 | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 15 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F1jDHW15wSaMaAYlhsgJd%2FSlowMist%20Audit%20Report%20-%20StakeStone.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | address | matched | 3 | 0 | 0 | 10 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FCYIX4PcaObV8cl40ejdE%2FSlowMist%20Audit%20Report%20-%20EigenLSTRestaking.pdf) | SlowMist | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SlowMist Audit Report - StakeStone_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone_en-us.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | address | matched | 3 | 0 | 0 | 10 | high |
| [SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [StakeStone DAO - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/StakeStone%20DAO%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SlowMist Audit Report - StakeStone - Restaking_en-us.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FqBfJB4MR0ZwSpCdrto6b%2FSlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FSgVpK5T5WWpoj9mwS3bm%2FSlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi%20(3).pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FF43Hk4K2PyIWiakMaSlw%2FSlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FRBZCoEprwlIAe7kN2nhn%2FStakestoneEigenlayerHelper_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [StakeStone_final_Secure3_Audit_Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FVPMwYQsoShkgFtcw3SbM%2FStakeStone_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 26 | high |
| [VAR_StakeStone_231208-Final.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FBP2QLRtKlu74IXditjFj%2FVAR_StakeStone_231208-Final.pdf) | Veridise | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [STONE BTC Vault - SlowMist Audit Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F8Lx18BRXLLbxnX2zC78t%2FSTONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [StakeStone DAO - SlowMist Audit Report (4).pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F0Mb2Btl5gyYFsESugiux%2FStakeStone%20DAO%20-%20SlowMist%20Audit%20Report%20(4).pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18261] Stone Bera Vault - SlowMist Audit Report.pdf — matched: Contracts extracted from visibility description and findings sections. Audit date from audit result table (end date of range).
- [18262] STONE BTC - SlowMist Audit Report_en-us.pdf — no match: Contracts extracted from Code Overview section and vulnerability descriptions. Audit date from Audit Result table: 2024.08.30 - 2024.09.03, using end date.
- [18263] STONE BTC Vault - SlowMist Audit Report.pdf — no match: Contracts extracted from code overview and vulnerability descriptions. Audit date from audit result table: 2024.10.09 - 2024.10.12, using end date.
- [18264] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [18266] **Link:** <> — no match: Scope explicitly listed in section 4.1 Contracts Description. Audit date from section 5 Audit Result: 2024.03.07 - 2024.03.11, using end date.
- [18267] **Link:** <>\ — no match: Audit scope explicitly states two staking strategies: NativeLendingETHStrategy and SymbioticDepositWstETHStrategy. Audit date is 2024.06.24.
- [18268] <> — no match: Only one contract in scope: SymbioticDepositWBETHStrategy. Audit date from executive summary and audit result table.
- [18269] <> — no match: Only one contract, SBTCBeraVault, is in scope. Audit date range is 2024.12.23 - 2024.12.24, using end date.
- [18273] Rendered PDF capture — no match: Extracted 21 contract names from the 'Scope Files Included' section. Audit date from changelog: '2025-10-14 - Final report'.
- [18274] Rendered PDF capture — matched: Scope defined as all contracts in contracts/* directory. Extracted contract names from file paths and findings. Audit date from changelog: 2024-07-25 final report.
- [18275] Rendered PDF capture — matched: Extracted contracts from scope listing and file paths. Audit date from audit result table: 2023.12.07 - 2023.12.18, using end date.
- [18276] Rendered PDF capture — no match: Only one contract, EigenLSTRestaking, is in scope. Audit date is the end date of the audit period (2024.05.06 - 2024.05.07).
- [18278] SlowMist Audit Report - StakeStone_en-us.pdf — matched: Extracted from audit report scope section listing file paths and addresses. Also included contracts from governance, interfaces, libraries, token directories as per scope.
- [18279] SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf — no match: Only one contract in scope: MellowDepositWstETHStrategy. Audit date is 2024.07.19 from executive summary.
- [18280] StakeStone DAO - SlowMist Audit Report.pdf — no match: Audit scope explicitly lists files: IVeSTO.sol, STO.sol, VeSTO.sol, Escrow.sol. Audit date range given as 2025.03.28 - 2025.04.01, using end date.
- [18282] SlowMist Audit Report - StakeStone - Restaking_en-us.pdf — no match: Scope explicitly listed in section 4.1 Contracts Description. Audit date from section 5 Audit Result: 2024.03.07 - 2024.03.11, using end date.
- [18283] SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf — no match: Two contracts explicitly in scope: NativeLendingETHStrategy and SymbioticDepositWstETHStrategy. Audit date from executive summary.
- [18284] SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf — no match: Only one contract in scope: SymbioticDepositWBETHStrategy. Audit date is 2024.07.08.
- [18285] StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf — no match: Extracted 5 contracts from the scope table on page 5. Audit date found on cover page: 'Mar 18th, 2024'.
- [18287] StakeStone_final_Secure3_Audit_Report.pdf — matched: All contracts listed in the Audit Scope section with file paths and SHA256 hashes were extracted. The audit date is from the cover page: 'Aug 14th, 2023'.
- [18288] VAR_StakeStone_231208-Final.pdf — matched: Scope defined in Section 3.2: contracts folder, excluding strategies/*, mock/*, and mining/* except DepositBridge.sol. All contracts in scope are listed.
- [18289] STONE BTC Vault - SlowMist Audit Report.pdf — no match: Contracts extracted from code overview and vulnerability descriptions. Audit date from audit result table: 2024.10.09 - 2024.10.12, using end date.
- [18290] StakeStone DAO - SlowMist Audit Report (4).pdf — no match: Scope explicitly lists files: IVeSTO.sol, STO.sol, VeSTO.sol, Escrow.sol. Audit date range given as 2025.03.28 - 2025.04.01, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Stone Bera Vault - SlowMist Audit Report.pdf | StoneBeraVault | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | Token | own contract | Token (selected) `0xec901da9c68e90798bbbb74c11406a32a70652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-24 was 43d from audit; next candidate 362d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Stone Bera Vault - SlowMist Audit Report.pdf | DepositWrapper | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | OracleConfigurator | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | StoneOracle | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | WETHOracle | unmatched — not counted | — | listed in scope and findings | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | StoneBTC | ambiguous — not counted | StoneBTC (alternative) `0x094c0e36210634c3cfa25dc11b96b562e0b07624` — deployed 2024-09-24 16:28:11+03 — liveness: live (code_present_context)<br>StoneBTC (alternative) `0x15469528c11e8ace863f3f9e5a8329216e33dd7d` — deployed 2024-09-24 16:20:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | StoneBTCLayerZeroAdapter | ambiguous — not counted | StoneBTCLayerZeroAdapter (alternative) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2024-09-24 16:20:09+03 — liveness: live (current_address_book_code)<br>StoneBTCLayerZeroAdapter (alternative) `0x4f9f1333cffa3e0dca98736e260442a86d918501` — deployed 2024-09-24 16:32:18+03 — liveness: live (current_address_book_code)<br>StoneBTCLayerZeroAdapter (alternative) `0x3f690f43a9fca689829a22bf925c89b7a48ca57f` — deployed 2024-09-24 16:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | StoneBTCVault | ambiguous — not counted | StoneBTCVault (alternative) `0x7dbac0aa440a25d7fb43951f7b178ff7a809108d` — deployed 2024-10-08 23:10:11+03 — liveness: live (current_address_book_code)<br>StoneBTCVault (alternative) `0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b` — deployed 2024-09-24 16:26:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | Proposal | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | AssetVault | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | OracleConfigurator | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Token | ambiguous — not counted | Token (alternative) `0xec901da9c68e90798bbbb74c11406a32a70652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | BTCPeggedOracle | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalProcessor | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalQueue | unmatched — not counted | — | listed in code overview | no |
| **Link:** <> | Account | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | EigenNativeRestakingStrategy | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | IBatchDeposit | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | IEigenPod | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | IEigenPodManager | unmatched — not counted | — | listed in scope | no |
| **Link:** <>\ | NativeLendingETHStrategy | unmatched — not counted | — | Listed in scope and audited contracts. | no |
| **Link:** <>\ | SymbioticDepositWstETHStrategy | unmatched — not counted | — | Listed in scope and audited contracts. | no |
| <> | SymbioticDepositWBETHStrategy | unmatched — not counted | — | listed in scope and visibility table | no |
| <> | SBTCBeraVault | unmatched — not counted | — | listed in scope and audited | no |
| Rendered PDF capture | AccessRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AssetsRouter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | DepositVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ParamRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Token | ambiguous — not counted | Token (alternative) `0xec901da9c68e90798bbbb74c11406a32a70652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Rendered PDF capture | WithdrawController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Constants | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IAccessRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IAssetsRouter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IDepositVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IOracleFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IOracleRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IParamRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IWithdrawController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Errors | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainlinkOracleFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | OracleFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | OracleRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | NoDelayTimelockController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | OneDayDelayTimelockController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ThreeDaysDelayTimelockController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StoneVault | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | AssetsVault | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Proposal | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | StrategyController | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Stone | own contract | Stone (selected) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | Minter | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | NativeLendingETHStrategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | SymbioticDepositWstETHStrategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | EigenLSTRestaking | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | SwappingAggregator | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Account | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | StrategyV2 | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | EigenStrategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | StoneOFT | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | L2Stone | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | AssetsVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StoneVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | DepositBridge | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | RETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SFraxETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | STETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Strategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StrategyController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SwappingAggregator | own contract | StoneBTC (selected) `0x15469528c11e8ace863f3f9e5a8329216e33dd7d` — deployed 2024-09-24 16:20:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | Minter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Stone | own contract | StoneBTCLayerZeroAdapter (alternative) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2024-09-24 16:20:09+03 — liveness: live (current_address_book_code)<br>Stone (selected) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-09-24 was 85d from audit; next candidate 281d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x80137510979822322193fc997d400d5a6c747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Rendered PDF capture | Proposal | own contract | StoneBTCVault (selected) `0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b` — deployed 2024-09-24 16:26:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | EigenLSTRestaking | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | AssetsVault | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | StoneVault | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | DepositBridge | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | RETHHoldingStrategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | SFraxETHHoldingStrategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | STETHHoldingStrategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | Strategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | StrategyController | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | SwappingAggregator | own contract | StoneBTC (selected) `0x15469528c11e8ace863f3f9e5a8329216e33dd7d` — deployed 2024-09-24 16:20:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - StakeStone_en-us.pdf | Minter | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | Stone | own contract | StoneBTCLayerZeroAdapter (alternative) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2024-09-24 16:20:09+03 — liveness: live (current_address_book_code)<br>Stone (selected) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-09-24 was 85d from audit; next candidate 281d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - StakeStone_en-us.pdf | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x80137510979822322193fc997d400d5a6c747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | Proposal | own contract | StoneBTCVault (selected) `0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b` — deployed 2024-09-24 16:26:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf | MellowDepositWstETHStrategy | unmatched — not counted | — | listed in scope and audit methodology | no |
| StakeStone DAO - SlowMist Audit Report.pdf | STO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report.pdf | VeSTO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report.pdf | IVeSTO | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | Account | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | EigenNativeRestakingStrategy | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | IBatchDeposit | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | IEigenPod | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | IEigenPodManager | unmatched — not counted | — | listed in scope | no |
| SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf | NativeLendingETHStrategy | unmatched — not counted | — | Listed in scope and described in report | no |
| SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf | SymbioticDepositWstETHStrategy | unmatched — not counted | — | Listed in scope and described in report | no |
| SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf | SymbioticDepositWBETHStrategy | unmatched — not counted | — | listed in scope and visibility table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | IBatchDeposit | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | IEigenPod | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | IEigenPodManager | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | Account | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | EigenNativeRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| StakeStone_final_Secure3_Audit_Report.pdf | StoneVault | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | StrategyController | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | SwappingAggregator | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | BalancerLPAuraStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | Proposal | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | STETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | SFraxETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | RETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | Stone | own contract | Stone (selected) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StakeStone_final_Secure3_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IStableSwap | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x80137510979822322193fc997d400d5a6c747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| StakeStone_final_Secure3_Audit_Report.pdf | ILidoWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | AssetsVault | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IBalancerVault | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | Minter | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | VaultMath | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | ISfrxETH | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IBooster | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IAuraRewardPool | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IRocketTokenRETH | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IFrxETHMinter | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | ILido | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IWETH9 | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IWstETH | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IComposableStablePool | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IRocketDepositPool | unmatched — not counted | — | listed in scope | no |
| VAR_StakeStone_231208-Final.pdf | StoneVault | unmatched — not counted | — | Listed in scope and mentioned throughout report | no |
| VAR_StakeStone_231208-Final.pdf | StrategyController | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | AssetsVault | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | Minter | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | Stone | own contract | Stone (selected) `0x7122985656e38bdc0302db86685bb972b145bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_StakeStone_231208-Final.pdf | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x80137510979822322193fc997d400d5a6c747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| VAR_StakeStone_231208-Final.pdf | Proposal | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | BalancerLPAuraStrategy | unmatched — not counted | — | Mentioned in finding V-STN-VUL-005 | no |
| VAR_StakeStone_231208-Final.pdf | RETHBalancerAuraStrategy | unmatched — not counted | — | Mentioned in finding V-STN-VUL-005 | no |
| VAR_StakeStone_231208-Final.pdf | DepositBridge | unmatched — not counted | — | Explicitly included in scope (excluded other mining files) | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | AssetVault | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | OracleConfigurator | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Token | ambiguous — not counted | Token (alternative) `0xec901da9c68e90798bbbb74c11406a32a70652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | BTCPeggedOracle | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalProcessor | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope and code overview | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | STO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | VeSTO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | IVeSTO | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x094c0e36210634c3cfa25dc11b96b562e0b07624` | StoneBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f690f43a9fca689829a22bf925c89b7a48ca57f` | StoneBTCLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7122985656e38bdc0302db86685bb972b145bd3c` | StoneBTCLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x4f9f1333cffa3e0dca98736e260442a86d918501` | StoneBTCLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7dbac0aa440a25d7fb43951f7b178ff7a809108d` | StoneBTCVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x80137510979822322193fc997d400d5a6c747bf7` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd2012fc1b913ce50732ebcaa7e601fe37ac728c6` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x93f4d0ab6a8b4271f4a28db399b5e30612d21116` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 80 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 125 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 139 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=22, low=1
- Match method counts: address=4, temporal_name=3, unique_name=3

Zero-match audit list:

- [18262] STONE BTC - SlowMist Audit Report_en-us.pdf
- [18263] STONE BTC Vault - SlowMist Audit Report.pdf
- [18264] index.html
- [18266] **Link:** <>
- [18267] **Link:** <>\
- [18268] <>
- [18269] <>
- [18273] Rendered PDF capture
- [18276] Rendered PDF capture
- [18279] SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf
- [18280] StakeStone DAO - SlowMist Audit Report.pdf
- [18282] SlowMist Audit Report - StakeStone - Restaking_en-us.pdf
- [18283] SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf
- [18284] SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf
- [18285] StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf
- [18289] STONE BTC Vault - SlowMist Audit Report.pdf
- [18290] StakeStone DAO - SlowMist Audit Report (4).pdf

Fork inheritance lineage and inherited audits are included when available.
