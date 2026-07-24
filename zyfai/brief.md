# Agentic Audit Brief: ZyFAI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: ZyFAI (`zyfai`)
- Website: [https://zyf.ai](https://zyf.ai)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, base-sepolia, ethereum, plasma, sepolia, sonic
- Contract surface: 156 unique implementations (445 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,315,888.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for ZyFAI in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 150 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 120
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/129
- Verified + Unaudited implementations: 129
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 156
- Raw deployments: 445
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (129)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1c1efa17081cde0c8ee816075369741d89fcd548`; ethereum `0x9979043e4dee08fb61903aefd05aa452ea448f67`; ethereum `0xc3f7e6b2fabe4cda955902e529257c31981543d2` | ⚠️ Unaudited |
| AddressProvider | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2b04347413918588b81782cc446524354a15ee72`; ethereum `0x409fb57c5512f303759a5febbc7f2f61f8d075c4`; ethereum `0xdabc8055e21a3d5c1e99d8048023f3c72d8e8c93`; ethereum `0xf7474812890039a744737a7347c3480a4f081828` | ⚠️ Unaudited |
| ALMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92afd6f2385a90e44da3a8b60fe36f6cbe1d8709` | ⚠️ Unaudited |
| ArbitrumReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x212871a1c235892f86cab30e937e18c94aed8474`; arbitrum `0x567214dc57a2385abc4a756f523ddf0275305cbc` | ⚠️ Unaudited |
| ArcadeLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31166390c90c233088a13f60ce08f20bfc8c09a` | ⚠️ Unaudited |
| ArcadeLoanTransferrer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71d5e0a44d602a6b879734b9e99b50fc54d2aee` | ⚠️ Unaudited |
| AssetListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ff744cf6078714bb9d3c4fe5ab37fa6d05dec4e`; ethereum `0xadf7ad4dd000ea75667a3cdf65f3d3b7f1e9f02e`; ethereum `0xea2a6e7b41505d62d404f927f991edc9e45883c2` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x0b925ed163218f6662a35e0f0371ac234f9e9371`; ethereum `0x4d5f47fa6a74757f35c14fd3a6ef8e3c9bc514e8`; ethereum `0x5c647ce0ae10658ec44fa4e11a51c96e94efd1dd`; ethereum `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4e65fe4dba92790696d040ac24aa414708f5c0ab` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x5d72a9d9a9510cd8cbdba12ac62593a58930a948` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x724dc807b04555b71ed48a6896b6f41593b8c637` | ⚠️ Unaudited |
| BNPLOptionBidValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327fe52e44a1fc68e8596df8769a4b5dc538550e` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f84268744a40febc48f8b812a1f188d80c3` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0be923b1716115d742e35fa359d415598c50510f`; ethereum `0x50cb5e9a07f5c8db997b236761622931364d634e`; ethereum `0x58ebb8db8b4fdf2dcbbb16e04c2f5b952963b514`; ethereum `0xaa390749cb758af4070e93478fc743c72c18989c` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0`; ethereum `0x4b5dee60531a72c1264319ec6a22678a4d0c8118` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1f71901daf98d70b4baf40de080321e5c2676856`; ethereum `0x285617313887d43256f852cae0ee4de4b68d45b0`; ethereum `0x5c58d4479a1e9b2d19ee052143fa73f0ee79a36e`; ethereum `0x95dedd64b551f05e9f59a101a519b024b6b116e7`; ethereum `0x995e394b8b2437ac8ce61ee0bc610d617962b214`; ethereum `0xe165155c34fe4cbfc55fc554437907bdb1af7e3e`; ethereum `0xe2c1f54aff6b38fd9df7a69f22cb5fd3ba09f030` | ⚠️ Unaudited |
| CometExtAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x055e53f50b84fd91c4be367220efd36c3d091e1f`; ethereum `0x16f3532e6af45a2c51b6c77b1267cef34a9cf3b3`; ethereum `0x4f4d5a808e2448cb12df7ac12efb12888fd9bdd5`; ethereum `0x53ceade15669ecde1e8f6d120b98e5aab2936587`; ethereum `0xa70a0227028ad005f4fc9376a82cd1462e3aaedc`; ethereum `0xd4ec911b8fd79139736950235a93d3ea9c3f68ed`; ethereum `0xe3458a0bdbd5a413d3731595c5eb7c4cd6a14dd1` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7`; ethereum `0x271a200023c9512d37149dfbb62bf0f62a8d4680`; ethereum `0x4a900f81deda753bbbab12453b3775d5f26df6f3`; ethereum `0x4cfce7795bf75dc3795369a953d9a9b8c2679ae4`; ethereum `0x698a949f3b4f7a5dde236106f25fa0eaca0fcef1`; ethereum `0x6c987dde50db1dcdd32cd4175778c2a291978e2a`; ethereum `0x89128fe4fc91038c13220e74991f9557f816c865`; ethereum `0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991`; ethereum `0xaeb318360f27748acb200ce616e389a6c9409a07` | ⚠️ Unaudited |
| CometFactoryWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1fa408992e74a42d1787e28b880c451452e8c958`; ethereum `0x435260300c6624032f232ba67c0fb7d02c6a1314`; ethereum `0x97d81fdb0da92e0db66ab7b0e7b5102f3e43ddcb`; ethereum `0xba8f83fffc7097cbcd89fe323d31753cfac33867`; ethereum `0xc4aafc9f0c52fdda0fed972c55b136bd07552ad0`; ethereum `0xdfb81f0ebfdfdd90143f5debd1cd016b677d1585` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec63b5883c3481134fd50d5daebc83ecd2e8779` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0e765f6224c21223aea2af16c1c46e38885a40` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3afdc9bca9213a35503b077a6072f3d0d5ab0840` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3d0bb1ccab520a66e607822fc55bc921738fafe3` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d409e56d886231adaf00c8775665ad0f9897b56` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x652b1844270e38ae27ccf53de94207aa1d50cd0a`; ethereum `0x7ca80ed6dd25c4d48c80970e646cd8da4c8820bf` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa17581a9e3356d9a858b789d68b4d866e593ae94` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc3d688b66703497daa19211eedff47f25384cdc3` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe85dc543813b8c2cfeaac371517b925a166a9293` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb125e6687d4313864e53df431d5425969c15eb2f` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316f9708bb98af7da9c68c1c3b5e79039cd336e3`; ethereum `0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x72e9b6f907365d76c6192ad49c0c5ba356b7fa48`; ethereum `0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab` | ⚠️ Unaudited |
| DebtController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xfbc94e5fc406509c9a6d0635c047e1cd601246d1`; ethereum `0xfe7b8f5722ac881242e16bebc8ea0b28c3ee60c2` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf7b5127b510e568fdc39e6bb54e2081bfad489af` | ⚠️ Unaudited |
| DSRAuthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x15acee5f73b36762ab1a6b7c98787b8148447898`; base `0x2dd2a2fe346b5704380efbf6bd522042ec3e8fae`; base `0x779053e25267b591dcfbb20b2397462aaad6b776`; arbitrum `0xe206aebca7b28e3e8d6787df00b010d4a77c32f3`; arbitrum `0xec0c14ea7ff20f104496d960fdebf5a0a0cc14d0`; arbitrum `0xed56689ee0d21a1da68102e5ecbde3fd1d606709` | ⚠️ Unaudited |
| DSROracleReceiverArbitrum | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17`; arbitrum `0x3a60e678ea258a30c7cab2b70439a37fd6495fe1`; arbitrum `0xca61540ec2ac74e6954fa558b4af836d95ecb91b` | ⚠️ Unaudited |
| DSROracleReceiverOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x33a3ab524a43e69f30bfd9ae97d1ec679ff00b64`; base `0xadeaf02ddb5bed574045050b8096307be66e0676`; base `0xee2816c1e1eed14d444552654ed3027abc033a36` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d850f76c671aa2e1c1892a0644c115eb254d165` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8e0edfd6d15f858adbb41677b82ab64797d5afc0` | ⚠️ Unaudited |
| ERC20WasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed` | ⚠️ Unaudited |
| ERC721CreatorImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0cc3471d024250c7661003063aa5cc3d2c142467` | ⚠️ Unaudited |
| ETHWasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046299143a880c4d01a318bc6c9f2c0a5c1ed355` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3b4802fdb0e5d74aa37d58fd77d63e93d4f9a4af`; plasma `0xe818ad0d20d504c55601b9d5e0e137314414dec4`; arbitrum `0xe4783824593a50bfe9dc873204cec171ebc62de0` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd8b27cf359b7d15710a5be299af6e7bf904984c2` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 2 deployments: sonic `0x196f3c7443e940911ee2bb88e019fd71400349d9`; sonic `0x3d9e5462a940684073eed7e4a13d19ae0dcd13bc` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c`; ethereum `0x9f2781f9e3463b772cbecbc2a0e29bb7b1f3e1ac` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65d946e533748a998b1f0e430803e39a6388f7a1` | ⚠️ Unaudited |
| EzETHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde43600de5016b50752cc2615332d8ccbed6ec1b` | ⚠️ Unaudited |
| Flashloan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d` | ⚠️ Unaudited |
| ForeignController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x5f032555353f3a1d16aa6a4ade0b35b369da0440`; base `0xb94378b5347a3e199af3575719f67a708a5d8b9b`; base `0xbe67325938bf223a31da7ff91777fed784f8163c`; base `0xe09e6fa52bd3e8071fc6b5473f1bbeae67018591`; arbitrum `0x77e11453a99a7770b04f7921ffccd3ee9761ba6c`; arbitrum `0x98f567464e91e9b4831d3509024b7868f9f79ee1` | ⚠️ Unaudited |
| fToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x2411802d8bea09be0af8fd8d08314a63e706b29c`; ethereum `0x5c20b550819128074fd538edf79791733ccedd18`; ethereum `0x9fb7b4477576fe5b32be4c1843afb1e55f251b33`; base `0xf42f5795d9ac7e9d757db633d693cd548cfd9169`; plasma `0x1dd4b13fcae900c60a350589be8052959d2ed27b`; arbitrum `0x1a996cb54bb95462040408c06122d45d6cdb6096` | ⚠️ Unaudited |
| fTokenNativeUnderlying | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90551c1795392094fe6d29b758eccd233cfaa260` | ⚠️ Unaudited |
| LendingAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc399616937ebace9e45159a60cd77663c4a30e79` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397a8c2086c554b531c02e29f3291c9704b00c7` | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c776041ccfe903071af44aa147368a9c8eea518` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2371e134e3455e0593363cbf89d3b6cf53740618`; ethereum `0x4881ef0bf6d2365d3dd6499ccd7532bcdbce0658`; ethereum `0x4f460bb11cf958606c69a963b4a17f9daeeea8b6`; ethereum `0xbeef01735c132ada46aa9aa4c54623caa92a64cb`; ethereum `0xbeef050ecd6a16c4e7bffbb52ebba7846c4b8cd4`; ethereum `0xbeefff209270748ddd194831b3fa287a5386f5bc`; base `0xb7890cee6cf4792cdcc13489d36d9d42726ab863` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1`; ethereum `0x1e2aaadcf528b9cc08f43d4fd7db488ce89f5741`; ethereum `0x2ed10624315b74a78f11fabedaa1a228c198aefb`; ethereum `0x31a5684983eee865d943a696aac155363ba024f9`; ethereum `0x6c26793c7f1e2785c09b460676e797b716f0bc8e`; ethereum `0x7204b7dbf9412567835633b6f00c3edc3a8d6330`; ethereum `0xa8875aaebc4f830524e35d57f9772ffacbdd6c45`; ethereum `0xb0f05e4de970a1aaf77f8c2f823953a367504ba9`; ethereum `0xc582f04d8a82795aa2ff9c8bb4c1c889fe7b754e`; ethereum `0xc88effd6e74d55c78290892809955463468e982a`; arbitrum `0x7c574174da4b2be3f705c6244b4bfa0815a8b3ed` | ⚠️ Unaudited |
| METHExchangeRatePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5bd3e64f6702f55e744e70e27281a7caabf7de46`; ethereum `0x66228d797eb83ecf3465297751f6b1d4d42b7627`; ethereum `0x7e86318cc4bc539043f204b39ce0ebed9f0050dc` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x023ee795361b28cdbb94e302983578486a0a5f1b`; ethereum `0x2f7439252da796ab9a93f7e478e70ded43db5b89`; ethereum `0x7783a5c7656d75ed1144379c25142b7e43da5f5e`; ethereum `0xa742a89a2aabae46aad71393a187ca5d77846cc4`; ethereum `0xc3a73a70d1577cd5b02da0ba91c0afc8fa434daf`; ethereum `0xd187f938348aa245e2104be8d849ea6d8d23f434`; ethereum `0xd98be00b5d27fc98112bde293e487f8d4ca57d07` | ⚠️ Unaudited |
| NFTfiLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f4f727930c2c73238584f9f195e32e86e32d1b2` | ⚠️ Unaudited |
| OptimismReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x212871a1c235892f86cab30e937e18c94aed8474` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc902f6840699abf5b8d6a787a7943d4783566af2` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcac10196ae000184107916898f10a9045c934d33` | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xc4a9d8b486f388cc0e4168d2904277e8c8372fa3` | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x004f76045b42ef3e89814b12b37e69da19c8a212`; sonic `0x3f5ea53d1160177445b1898afbb16da111182418`; sonic `0x84ecc6be573f15991736131f924f7bf571ed3b60` | ⚠️ Unaudited |
| PendlePrincipalToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x0fb682c9692addcc1769f4d4d938c54420d54fa3`; sonic `0x930441aa7ab17654df5663781ca0c02cc17e6643`; sonic `0x9731842ed581816913933c01de142c7ee412a8c8` | ⚠️ Unaudited |
| PendleSiloV2SY_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3` | ⚠️ Unaudited |
| PendleYieldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x18d2d54f42ba720851bae861b98a0f4b079e6027`; sonic `0x3ab07241db5e87e45edca012ddf4bde84c078920` | ⚠️ Unaudited |
| PerpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x2eb99d429bebbbc5910bbad5f34d909a5f55910b`; ethereum `0x3461ae4336a55952d7ce451a9dec3a0d3856eee2`; ethereum `0x7973cb885af3bb67f38b4b2b90caef8043a96952`; ethereum `0x7c478395c652110847edb76aa4ddafa4fb7c740a`; ethereum `0xba5c5828f2fb77237b940187ec785ee4498d2683`; ethereum `0xba8724f19bd01956dc4343084048127e0bd69375`; ethereum `0xff9f87ec3592984cb706d3071a39e33ac24d39dc` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d` | ⚠️ Unaudited |
| PoolAskVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac` | ⚠️ Unaudited |
| PoolBidVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66873693e8b125dbea46274173b0d6dcd1933cca` | ⚠️ Unaudited |
| PriceFeedWith4626Support | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x31b844dbc7cdbaa27d22fd6d54986836d023bf3f`; ethereum `0x403f2083b6e220147f8a8832f0b284b4ed5777d1`; ethereum `0x4f90c34def3516ca5bd0a8276e01516fb09fb2ab`; ethereum `0xe3a409ed15cd53afdefdd191ad945cec528a2496` | ⚠️ Unaudited |
| PSM3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b05f8e1cacc6974fd79a673a341fe1f58d27266` | ⚠️ Unaudited |
| RateBasedScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1ad4ceba9f8135a557bbe317db62aa125c330f26`; ethereum `0xdd18688bb75af704f3fb1183e459c4d4d41132d9`; ethereum `0xe802a0b833f6080feb46dd54c75444c5dba0c873` | ⚠️ Unaudited |
| RateLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838` | ⚠️ Unaudited |
| RegistryProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x444868b6e8079ac2c55eea115250f92c2b2c4d14` | ⚠️ Unaudited |
| ReverseMultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1933f7e5f8b0423fbab28ce9c8c39c2cc414027b`; ethereum `0x39b44c5d7469f50e9500a2de36d9e3dbb6f9278e`; ethereum `0x57a71a9c632b2e6d8b0eb9a157888a3fc87400d1`; ethereum `0x5ecf850c770f78dc7b9f9760672484b2ccaea818`; ethereum `0x99a0991433d70a1c70365315278c64b95b196490`; ethereum `0xc49399814452b41da8a7cd76a159f5515cb3e493`; ethereum `0xc7986b6318c3f3ab5be12baf22892961158d3c24` | ⚠️ Unaudited |
| RsETHScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c30b5a5a04656565686f800481580ac4e7ed178`; ethereum `0xfa454de61b317b6535a0c462267208e8fdb89f45` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x0a4f4f9e84fc4f674f0d209f94d41fafe5af887d`; ethereum `0x23a982b74a3236a5f2297856d4391b2edbbb5549`; ethereum `0x2c7118c4c88b9841fcf839074c26ae8f035f2921`; ethereum `0x2d09142eae60fd8bd454a276e95aebdffd05722d`; ethereum `0x351a133fd850ea81ed8a782016e308acbaddec91`; ethereum `0x5404872d8f2e24b230ec9b9ec64e3855f637fb93`; ethereum `0x66f5afdad14b30816b47b707240d1e8e3344d04d`; ethereum `0x7b03a016dbc36db8e05c480192fadcdb0a06bc37`; ethereum `0x87641f6bc5ad796ea2f30af2a79ab2cf30f74188`; ethereum `0x970ffd8e335b8fa4cd5c869c7cac3a90671d5dc3`; ethereum `0x9f2f60f38bbc275af8f88a21c0e2bfe751e97c1f`; ethereum `0x9f57e4a1dfb69d6221aa15d115895dacc1b00230`; ethereum `0xaa9527bf3183a96fe6e55831c96de5cd988d3484`; ethereum `0xcb3643cc8294b23171272845473dec49739d4ba3` | ⚠️ Unaudited |
| Signing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bb8475c30fd70675f6250fb725e30b3a6e6094` | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf6bc16b79c469b94cdd25f3e2334dd4fee47a581` | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf6f87073cf8929c206a77b0694619dc776f89885` | ⚠️ Unaudited |
| SiloVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x592d1e187729c76efacc6dffb9355bd7bf47b2a7`; sonic `0xcca902f2d3d265151f123d8ce8fdac38ba9745ed` | ⚠️ Unaudited |
| SmartAccountWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd580071c47d4a667858b5fafab85bc9c609bec5d` | ⚠️ Unaudited |
| SparkArbitrumOne_20250320 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5` | ⚠️ Unaudited |
| SparkVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x15f4a4b19baaa168ac0b6092d310ae9725741211`; ethereum `0xc2c0582d1cce30449cf561c7b9c4d6d527547f12`; ethereum `0xe742c84510a200b95979645b46c872073f0fa929` | ⚠️ Unaudited |
| SparkVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x28b3a8fb53b741a8fd78c0fb9a6b2393d896a43d`; ethereum `0xe2e7a17dff93280dec073c995595155283e3c372`; ethereum `0xfe6eb3b609a7c8352a241f7f3a21cea4e9209b8f` | ⚠️ Unaudited |
| SSRAuthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x65d946e533748a998b1f0e430803e39a6388f7a1`; arbitrum `0xee2816c1e1eed14d444552654ed3027abc033a36` | ⚠️ Unaudited |
| Streamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86b6b0cc4d7178e118db3179a2d2191959ea752` | ⚠️ Unaudited |
| TellerLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xca954b354dfb73a740f370f71cc8918f1c0982e1`; ethereum `0xee83e50791a35364db279d097c884e1eaee8624a`; ethereum `0xeebbc046508478546cc9a8ca7327f5fa7ba24dc9` | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x19fdac68854702b70a8916eef19dce5c8349e250`; ethereum `0x92e56129a5d357a22775ff06bae5716d55f56626`; ethereum `0xacc3cb96532f9d87383bb20297c24798a80be6b9`; ethereum `0xda402f7529ff2ee4a845508d2f5406baeac9683f`; ethereum `0xe0a7090c3f9a36375ac26a8f80ede77a8fe14fe0` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd9ba99d93ea94a65b5bc838a0106ca3abc82ec4f` | ⚠️ Unaudited |
| UsdcVaultL2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3128a0f7f0ea68e7b7c9b00afa7e41045828e858`; base `0x6acc02ddd82206a44ff4ec13977e63d1a29c7723` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4cb851d28ae5c24f839e45e4f07e3888641fbe90`; base `0xb979b79adc4e5cf5cd43599a8d66c45460870bb4` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x62da45546a0f87b23941ffe5ca22f9d2a8fa7df3`; base `0xe13942e7cef74ab51d9b87c244357494dc0fda0a` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x940098b108fb7d0a7e374f6eded7760787464609`; arbitrum `0xdc8df20be448e41fde88e2478d6bc4d3c9a092d6` | ⚠️ Unaudited |
| VaultBoostManager | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c`; ethereum `0x0424c62eed9b4dab6e22ba42be2173c7557728b3`; ethereum `0xb33c8951d462ccf4aa7a37b70e0be5b8751e7524`; ethereum `0xcc174f151ea55fe2f745c3180ec780c9dbe36abb` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x382a45ab979b69f94346f3c004033ef7c9cbfbd0` | ⚠️ Unaudited |
| VaultDummyImplementation | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0d3707c569ff8c87fa923d3823ec5d81c98be78` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11`; ethereum `0x2bd3a43863c07b6a01581fada0e1614ca5df0e3d`; ethereum `0xa877d5bb0274dccba8556154a30e1ca4021a275f`; ethereum `0xbeef003e31546c7210687f1a7b40d096be83ec58`; ethereum `0xbeef0046fcab1de47e41fb75bb3dc4dfc94108e3`; ethereum `0xbeeff07d991c04cd640de9f15c08ba59c4fedeb7`; ethereum `0xbeeff2c5bf38f90e3482a8b19f12e5a6d2fca757`; ethereum `0xcdbe4a5b5bad2bc04492052df2f881b5727d034d`; ethereum `0xd1e9242e075db4bdd3f3c721d7d5fd4180a94a7e`; ethereum `0xd5cce260e7a755ddf0fb9cdf06443d593aaeaa13`; ethereum `0xebbae8cfabb0092d5b32f00ebee0c8139d24ddcd`; ethereum `0xfa17f7aadbfac2c5d3c8125555404c1ae17df853` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9` | ⚠️ Unaudited |
| WasabiBNPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d` | ⚠️ Unaudited |
| WasabiBNPL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89` | ⚠️ Unaudited |
| WasabiConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e31ef400c74630ab50066dd64c29c1f4fc57209`; ethereum `0xf29a66e420c240ebd23f775b93619c8f3cfff856` | ⚠️ Unaudited |
| WasabiFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0301079dabdc9a2c70b856b2c51aca02bac10c3a` | ⚠️ Unaudited |
| WasabiFeeManager2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08c2d6dbeb704efb7a68bd2bb29dfa954625e34` | ⚠️ Unaudited |
| WasabiLongPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 20 deployments: ethereum `0x000728488ae4e80b2ed7c3a06462bdeab5fbf1cf`; ethereum `0x023afc8b575ef583ef5596d3834d82b7116a6078`; ethereum `0x095c34c8f852ae99e6424ff4258447768a5599d3`; ethereum `0x17d1634ce3b55843253f954c930683e1ecdb5c3d`; ethereum `0x3a277440bb850d41fa1e50112873abb799e4fd97`; ethereum `0x45a9333102723f606b890579b2d0f8f475aac7cd`; ethereum `0x7041ce0ece257f80fdd3a605eb3438a7257f3e95`; ethereum `0x7f545161fa2cbbb1c9e0d182f2d0c2772ce6cbc8`; ethereum `0x8d9040c66d4453aa66366cd0dbeb610ce7b41b59`; ethereum `0x8e19c040b4c1c8d2a63e6cb375f01ab65d2ddc04`; ethereum `0x94cf96f6c3e683b0a5b668e599d6a6a45fb10c51`; ethereum `0x97eea33f40796861120208c884b5ae6e01ab40f7`; ethereum `0x995c0ab3dd4f0b1080393c62573b7a6bfcb8518b`; ethereum `0xa5a6457dd024bf2e5edf8dbd54dfbca24cac7b96`; ethereum `0xab164476377cf5a58e0b4f34a4ef79029d5df9cb`; ethereum `0xc24f58b36f90c5abc2874d028bfe12f3db656b51`; ethereum `0xcda7ce4b56f719d0f254ea6abda6ba4df4c8c0ca`; ethereum `0xcf41e5b980b109753b11ad7d49bb67a0b6b075dd`; ethereum `0xd2439d7822dac8fcf308fe943361c3b55d165ffe`; ethereum `0xd4a321075cb4b4efdd6e677cb770887056ae430d` | ⚠️ Unaudited |
| WasabiOption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc68f2130e094c95b6c4f5494158cbeb172e18a0` | ⚠️ Unaudited |
| WasabiOptionArbitrageV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3` | ⚠️ Unaudited |
| WasabiPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2b50413a53f50e2a059142a9be060294961e40` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x08aad56f494d705eaee20185e02996d5be72ae33`; ethereum `0x0b38cbcc2a215c636d0c3890e64e2a21255f437e`; ethereum `0x1b362e8eccc7aa0e835e3041f5cc10ccece046b7`; ethereum `0x33d2ac6d717376b89382638dbcabea53b677ee9a`; ethereum `0x77abb6fecd1f781765ecc384b57ca5335863dbf4`; ethereum `0x96b10bcd6e770a6fd0bc8992d4b67c8500a63f23`; ethereum `0xe5312d877a5e325524efe7c198f6733c17a564f9` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xee5c45dcb0064f9b097edbc5d8adfce23baac03b` | ⚠️ Unaudited |
| WasabiShortPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x0b9f9e6904194174a53d9c500b84eac1b79ada57`; ethereum `0x1536f738d1dd76a90d3667dca58e85867ea3662b`; ethereum `0x1888f9d504adf9aa5a3e705a7e1d45c59bd46176`; ethereum `0x41247b47823c3a500f4a1f1c98bfa8a089f78fad`; ethereum `0x44ba624d8280a167829baf11a71309f81696559e`; ethereum `0x5bb9e070ed2ef50ca3a1c17a5fa1300b0d088c60`; ethereum `0x62d25402b8ce925c727ecb2dcd62d531749bf842`; ethereum `0x76e8f316cec20c36759c3d80ebaa4cb3b5279499`; ethereum `0x7748355debf8c9bfac8234e3f79f04ac0bbf8b32`; ethereum `0x8826d2ec9229249feda46f9b47fcf62ad73cbc96`; ethereum `0x8ea384f9316abbdae698f2bb6850d23f5fb13277`; ethereum `0x92361209071c76e031133def9092d4920a9312f2`; ethereum `0x96ce21931e8a6abb2977ef17541eee80fb137f78`; ethereum `0xbc07db13399f8b216fa628635d171f943869cbbe`; ethereum `0xc905defd3f049e6ad2b9b105016c9026ceb7dca5`; ethereum `0xcb8d3ca0946f6a50d83e4b15fdb94ebd17e8a2bb`; ethereum `0xcc2a29b8324686ef4b05f7d0aabf919ea4e26bee`; ethereum `0xd5a09a0827c3d91e8530deee3b73edae6b33ae95`; ethereum `0xea9a832c8c25d4447f0cb66bb9987e365bca647c`; ethereum `0xf22b8d73da017288b5f4e214ebc1ccd8d364aafa`; ethereum `0xfb71f098eef68504e3cf9a4dfa78d834d3490c4a`; ethereum `0xfc55a23a2fee805aaf8a8209f2e4e8670028006b` | ⚠️ Unaudited |
| WasabiShortPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0fdc7b5ce282763d5372a44b01db65e14830d8ff`; ethereum `0x61d0df7c0978d04071c6f1e94beba96e075ebe12` | ⚠️ Unaudited |
| WasabiStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2885e85a59782197024306483cceae7b99dcd3` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0db381cfcafee909e66e5244ec5d7d933a747e12`; ethereum `0x3f631b8b318c66858fa1e68f02fccf976c5caa8d`; ethereum `0x65aa8f218ab3fa104af12e786a41b0416459991e`; ethereum `0x7d8c76eaf1858ce5678fc4926f4d8875e967ac53`; ethereum `0x7f1cec2328170e510f2d0375ce1ba7ac45d1681a`; ethereum `0x9720f76eae9b0d864a2a9e247bd82eef6ca84fa4`; ethereum `0xa6354ec7e4a63f0e75ca3e624eff21d57055dadf`; ethereum `0xa9d119979285484a271918b5f8f226dd139771d7`; ethereum `0xb6463fd3ff4bb51cac28d0f6768d49218639f113`; ethereum `0xc883dea716d856e22272b8e14867567b04141c1a`; ethereum `0xcd1953e4d58ef232f4f9c1e0a33e93acc95f7d53`; ethereum `0xd46c774a5f5def368bf30acb7572b01e51563a1d`; ethereum `0xf7855f37ee116a0736e3baa68ddc205467ae8153` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 54 | ethereum | n/a | 54 deployments: ethereum `0x1831f6b2573e756bfafdcb121880a80894a61ae2`; ethereum `0x1beceace08688e58e649c40831d3cf11fb22e3db`; ethereum `0x1ca1fcf34ba9c6d2e8c6c8ea398b9f562a8a7aba`; ethereum `0x26372904ca7aba32579b2ee4c7d96616eceb8c03`; ethereum `0x2a76938c3dd3d672aa72651f99826084fc62d63b`; ethereum `0x2f49de50405366a794fd00be68fc8f151517d301`; ethereum `0x34f0a81703c2ed935a61372188a8f9ff78edf77d`; ethereum `0x364cb3da96ea3bf24c97c3cd95d59df7a403a1ed`; ethereum `0x36b9bcbcecc87cca372130c331e9905b92c5759a`; ethereum `0x39eed09d42072243b86c054063616568cba16ee2`; ethereum `0x491caf0cb459c53b815aa759eca290fdf0b62669`; ethereum `0x4df48f7abc624ab672d69a18a5fc7bde5944c8e2`; ethereum `0x519db1319f7c4192d1d964a6f932298e76c026af`; ethereum `0x5609ef3b48e79b2328d877ff40d742903810d585`; ethereum `0x5bac8a66c78e4258c964d4c84d62825f5d2a8a64`; ethereum `0x608889f7652a48c07286f1394bcdc1486a34468e`; ethereum `0x63628b4cdaae7c5e3db5c5a57c699bbae77a84b8`; ethereum `0x64b02119a901843a6a6d273d40a8c6b9e099c197`; ethereum `0x6a46002457b743ce9167ff5134fe8de916f54bfa`; ethereum `0x6b419290f77dd9ab881c14427c791184d7ce9736`; ethereum `0x6e9e3baf06db9265f81e0d6862039569e73b076e`; ethereum `0x73ebff4460ca625a59e8c024c333d3501505b8e9`; ethereum `0x75f327239fa495a553ec562e1e75f8c1ffe63d4f`; ethereum `0x79356bf9d3c97ed10dd6f63f7560fd952b929162`; ethereum `0x7dd8f274d21bc568db8c1512e28ad7a0bd248319`; ethereum `0x800187a3c549e323351c1b9cb815c024069bd34a`; ethereum `0x80f035caef10920d6b0be9ed4c44de571493ee9b`; ethereum `0x8320385030690ee6e95c713f586c2a8f5dd07c18`; ethereum `0x8c71baa29d66e2f09627bafef6f8ba1ef8e3ee10`; ethereum `0x8e26dab15e7af842acbe030b65808618b50de32d`; ethereum `0x8e3fddb3142027c49d1b602cd9fc4d9c42ebcf2f`; ethereum `0x94df93123af26de3998032914ba54db1ae5311a2`; ethereum `0x96c2436af099de751a812fe32836ee794dde2020`; ethereum `0x9a8604f5f72769057181ff95f2a9f40906221cfd`; ethereum `0x9b6eee0309d831b59d75e047cc7dff2f3b2d8bea`; ethereum `0xa2a9d2b4905ac2adc00c32aa5489fec7153873b9`; ethereum `0xa4d274fae648b3e20c3458a9ba2acef4b0a8ebf6`; ethereum `0xa4d853b2488aaf2d21d015524bac691bd019f7a7`; ethereum `0xa54151ce4f40b0644990605fc116ada975dd527e`; ethereum `0xad99d667eb39f784612868ba87345362f6179c8d`; ethereum `0xb3324df28d3cd79d358887131e579e95e0e56fb7`; ethereum `0xb586b3a67323a62f55b8910d411a4ac9b962abd8`; ethereum `0xbaaa2a89a7bec92a810e0bf96adf68066bec5c7d`; ethereum `0xc7995acd52ec36a7afa414aad762b8c57cdece5b`; ethereum `0xd4f06205c0e56f953070a9f58a488595377ef118`; ethereum `0xd7738f10a46ca13287a10449dc9e8e8cd5fe2530`; ethereum `0xd8bdfe2d4170fb1b9a316511440878100280021e`; ethereum `0xdd5c60b0dbd51fde5ab2416d4e2d749d27fe058e`; ethereum `0xe29e74b7de69804a536affcc995924e9a98f6f4b`; ethereum `0xe6238f142cf04c2f49c911ba2c217e73b2b21b76`; ethereum `0xe8c96f744f8ef8ecb62195cc4a65c9b756513de9`; ethereum `0xed51799d71acbb44c4c82402635222b2e8f1895b`; ethereum `0xed6f77f15bcfee1a16ebe9d71d905ed9884ab80a`; ethereum `0xf6040cb6c452834ea661b6224afadfb8f9da07e9` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55161896bf9e5867851de6d063b7284a195b23ca`; ethereum `0xc7d3fa8fbfddfc03d37804838ba38c741323652b` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | ethereum | n/a | 8 deployments: ethereum `0x10432bc30396e70f792b538d7e810c83dd7bfe71`; ethereum `0x127d3615a8865812f76ff8f214f9955c3a74820a`; ethereum `0x630ed8220f9cbc98358a2e2ecb0727d7b9d61397`; ethereum `0x7d7bb40f523266b63319bc3e3f6f351b9e389e8f`; ethereum `0x8d48b8d948726d4636aa15a9d6124422f461e153`; ethereum `0xb533c682553f518a3961eeec2bfdc645c60289f0`; ethereum `0xb86510bfdcd229a66f0617162ef1c45db1ceaba8`; ethereum `0xd2502e8e253a48d229df0e642a404c5bbff1c1b4` | ⚠️ Unaudited |
| WBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x443ea0340cb75a160f31a440722dec7b5bc3c2e9`; ethereum `0x4e64e54c9f0313852a230782b3ba4b3b0952b499`; ethereum `0x72874cfe957bb47795548e5a9fd740d135ba5e45` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f67e4d9bd67efa28236013288737d39aef48e79`; ethereum `0x7de363b6bf0a892b94a1cd0c9df76826bfc14228` | ⚠️ Unaudited |
| X2Y2Lending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4cd094fcc9f107eed45217b078481bfd8fbbad5f`; ethereum `0xcf7da658f1e3da0916fc66291f10b022406f6ee1` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x310b7ea7475a0b449cfd73be81522f1b88efafaa`; ethereum `0xac37729b76db6438ce62042ae1270ee574ca7571` | ⚠️ Unaudited |
| YoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda92d2172cd402d222131cc95a66ec7bd82dc169` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x3a43aec53490cb9fa922847385d82fe25d0e9de7`; ethereum `0x50c749ae210d3977adc824ae11f3c7fd10c871e9` | ⚠️ Unaudited |
| ZhartaLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0466b94a37b9037b6416ca5b1c17de00356fa09b`; ethereum `0x0d08ea010dd3bb0a1dda37443e982c46adb2e4d5`; ethereum `0x2cfe1c35bb695d4eff2736054eac3b6ce4dea90b`; ethereum `0x6209a1b9751f67594427a45b5225bc3492009788`; ethereum `0xb06e99cc97fc95cc9a84ae95c369a8b8299cf383`; ethereum `0xb2a557732b9f5eea359b643d085ad32e2288afaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082481d2223a1372d975edc9ccfea3d77b1b595f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4b8c77c7775ab0f6914893f67a6c1c54c83b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e74e15e43afa985ed1003e78e652d58d8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe43585a8a5a98a3732026d45c4c7900c566efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0bf0a112684556e825b7be5cc290eda4c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2664a65346db247649d5d7853b7bb4cb4e7734f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d741314f73aea8a133c5c71653f779150f9c229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x205216d89a00feb2a73273ceecd297baf89d576d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2627d5d0af0b88ee58bd7346f20a429f67a73e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c258bcac2ab3615fc8bcfcd878e8b8df81ffa06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61baf0ce69d23c8318c786e161d1cac285aa4ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76b3d354fee58523e4687a2142c2ccc6a4d35e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3091dfa6c02b6611250733852c95a59a127e00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa72e01a942f5e8ef09dbaf824c2d7a7033e96f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae20f9093eb3301b2d83871a3505935efc8498c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1e4953c93da52b95edd0ffd910565d3369acd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2868095814c2714039b3a9ebee035b9e2c411e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1202d64010a7b644ab258ca46ad5fdf2148905a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x07a1dc74ec0c2f3f9e605ad464a048099793be09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x345165be48b70212ac5a0d2e8b4099e83532d882` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x8004a818bfb912233c491871b3d84c89a494bd9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x8004b663056a597dffe9eccc1965a193b7388713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbdeaa316e5ab8b9d27b44296794c43a0eeb3eb30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x752ac7b1b6707399b989a6c5c68eadfce041ee7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8004a818bfb912233c491871b3d84c89a494bd9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8004b663056a597dffe9eccc1965a193b7388713` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 206
- Live contracts: 0
- Unknown liveness contracts: 206
- Source-verified contracts: 186
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=75, contamination review=11, source verified unclassified=100, unverified unclassified=20

Showing first 200 of 206 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | ERC1967Proxy<br>`0x940098b108fb7d0a7e374f6eded7760787464609` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| arbitrum | source verified unclassified | UsdcVaultL2<br>`0xdc8df20be448e41fde88e2478d6bc4d3c9a092d6` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | candidate review | ERC1967Proxy<br>`0x62da45546a0f87b23941ffe5ca22f9d2a8fa7df3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | candidate review | ERC1967Proxy<br>`0xb979b79adc4e5cf5cd43599a8d66c45460870bb4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | contamination review | DSROracleReceiverOptimism<br>`0x33a3ab524a43e69f30bfd9ae97d1ec679ff00b64` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | DSRAuthOracle<br>`0x15acee5f73b36762ab1a6b7c98787b8148447898` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | DSRAuthOracle<br>`0x2dd2a2fe346b5704380efbf6bd522042ec3e8fae` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | DSRAuthOracle<br>`0x779053e25267b591dcfbb20b2397462aaad6b776` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | DSROracleReceiverOptimism<br>`0xadeaf02ddb5bed574045050b8096307be66e0676` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | DSROracleReceiverOptimism<br>`0xee2816c1e1eed14d444552654ed3027abc033a36` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | ForeignController<br>`0x5f032555353f3a1d16aa6a4ade0b35b369da0440` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | ForeignController<br>`0xb94378b5347a3e199af3575719f67a708a5d8b9b` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | ForeignController<br>`0xbe67325938bf223a31da7ff91777fed784f8163c` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | ForeignController<br>`0xe09e6fa52bd3e8071fc6b5473f1bbeae67018591` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | OptimismReceiver<br>`0x212871a1c235892f86cab30e937e18c94aed8474` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | SSRAuthOracle<br>`0x65d946e533748a998b1f0e430803e39a6388f7a1` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | UsdcVaultL2<br>`0x4cb851d28ae5c24f839e45e4f07e3888641fbe90` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | UsdcVaultL2<br>`0x6acc02ddd82206a44ff4ec13977e63d1a29c7723` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | source verified unclassified | UsdcVaultL2<br>`0xe13942e7cef74ab51d9b87c244357494dc0fda0a` | non_address_book | unknown | unknown | verified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0x1d741314f73aea8a133c5c71653f779150f9c229` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0x205216d89a00feb2a73273ceecd297baf89d576d` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0x2627d5d0af0b88ee58bd7346f20a429f67a73e00` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0x3c258bcac2ab3615fc8bcfcd878e8b8df81ffa06` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0x61baf0ce69d23c8318c786e161d1cac285aa4ea3` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0x76b3d354fee58523e4687a2142c2ccc6a4d35e8b` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0xa3091dfa6c02b6611250733852c95a59a127e00f` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0xa72e01a942f5e8ef09dbaf824c2d7a7033e96f0d` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0xae20f9093eb3301b2d83871a3505935efc8498c6` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0xe1e4953c93da52b95edd0ffd910565d3369acd6b` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0xe2868095814c2714039b3a9ebee035b9e2c411e5` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base | unverified unclassified | UnnamedContract<br>`0xf1202d64010a7b644ab258ca46ad5fdf2148905a` | non_address_book | unknown | unknown | unverified | n/a | `0xd1236a6a111879d9862f8374ba15344b6b233fbd` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x345165be48b70212ac5a0d2e8b4099e83532d882` | non_address_book | unknown | unknown | unverified | n/a | `0xc4d251f91663abc0ffb1c642ac33607dafc79188` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xbdeaa316e5ab8b9d27b44296794c43a0eeb3eb30` | non_address_book | unknown | unknown | unverified | n/a | `0xc4d251f91663abc0ffb1c642ac33607dafc79188` |
| ethereum | candidate review | CometExt<br>`0x1f71901daf98d70b4baf40de080321e5c2676856` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExt<br>`0x5c58d4479a1e9b2d19ee052143fa73f0ee79a36e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExt<br>`0x95dedd64b551f05e9f59a101a519b024b6b116e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExt<br>`0x995e394b8b2437ac8ce61ee0bc610d617962b214` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExt<br>`0xe165155c34fe4cbfc55fc554437907bdb1af7e3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExtAssetList<br>`0x055e53f50b84fd91c4be367220efd36c3d091e1f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExtAssetList<br>`0x16f3532e6af45a2c51b6c77b1267cef34a9cf3b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExtAssetList<br>`0x4f4d5a808e2448cb12df7ac12efb12888fd9bdd5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExtAssetList<br>`0x53ceade15669ecde1e8f6d120b98e5aab2936587` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExtAssetList<br>`0xd4ec911b8fd79139736950235a93d3ea9c3f68ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | contamination review | AssetListFactory<br>`0x3ff744cf6078714bb9d3c4fe5ab37fa6d05dec4e` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | contamination review | CometFactoryWithExtendedAssetList<br>`0x1fa408992e74a42d1787e28b880c451452e8c958` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | contamination review | Streamer<br>`0xf86b6b0cc4d7178e118db3179a2d2191959ea752` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | AssetListFactory<br>`0xadf7ad4dd000ea75667a3cdf65f3d3b7f1e9f02e` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | AssetListFactory<br>`0xea2a6e7b41505d62d404f927f991edc9e45883c2` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | Comet<br>`0x0be923b1716115d742e35fa359d415598c50510f` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | Comet<br>`0x4b5dee60531a72c1264319ec6a22678a4d0c8118` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | Comet<br>`0x58ebb8db8b4fdf2dcbbb16e04c2f5b952963b514` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | Comet<br>`0xaa390749cb758af4070e93478fc743c72c18989c` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0x271a200023c9512d37149dfbb62bf0f62a8d4680` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0x4a900f81deda753bbbab12453b3775d5f26df6f3` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0x4cfce7795bf75dc3795369a953d9a9b8c2679ae4` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0x698a949f3b4f7a5dde236106f25fa0eaca0fcef1` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0x6c987dde50db1dcdd32cd4175778c2a291978e2a` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0x89128fe4fc91038c13220e74991f9557f816c865` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0x8d38a3d6b3c3b7d96d6536da7eef94a9d7dbc991` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactory<br>`0xaeb318360f27748acb200ce616e389a6c9409a07` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactoryWithExtendedAssetList<br>`0x435260300c6624032f232ba67c0fb7d02c6a1314` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactoryWithExtendedAssetList<br>`0x97d81fdb0da92e0db66ab7b0e7b5102f3e43ddcb` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactoryWithExtendedAssetList<br>`0xba8f83fffc7097cbcd89fe323d31753cfac33867` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactoryWithExtendedAssetList<br>`0xc4aafc9f0c52fdda0fed972c55b136bd07552ad0` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometFactoryWithExtendedAssetList<br>`0xdfb81f0ebfdfdd90143f5debd1cd016b677d1585` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometWithExtendedAssetList<br>`0x652b1844270e38ae27ccf53de94207aa1d50cd0a` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | CometWithExtendedAssetList<br>`0x7ca80ed6dd25c4d48c80970e646cd8da4c8820bf` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ConstantPriceFeed<br>`0x72e9b6f907365d76c6192ad49c0c5ba356b7fa48` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | EzETHExchangeRatePriceFeed<br>`0xde43600de5016b50752cc2615332d8ccbed6ec1b` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | METHExchangeRatePriceFeed<br>`0x5bd3e64f6702f55e744e70e27281a7caabf7de46` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | METHExchangeRatePriceFeed<br>`0x66228d797eb83ecf3465297751f6b1d4d42b7627` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | METHExchangeRatePriceFeed<br>`0x7e86318cc4bc539043f204b39ce0ebed9f0050dc` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0x023ee795361b28cdbb94e302983578486a0a5f1b` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0x2f7439252da796ab9a93f7e478e70ded43db5b89` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0x7783a5c7656d75ed1144379c25142b7e43da5f5e` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0xa742a89a2aabae46aad71393a187ca5d77846cc4` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0xc3a73a70d1577cd5b02da0ba91c0afc8fa434daf` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0xd187f938348aa245e2104be8d849ea6d8d23f434` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | MultiplicativePriceFeed<br>`0xd98be00b5d27fc98112bde293e487f8d4ca57d07` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | PriceFeedWith4626Support<br>`0x31b844dbc7cdbaa27d22fd6d54986836d023bf3f` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | PriceFeedWith4626Support<br>`0x403f2083b6e220147f8a8832f0b284b4ed5777d1` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | PriceFeedWith4626Support<br>`0x4f90c34def3516ca5bd0a8276e01516fb09fb2ab` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | PriceFeedWith4626Support<br>`0xe3a409ed15cd53afdefdd191ad945cec528a2496` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | RateBasedScalingPriceFeed<br>`0x1ad4ceba9f8135a557bbe317db62aa125c330f26` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | RateBasedScalingPriceFeed<br>`0xdd18688bb75af704f3fb1183e459c4d4d41132d9` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | RateBasedScalingPriceFeed<br>`0xe802a0b833f6080feb46dd54c75444c5dba0c873` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ReverseMultiplicativePriceFeed<br>`0x1933f7e5f8b0423fbab28ce9c8c39c2cc414027b` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ReverseMultiplicativePriceFeed<br>`0x39b44c5d7469f50e9500a2de36d9e3dbb6f9278e` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ReverseMultiplicativePriceFeed<br>`0x57a71a9c632b2e6d8b0eb9a157888a3fc87400d1` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ReverseMultiplicativePriceFeed<br>`0x5ecf850c770f78dc7b9f9760672484b2ccaea818` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ReverseMultiplicativePriceFeed<br>`0x99a0991433d70a1c70365315278c64b95b196490` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ReverseMultiplicativePriceFeed<br>`0xc49399814452b41da8a7cd76a159f5515cb3e493` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ReverseMultiplicativePriceFeed<br>`0xc7986b6318c3f3ab5be12baf22892961158d3c24` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | RsETHScalingPriceFeed<br>`0x3c30b5a5a04656565686f800481580ac4e7ed178` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | RsETHScalingPriceFeed<br>`0xfa454de61b317b6535a0c462267208e8fdb89f45` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x0a4f4f9e84fc4f674f0d209f94d41fafe5af887d` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x2c7118c4c88b9841fcf839074c26ae8f035f2921` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x2d09142eae60fd8bd454a276e95aebdffd05722d` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x351a133fd850ea81ed8a782016e308acbaddec91` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x5404872d8f2e24b230ec9b9ec64e3855f637fb93` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x66f5afdad14b30816b47b707240d1e8e3344d04d` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x7b03a016dbc36db8e05c480192fadcdb0a06bc37` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x87641f6bc5ad796ea2f30af2a79ab2cf30f74188` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x970ffd8e335b8fa4cd5c869c7cac3a90671d5dc3` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x9f2f60f38bbc275af8f88a21c0e2bfe751e97c1f` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x9f57e4a1dfb69d6221aa15d115895dacc1b00230` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0xaa9527bf3183a96fe6e55831c96de5cd988d3484` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0xcb3643cc8294b23171272845473dec49739d4ba3` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | WBTCPriceFeed<br>`0x443ea0340cb75a160f31a440722dec7b5bc3c2e9` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | WBTCPriceFeed<br>`0x4e64e54c9f0313852a230782b3ba4b3b0952b499` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | WBTCPriceFeed<br>`0x72874cfe957bb47795548e5a9fd740d135ba5e45` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | source verified unclassified | WstETHPriceFeed<br>`0x7de363b6bf0a892b94a1cd0c9df76826bfc14228` | non_address_book | unknown | unknown | verified | n/a | `0x2501713a67a3dedde090e42759088a7ef37d4eab` |
| ethereum | candidate review | CometExt<br>`0x285617313887d43256f852cae0ee4de4b68d45b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | candidate review | CometExt<br>`0xe2c1f54aff6b38fd9df7a69f22cb5fd3ba09f030` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | candidate review | CometProxyAdmin<br>`0x1ec63b5883c3481134fd50d5daebc83ecd2e8779` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | candidate review | ConfiguratorProxy<br>`0x316f9708bb98af7da9c68c1c3b5e79039cd336e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | contamination review | CometFactory<br>`0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7` | non_address_book | unknown | unknown | verified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | contamination review | Liquidator<br>`0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3` | non_address_book | unknown | unknown | verified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | source verified unclassified | Comet<br>`0x50cb5e9a07f5c8db997b236761622931364d634e` | non_address_book | unknown | unknown | verified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | source verified unclassified | Configurator<br>`0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | non_address_book | unknown | unknown | verified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | source verified unclassified | ConstantPriceFeed<br>`0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab` | non_address_book | unknown | unknown | verified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | source verified unclassified | ScalingPriceFeed<br>`0x23a982b74a3236a5f2297856d4391b2edbbb5549` | non_address_book | unknown | unknown | verified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | source verified unclassified | WstETHPriceFeed<br>`0x4f67e4d9bd67efa28236013288737d39aef48e79` | non_address_book | unknown | unknown | verified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| ethereum | candidate review | BNPLOptionBidValidator<br>`0x327fe52e44a1fc68e8596df8769a4b5dc538550e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ERC1967Proxy<br>`0x0424c62eed9b4dab6e22ba42be2173c7557728b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ERC1967Proxy<br>`0x0fdc7b5ce282763d5372a44b01db65e14830d8ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ERC1967Proxy<br>`0x55161896bf9e5867851de6d063b7284a195b23ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ERC1967Proxy<br>`0x9f2781f9e3463b772cbecbc2a0e29bb7b1f3e1ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ERC1967Proxy<br>`0xb33c8951d462ccf4aa7a37b70e0be5b8751e7524` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ERC1967Proxy<br>`0xcc174f151ea55fe2f745c3180ec780c9dbe36abb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ERC20WasabiPool<br>`0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ETHWasabiPool<br>`0x046299143a880c4d01a318bc6c9f2c0a5c1ed355` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ExactOutSwapper<br>`0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | PerpManager<br>`0x2eb99d429bebbbc5910bbad5f34d909a5f55910b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | PoolAskVerifier<br>`0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | PoolBidVerifier<br>`0x66873693e8b125dbea46274173b0d6dcd1933cca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | Signing<br>`0xd3bb8475c30fd70675f6250fb725e30b3a6e6094` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | TimelockWasabiVault<br>`0xe0a7090c3f9a36375ac26a8f80ede77a8fe14fe0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | VaultBoostManager<br>`0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiBNPL<br>`0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiBNPL2<br>`0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiConduit<br>`0x9e31ef400c74630ab50066dd64c29c1f4fc57209` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiConduit<br>`0xf29a66e420c240ebd23f775b93619c8f3cfff856` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiLongPool<br>`0x3a277440bb850d41fa1e50112873abb799e4fd97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiLongPool<br>`0x45a9333102723f606b890579b2d0f8f475aac7cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiLongPool<br>`0x7f545161fa2cbbb1c9e0d182f2d0c2772ce6cbc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiLongPool<br>`0x8d9040c66d4453aa66366cd0dbeb610ce7b41b59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiLongPool<br>`0xc24f58b36f90c5abc2874d028bfe12f3db656b51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiLongPool<br>`0xcda7ce4b56f719d0f254ea6abda6ba4df4c8c0ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiLongPool<br>`0xcf41e5b980b109753b11ad7d49bb67a0b6b075dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiOptionArbitrageV2<br>`0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiPoolFactory<br>`0x8e2b50413a53f50e2a059142a9be060294961e40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiRouter<br>`0x1b362e8eccc7aa0e835e3041f5cc10ccece046b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiRouter<br>`0x33d2ac6d717376b89382638dbcabea53b677ee9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0x5bb9e070ed2ef50ca3a1c17a5fa1300b0d088c60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0x61d0df7c0978d04071c6f1e94beba96e075ebe12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0x7748355debf8c9bfac8234e3f79f04ac0bbf8b32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0x8ea384f9316abbdae698f2bb6850d23f5fb13277` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0xbc07db13399f8b216fa628635d171f943869cbbe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0xcc2a29b8324686ef4b05f7d0aabf919ea4e26bee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0xea9a832c8c25d4447f0cb66bb9987e365bca647c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiShortPool<br>`0xfb71f098eef68504e3cf9a4dfa78d834d3490c4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiStructs<br>`0x8f2885e85a59782197024306483cceae7b99dcd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0x0db381cfcafee909e66e5244ec5d7d933a747e12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0x3f631b8b318c66858fa1e68f02fccf976c5caa8d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0x65aa8f218ab3fa104af12e786a41b0416459991e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0x7d8c76eaf1858ce5678fc4926f4d8875e967ac53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0x9720f76eae9b0d864a2a9e247bd82eef6ca84fa4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0xa6354ec7e4a63f0e75ca3e624eff21d57055dadf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0xb6463fd3ff4bb51cac28d0f6768d49218639f113` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0xc7d3fa8fbfddfc03d37804838ba38c741323652b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0xc883dea716d856e22272b8e14867567b04141c1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0xcd1953e4d58ef232f4f9c1e0a33e93acc95f7d53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | WasabiVault<br>`0xd46c774a5f5def368bf30acb7572b01e51563a1d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ZhartaLending<br>`0x0466b94a37b9037b6416ca5b1c17de00356fa09b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ZhartaLending<br>`0x0d08ea010dd3bb0a1dda37443e982c46adb2e4d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ZhartaLending<br>`0x2cfe1c35bb695d4eff2736054eac3b6ce4dea90b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ZhartaLending<br>`0x6209a1b9751f67594427a45b5225bc3492009788` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ZhartaLending<br>`0xb06e99cc97fc95cc9a84ae95c369a8b8299cf383` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | candidate review | ZhartaLending<br>`0xb2a557732b9f5eea359b643d085ad32e2288afaa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | contamination review | ArcadeLending<br>`0xf31166390c90c233088a13f60ce08f20bfc8c09a` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | contamination review | ArcadeLoanTransferrer<br>`0xf71d5e0a44d602a6b879734b9e99b50fc54d2aee` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | contamination review | NFTfiLending<br>`0x7f4f727930c2c73238584f9f195e32e86e32d1b2` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | contamination review | TellerLending<br>`0xca954b354dfb73a740f370f71cc8918f1c0982e1` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | contamination review | X2Y2Lending<br>`0x4cd094fcc9f107eed45217b078481bfd8fbbad5f` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | AddressProvider<br>`0xdabc8055e21a3d5c1e99d8048023f3c72d8e8c93` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | AddressProvider<br>`0xf7474812890039a744737a7347c3480a4f081828` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | LendingAddressProvider<br>`0xc399616937ebace9e45159a60cd77663c4a30e79` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | TellerLending<br>`0xee83e50791a35364db279d097c884e1eaee8624a` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | TellerLending<br>`0xeebbc046508478546cc9a8ca7327f5fa7ba24dc9` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WASABI<br>`0x0cc3471d024250c7661003063aa5cc3d2c142467` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WasabiFeeManager<br>`0x0301079dabdc9a2c70b856b2c51aca02bac10c3a` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WasabiFeeManager2<br>`0xc08c2d6dbeb704efb7a68bd2bb29dfa954625e34` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WasabiLongPool<br>`0x000728488ae4e80b2ed7c3a06462bdeab5fbf1cf` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WasabiLongPool<br>`0xa5a6457dd024bf2e5edf8dbd54dfbca24cac7b96` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WasabiShortPool<br>`0x0b9f9e6904194174a53d9c500b84eac1b79ada57` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WasabiShortPool<br>`0x76e8f316cec20c36759c3d80ebaa4cb3b5279499` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |
| ethereum | source verified unclassified | WasabiShortPool<br>`0x92361209071c76e031133def9092d4920a9312f2` | non_address_book | unknown | unknown | verified | n/a | `0x5c629f8c0b5368f523c85bfe79d2a8efb64fb0c8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Report - 20.12.2025](https://zyf.ai/sherlock-audit-november-2025.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [audited by Sherlock](https://zyf.ai/zyfai_erc7540_sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Report - 03.03.2025](https://zyf.ai/zyfai_audit_cecuro.pdf) | Cecuro | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Report - 06.07.2025](https://www.zyf.ai/rzfi-audit-report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Supremacy IRMLinearKinky.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18732] Report - 20.12.2025 — no match: Extracted two Solidity smart contracts from the executor-module repository scope. The backend TypeScript files are not smart contracts and are excluded.
- [18733] audited by Sherlock — no match: Scope section explicitly lists three files: SemiAsyncRedeemVault.sol, SmartAccountProxy.sol, SmartAccountWrapper.sol. Audit date is March 2-March 4, 2026, so end date is March 4, 2026.
- [18734] Report - 03.03.2025 — no match: Audit scope explicitly lists 4 files. Audit date found on cover page: 'Audit Date:March 3, 2026'.
- [18739] Report - 06.07.2025 — no match: Scope section explicitly lists RewardToken.sol and ERC20WrapperLocked.sol. No date found in the provided text.
- [18761] Supremacy IRMLinearKinky.pdf — no match: Only one contract in scope: IRMLinearKinky. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Report - 20.12.2025 | GuardedExecModuleUpgradeable | unmatched — not counted | — | listed in scope | no |
| Report - 20.12.2025 | TargetRegistry | unmatched — not counted | — | listed in scope | no |
| audited by Sherlock | SemiAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| audited by Sherlock | SmartAccountProxy | unmatched — not counted | — | listed in scope | no |
| audited by Sherlock | SmartAccountWrapper | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | ISemiAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | SemiAsyncRedeemVault | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | SmartAccountProxy | unmatched — not counted | — | listed in scope | no |
| Report - 03.03.2025 | SmartAccountWrapper | unmatched — not counted | — | listed in scope | no |
| Report - 06.07.2025 | RewardToken | unmatched — not counted | — | listed in scope | no |
| Report - 06.07.2025 | ERC20WrapperLocked | unmatched — not counted | — | listed in scope | no |
| Supremacy IRMLinearKinky.pdf | IRMLinearKinky | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 116 |
| upstream | 12 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [18732] Report - 20.12.2025
- [18733] audited by Sherlock
- [18734] Report - 03.03.2025
- [18739] Report - 06.07.2025
- [18761] Supremacy IRMLinearKinky.pdf

Fork inheritance lineage and inherited audits are included when available.
