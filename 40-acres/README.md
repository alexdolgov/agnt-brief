# Agentic Audit Brief: 40 Acres

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: 40 Acres (`40-acres`)
- Website: [https://www.40acres.finance/](https://www.40acres.finance/)
- Lifecycle: active (Tier 0, 35.9% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, base, ethereum, optimism
- Contract surface: 547 unique implementations (841 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $48,475,149.15
- On-chain TVL (included contracts): $9,508,727.33
- TVL by chain: Base $7,421,362.47 | Avalanche $1,189,486.54 | Optimism $897,878.32

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for 40 Acres in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 547 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/143
- Verified + Unaudited implementations: 143
- Verified by bytecode match: 0
- Unverified implementations: 404
- Unique implementations: 547
- Raw deployments: 841
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (143)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0x08dcdbf7bade91ccd42cb2a4ea8e5d199d285957`; optimism `0x1dbdbf3a9f58d3b831989f76e27b4a0f1d5dd46a`; optimism `0x723ae12117d4c6818050719e435b914438b99a02`; base `0x053e49f058851bb56469ebce4905b320fe19e3e9`; base `0xb99b6df96d4d5448cc0a5b3e0ef7896df9507cf5`; avalanche `0x80bab902368222474f1cb0b1f4a61ec39ab62ec9`; avalanche `0x84405466bd98fd2d16093e120268a416058f2a90` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xc0485c4bafb594ae1457820fb6e5b67e8a04bcfd`; avalanche `0xf8e3120fd9957200b84913f746b4cb66b9a8a612` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x555709f3d6b9e8b3129697a2d7fe965e5cb8433f`; optimism `0x828322b871c351b3ee48c0864b614dd4f6283fe6` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x0253d249a5e16269230fa81a58c104f5aafee4f1`; avalanche `0x0811251d17eb692e644a3850d5503544d3e2ebbe`; avalanche `0x272cd330263b85b6c1693c78ed1ad2a972ea4bfb`; avalanche `0x639c4ba572ed98180b2ccc306b25f2325bfb2c89`; avalanche `0x6c6fc88d8c06c7e29225dd00d422280e20a6eeb0`; avalanche `0x88451ac528cdf5ca4a853407db494455ff0c91e6`; avalanche `0xa9bf9027ecb4a71e6c274c83afdb4e1a488660f0`; avalanche `0xaa589d1740671c8f0e6ee89a0ac91fe9c45c92ae`; avalanche `0xc2a1044f8f67e65fed15644a76725b2637fc9eba` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a4203a52ceed651d30cb038698382a8905d6cfb` | ⚠️ Unaudited |
| AccessHubPhar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x06e05378a63a904afe03a6723cd1cbd9ec118e1b`; avalanche `0x282a4fae014862b43535620b4ea81f8ed4c096ec`; avalanche `0x3f3af1ba2cdceeb618fb57de98d1dbb6483c9e4f` | ⚠️ Unaudited |
| Aero | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | ⚠️ Unaudited |
| AlgebraCustomPoolEntryPoint | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x580be59a0461eae3414352c0abd88e485a294bfc` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x01a8a00a6fc8106b94f84aabaef689fd0d77271a`; avalanche `0x9c70bedd11cf874f07b1bd9c29e3e41f9f248f5c`; avalanche `0xb6180a0f879c675d4eafeaafbd2d876578c40fe5` | ⚠️ Unaudited |
| AlgebraFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x512eb749541b7cf294be882d636218c84a5e9e5f` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9df9457d5c55b4c880dc86c67ae323b00b5be48e` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b2441037e286d5bf9456a3be7b5273fe28dba1e` | ⚠️ Unaudited |
| AlgebraVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0b5db6f5f957ad0ac5e0af8a2c084077d079b3` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x64963852966aa7ff2258434f361ec933bf0eaf03`; avalanche `0x7d51ed4c4f3282704e3ac8038ff58d2bd4fb37ab`; avalanche `0xbbe734f62b31ff396e5a1210e3f22b6e891ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x47a2c15eeeef5018a3e13caf987b235d702c8825`; avalanche `0x4bb1932724c9276992cd02de1742779e00ab5586`; avalanche `0x51d6ab0a20a39eb87f10c008910da956349b3d4b`; avalanche `0xa44cb7bdb2e1e874bbdc55e5e762a6de6f299aeb` | ⚠️ Unaudited |
| BasePluginV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5af551ba1bf743978b42d4e133bff8b6231176ff`; avalanche `0x74544e33aad327c3f6d01028fdba8cacb1e52ed0` | ⚠️ Unaudited |
| Black | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd94a87696fac69edae3a70fe5725307ae1c43f6` | ⚠️ Unaudited |
| BlackholeClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x96d26416abaa0eaa2bd0bd246f0fd4e12894ca85`; avalanche `0x0ec20bd81b95334c9956e3eccaa04c103ebbf384` | ⚠️ Unaudited |
| BlackholeCollateralFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7915be57450df10a8da82bec64d98b09703d866c` | ⚠️ Unaudited |
| BlackholeLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93d12defa81c589a6fc1b8750fdfa29d9182cc55` | ⚠️ Unaudited |
| BlackholeLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 13 deployments: avalanche `0x07055a7f85e85cace75f6e0f98a56ca717d4adfc`; avalanche `0x1b0951316c8881b23f8035296dc033963a7a3802`; avalanche `0x21b48fa22f69ece450a687abbf32a82fe0f3c35e`; avalanche `0x389c1572cfb32c8d3eeaed70927d2472086d8163`; avalanche `0x3c7645944bbcf1ec21cc4a2c0938910441349a5c`; avalanche `0x90e222a65237b5881148306b21e173e62e1c4bb4`; avalanche `0x948050b36cd7374125571be15f0d2326cf9d50df`; avalanche `0x99f630a4c93777033775d762403c424fb77a95d1`; avalanche `0xa738e42029cae5fae852009e993204e09ae5ea28`; avalanche `0xc932a4e2503316b083deb4f5dcef3720dcff7b0f`; avalanche `0xe13fcd0cc5ef3db6d4304c85d5b2879aeb2dd86e`; avalanche `0xed2b3e3df66da913320e9c233a43a44d31ed59bb`; avalanche `0xf4cac243e10943aeea911ee4e43e05042b488d89` | ⚠️ Unaudited |
| BlackholeLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5122f5154df20e5f29df53e633ce1ac5b6623558`; avalanche `0x693ab037675b056730576892c214015990440cdb` | ⚠️ Unaudited |
| BlackholeMarketplaceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7e99c22f3951386cdb032b9992fe1cb8f51b1a93`; ethereum `0x9536a1c1e38e985635f0e450c4fde37a74f55980`; ethereum `0xda42b85f03e3acd72c2064c35b33923207811b49` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3935f7e11e33e676b6108f6e86ab8578d8e32d43` | ⚠️ Unaudited |
| BlackholeRebaseHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87d0f8c19a891c13c85185d8ba71ab1a419bde0c` | ⚠️ Unaudited |
| BlackholeRewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x129a760274721e84af287f30d4b0fd091b2057e0`; ethereum `0x4d5512d6ce555cf33b95381d27c48056e31d6819`; ethereum `0x6cb266bad64d6e5c000a2d75c825ac0f6da11eff`; ethereum `0x73b1e591bb2d25cf71c4c60390efd539cd05fa68`; ethereum `0x7b9e8afcd6a1bf85c548c7ab33cb143970ee9a16`; ethereum `0x8246590769a2992182c147fef62501f2988ce24a`; ethereum `0xc5cb7b9a980a3c64038cfa5e609613098aa721b5`; ethereum `0xd14ff8f531589190571c3a998a285134b7fd70e5`; ethereum `0xd7763cf3276932b635772d633ea622bf65c0b8a5`; avalanche `0x20f0c0c7a861ada21fd465563afb7529dfb41bc7` | ⚠️ Unaudited |
| BlackholeVotingEscrowFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x45a5afcaf55ac7784f3c3c4647efdf6944623337`; ethereum `0x774ebf63e380e38bfdf6d822e32425bd867ac577`; ethereum `0x7956ff54299977e27696287438d5fa37d72d4891`; ethereum `0xacaf4bf5befd9657c66d6a7ba1aa99616a93a8a3`; ethereum `0xb9d9d03ff3e95dc015d1b0a6400d33f424393e2c`; ethereum `0xdd9e19eb5f20447e30086dfcb5a295be9b5c5238`; avalanche `0xdb6e78736add8c85b7b6f8030d3ab836148a59ac` | ⚠️ Unaudited |
| BridgeFeeWrapper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c2207c82b54d37b0d3ceb80a50a3392aeb8888b` | ⚠️ Unaudited |
| ClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x68ebca9e306939794987ed4543631e718a8fdbd7`; ethereum `0x6bb7fb07ac7eceaed0b066ec4f328a1a8c4616cd`; ethereum `0xb58d41ab4289bb1057cf67ce10d851636efe5d66`; ethereum `0xc01a94d4c536f11ebafbd547f5a1834d9cf658b1`; ethereum `0xdae3a43f6dd57c2f1d1f76c00aeda93968e9fb60` | ⚠️ Unaudited |
| CollateralFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x034eccde44e7faa6c79bf1d456bbb7ab39d2bc12`; ethereum `0x0d7bc91264fe4c2988f25b3adda25259708ac712`; ethereum `0x1f5f48ed751097ea7c89995c6c5cf461ea1cfb3b`; ethereum `0x2039d30a6e42442759756e95555b3ba994071669`; ethereum `0x26eb636b78157a2e4f846117f768c90588ecbed2`; ethereum `0x38089f607ef402c398fb1b643319c9d599399635`; ethereum `0x42425c039c31b59201f7f9e337c26823e68e21f5`; ethereum `0x6aa922eb759c7bc8586e5916d461a01517b93c99`; ethereum `0x71ffb63cded602b4da9aa60ccc6f63e6a062ea1f`; ethereum `0x8e4fb2fe73be8c582677ca0f9ed62d837d4b9c04`; ethereum `0xc3b71609feccfb2a5a0d7db3cf8fdf577d44bdc1`; ethereum `0xcf27f70cad84f63b899e192116b69d044a456cd6`; avalanche `0x24914636dab84236cb7d4394cd25d15ec6e3bd50` | ⚠️ Unaudited |
| CommunityRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x5fbdf3b3202a0858da1307d9d3c074593c9b60c5`; optimism `0x66d6405b1813b46d57b2a583b6957b4aef39b873`; optimism `0xf1f46f919f8d9fe75070a96f31cb764ae2db9f94`; optimism `0xf353d4d3a75e6930d5c8b598492646e374f008de`; base `0x3c113d68c2eeb665c2219b26d3090074e257e46d`; base `0xe63f5ff2d54118c158fe0e27b226aa76da109aa2` | ⚠️ Unaudited |
| DLMMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb480050b016f6c6d45203d2346b68bddda23d4d` | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x684b340014556d15d754b812ef7d1b134b42289c` | ⚠️ Unaudited |
| DLMMPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf41253c1258a7a3c291e695158267b173c26d710` | ⚠️ Unaudited |
| DLMMQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddae0aa4e93be4936c1bcc12d3001b35c75fef40` | ⚠️ Unaudited |
| DLMMRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x015f051b1fe0df7693a9dc348bc48c608aa037b3`; avalanche `0xa2ab122fac20ee2bf2db97a7dd55160928059513`; avalanche `0xf1996b044a8572a6eb8d96540d479f91a3120ab7` | ⚠️ Unaudited |
| DLMMRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d` | ⚠️ Unaudited |
| DynamicYieldBasisLpClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd394c7769b0872082fa5bccc9cfbca528de777c` | ⚠️ Unaudited |
| DynamicYieldBasisLpFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcbe1efe94e88ee54794a32044b390dbb0e2b7ed7`; ethereum `0xf5bdac775b04c235d6fd2714c37c4b4f198b1197` | ⚠️ Unaudited |
| DynamicYieldBasisLpLendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00d2f4f21bfe658f836010900f887618a924ebb9` | ⚠️ Unaudited |
| DynamicYieldBasisLpRewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8de50803d77d4bc20276cc884f8d00f3a755a4c` | ⚠️ Unaudited |
| EntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaad038102e8b5630a89f4b77d5aef59868d2056b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e23a4eb753334e747cd164c8dea620e0306d0ec` | ⚠️ Unaudited |
| ERC4626LendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x329f7a20eae3eea7d300d85eb300bc4f2caf7d41`; ethereum `0x59a0ecc7ab733ccafabc5eac191ad6612a1bf08d`; ethereum `0x5f940c193874a8a6bed8c44cd69e8454d9d8484a`; ethereum `0x7b6f50480ce0bbdd71be3a0453d77b74f26b80e8`; ethereum `0xff17ebb5dcaa6e4d67b5df46e4c9171632c89ad6` | ⚠️ Unaudited |
| ERC721ReceiverFacet | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3c28fa57f8cd5751eb5dcd8d53c10651d7d96579`; ethereum `0x5ce0a3e1c1e306595c68e22f7d140eeaa818ea8e`; ethereum `0x9203c26b52da9b4b8a5751ad55811d1dac8ac60a`; ethereum `0xc6ed608f994c92ceeac9b702c8198e3030e82700` | ⚠️ Unaudited |
| FacetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bca68d9c613dc9b07b2727c28b5ce46204943de` | ⚠️ Unaudited |
| FarmingCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0xa47ad2c95fae476a73b85a355a5855adb4b3a449`; avalanche `0xcbf15ea9f0e44d563ed07d6496ceba01790932ab`; avalanche `0xcecc64211f1ed70a71bd47eb656f7067c1f45541` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x088e2efad10f3262e745c6c01f661112f353bb64`; avalanche `0x1e1e2a861205767d69a51edf03cf5e3a278437bc`; avalanche `0x82a411555f4262769077cb9b8775c897a1185222` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2334338da0bb192dcfc33356f5d1cc6bc03adc02`; avalanche `0x6a8591adb2ca2427021906e223e2b5de20106aa9` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x227fabb4db11cc082ef8cd083cff5d034d4de16f` | ⚠️ Unaudited |
| FortyAcresMarketplaceFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b0a8766ea8d4ae8b2b8abf0fd1a3793c8aa7f25`; ethereum `0x678648b0e243e82a4511acad9c3a5df33c4a071e` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x35f35ca5b132cadf2916bab57639128eac5bbcb5`; avalanche `0xaecb52909176a46e2b3114dc1e9c4ddf4ef50586`; avalanche `0xd9a63c24f69f015ebe3ff61817645dc7cc5906b1` | ⚠️ Unaudited |
| GaugeManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93c601c31145185787dab3617d6b419894dc0b8f` | ⚠️ Unaudited |
| GaugeOwner | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6c6630b76c7d2b0269cf66fd4425491d9ec66de5`; avalanche `0xdd35894a790ee9625c3aad49e8bd14e135f3f946` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x15c50acd86be6be893ab57cf4f47d0da7e24d292`; avalanche `0x19ff41165ad2f6493a8a4f3e9904ae0815d7fcd8`; avalanche `0xdb73614c843ee0723cdbbe801a19a680590da90e` | ⚠️ Unaudited |
| GenesisPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdeb50ac7a0a03332626b3c45eb20e7310653260f` | ⚠️ Unaudited |
| GenesisPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0eb1e103116b8ec5f13a72f6943440340c4840dd` | ⚠️ Unaudited |
| KinkFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca71eba4ecde733d3bd267fc08a011c1dad7b1f` | ⚠️ Unaudited |
| LendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x9ddbae6cd2996f9d2a7a1aa044a26fd7c5c807f4`; avalanche `0x427c8b3de052ea4bbf0fb9c08b4f998fd4e071b7` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x16193d68daeac524b4eb6e0981d732fa00e54fc9`; ethereum `0x9f242a928f946a95a641671f7cc924789d0ad874`; ethereum `0xef74752d36e5f54b1a1f9f14e3c9845d74f38d49`; ethereum `0xf46f932453e183abac449c93a24dc542aa524996`; optimism `0x16e2e82c4ae824595a7ff3c800ddca748bb3e4d2`; optimism `0x20b7cd27079f37d382020937d525999c75b97f84`; optimism `0x2dee03524a04aac3cca030dacb40cb3a8e517a6b`; optimism `0x5122f5154df20e5f29df53e633ce1ac5b6623558`; optimism `0x6ca57c1ffba953a7c8bfba8380e08959bc691712`; optimism `0x761e200b06c87646c5918ec521426794d1d43c35`; optimism `0xdd233edba73e9f659ac69ec38cdc3a71ed7884f1`; optimism `0xf007426228945bf59e3eecf025323a877ea50964`; optimism `0xf761ac4e28f84b4166f342cd8110b567c4d13d01`; base `0x371d2b977e9f3b780ee0a032ae664edc5db234e1`; base `0x3addab0925bf311b6de8e5231a7d66052c7657fa`; base `0x8b51e596921f92bdbac1062dab94dd2df2836d9d`; base `0x92f4cf4067c1068cfa1622da14099640dc408f0b`; base `0x9c0fc730e14068a2fa4790525f85602188391d32`; base `0xdd9b03c5eb95531448b47cc8466f2b3822c735c3`; base `0xebeb86b5d9df1594bfa2d3d6c982b8e990a29708`; base `0xf6a044c3b2a3373ef2909e2474f3229f23279b5f`; avalanche `0xa8b2c8a0fc71dd889ea0be7fa3f6134c5cb77b57` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x87f18b377e625b62c708d5f6ea96ec193558efd0` | ⚠️ Unaudited |
| LoanConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005130b26f7b491e0a2adebfccb443789f7d2198` | ⚠️ Unaudited |
| LoanV2Native | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec`; base `0x71a28faed365f65ce924ce8810a14139f8476341`; base `0xe2addcb41d3a03a9761fb2110dcad99b6ff7e108`; base `0xf535d5e8e65c3959135ea0eb12bfe38c3a5caf27`; base `0xf755ece7eb7035c935d9de4b7b56bb4846f249c4` | ⚠️ Unaudited |
| MerkleClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00d59bc35174c3b250dd92a363495d38c8777a49` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab559850a251a6ebdba31076019ccf44165309d8` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xe7187f0d21e1039e8fd8346aa4f9a7c9f99975c4` | ⚠️ Unaudited |
| MigrationFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x38dbdb67bf12ac283630af7656ec3362ec191878`; avalanche `0x2d7182dea0b0f1a5167f0a21e6fd5bf537dec4da` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x3460dc71a8863710d1c907b8d9d5dbc053a4102d`; optimism `0x6dc9e1c04ee59ed3531d73a72256c0da46d10982`; base `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5`; avalanche `0xd23f124bbbc958bcddc0ce624042b48154222fde` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3265d621c7d993151c8eb2acd4902cda0499a8a0` | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49128053ae71470a6670895bb932ce19384f3e96` | ⚠️ Unaudited |
| MummyFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69fc8b02a6e80b554ec8a2223ad331f22c16ab61` | ⚠️ Unaudited |
| NFTDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4694123cbe1d3d1f72ccc4d68122ddfb5a519e13`; avalanche `0xf91d96f66e0fc9ee9f0182803b9c546b82ec3485` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xbb5dfe1380333cee4c2eebd7202c80de2256adf4` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3fed017ec0f5517cdf2e8a9a4156c64d74252146`; avalanche `0xbf5b19925b9bc2d3966b4193544a8644ff9b9d70`; avalanche `0xfd1c727d8a2259493c66899f478ebfea41329545` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f17db548544a19162e82b20c67abee99960a89a` | ⚠️ Unaudited |
| P33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x26e9dbe75aed331e41272bece932ff1b48926ca9`; avalanche `0x640d2ef09d550f4c79bf897412876d7b4a8867e6`; avalanche `0xcda4195a11a9497114dea8360f8bf8ff8122ca80`; avalanche `0xd8ee2b6b71949ebcdd33e50546b163cf8e4d4bd8` | ⚠️ Unaudited |
| PairBootstrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xa053ca9c51524d67e5e435c62031ad2031e09a22`; avalanche `0xa589c80e228df3671c4fa3d02cdf000e05b2bd8d` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25cbddb98b35ab1ff77413456b31ec81a6b6b746` | ⚠️ Unaudited |
| PairGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34098b39ec2e2c1a8f815bb8fa840d0d389afe1c` | ⚠️ Unaudited |
| PermissionsRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x751b7152aa11e39216cd00c0f65311efdf1a65ff` | ⚠️ Unaudited |
| Pharaoh | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13a466998ce03db73abc2d4df3bbd845ed1f28e7` | ⚠️ Unaudited |
| PharaohLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x094f0fd0175cb751b2b1c2d9f4f013e1cf01b598`; avalanche `0xa9ad26a26a07295db1310e7a35d513f6c2da14b0`; avalanche `0xc9651a35369428b678bc55eee50f07ebacc088da`; avalanche `0xf4172a5aeaf5dafa21b63f763f6b69a61d5dc563` | ⚠️ Unaudited |
| PharaohLoanV2Native | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x54c269cf9712ab099ae1668b031f719156206ad9`; avalanche `0xd3e726b681c9a1e2a620cef9fe0ece49822b11d4` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xecbbc09d3f52a2133bed0304ed0dcdf4b67863d3`; avalanche `0xefc098ca1bba02104590cda910f7f9d494bde662` | ⚠️ Unaudited |
| PortfolioAccountConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400c710cbeadc5bb8b7132b3061fa1b6d6f80dd8` | ⚠️ Unaudited |
| PortfolioFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52d43c377e498980135c8f2e858f120a18ea96c2` | ⚠️ Unaudited |
| PortfolioFactoryConfig | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cbf7604dd5b7cd4873917a5a5d06c6b2fd9c61b` | ⚠️ Unaudited |
| PortfolioManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x40ac2e40acb7bdd6ec83e468143262fe216529ec`; base `0x40ac2e40acb7bdd6ec83e468143262fe216529ec`; avalanche `0x40ac2e40acb7bdd6ec83e468143262fe216529ec` | ⚠️ Unaudited |
| PortfolioMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4a4ffbb55123837544f3bb13f0da2e9189b95826`; ethereum `0xb71d66583a420cbc77641759c1a6e6f3fb68ceb2` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd763061cc3015642ca104496107bc69944c74bed` | ⚠️ Unaudited |
| Quoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7a88c46740fdfe446dd6ad97cc0a94716848d214`; avalanche `0xadae75447d112cfc401c952744de3e6d32456465` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x3e182bcf14be6142b9217847ec1112e3c39eb689`; avalanche `0xb7297301b7cc659bb96d51754643a0df6eea2138` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x00409b267f4573f601cbcdf3b9f0b27a263a4eea`; avalanche `0x906b9802271e3752e6d6e6f5813430c71881dfdb`; avalanche `0x9e89a0c489eea24db63749b14c8421d433727e01`; avalanche `0xa47aa2f246f62e2bdcb674bec699e8218f466de0`; avalanche `0xaf9440faeab0026dc00f1461be1c8fbd11d4c011`; avalanche `0xd57ec4a690dfd7ca1b6295aa726f6f00acd057e6`; avalanche `0xec8962784e464e32ed6a97c59850fe36bf5fdc81`; avalanche `0xf2593b9efc323e19551eb69e9b76b6e5c05984b1` | ⚠️ Unaudited |
| RamsesV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae6e5c62328ade73ceefd42228528b70c8157d0d` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x0b4478e810d48b5882d4019d435a2f864bab4f39` | ⚠️ Unaudited |
| RedeemCommunityShares | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7ac9d050926e1add934eaea2b9cb0fcb923f7f52`; optimism `0x9fd29c7ad6f086df34cc71abb3954bcb00255447` | ⚠️ Unaudited |
| RewardsConfigFacet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x14b58f61042293aafcfbc051721c21e41306ddef`; ethereum `0x21732fda63218356bf5fd1f078fe8f5ec308f284`; ethereum `0x497bebd4270eaae9c0db680e925890fbd9f42ee0`; ethereum `0x583e50a8b41cc159b57b66503083523cd83af590`; ethereum `0x64bde9e66e2e388667f13057057a8e08c722f808`; ethereum `0x842d8fc945441c0b555658c7d7a6e4d117bb9876`; ethereum `0x9864fcadd0d6b1ba165204622c9962973c156236`; ethereum `0xe2a27a8a9580425426570eb31e0e8d2d824dd053`; ethereum `0xf625d255d0ef9dc0f1d221902d00f59c3a736552`; avalanche `0x2271e0e4231d3dc2b6417327d91e3b59f4da9cdd` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0x5d5bea9f0fc13d967511668a60a3369fd53f784f`; optimism `0x9d4736ec60715e71afe72973f7885dcbc21ea99b`; base `0x227f65131a261548b057215bb1d5ab2997964c7d`; avalanche `0x7c7bd86baf240db3dbcc3f7a22b35c5baa83ba28` | ⚠️ Unaudited |
| RewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d5a42a6444e9f08c5e424e80bc43b9b7bccd8c` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858`; optimism `0xa132dab612db5cb9fc9ac426a0cc215a3423f9c9`; base `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43`; avalanche `0x9cee04bdce127da7e448a333f006defb3d5e38cc` | ⚠️ Unaudited |
| RouterHelperZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd68b9cf89ffc4432977bdb3f9e2c02148d9636e1` | ⚠️ Unaudited |
| RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x04e1dee021cd12bba022a72806441b43d8212fec`; avalanche `0x9eed160d7d8253dec1a2a512e504de5e7ff3c111` | ⚠️ Unaudited |
| SecurityRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x275e246c0f2a76a5ba4b3e13198ef92381d82cb5`; avalanche `0xd2fe840c24e1e4b217909bd3f88fed6bf3537b02` | ⚠️ Unaudited |
| SinkManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae` | ⚠️ Unaudited |
| SwapConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3cb82154197582f8b725d9550600b99c8771b2` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x053e49f058851bb56469ebce4905b320fe19e3e9`; optimism `0x0fdf76d01cad134cbe654cd9a849c9aede876e70`; optimism `0x33f04ea4a819c6b93e18866cb35fc0138ca9451f`; optimism `0x3e366f2ec8ffc105d2680657d268c69a12bb3f17`; optimism `0x5ae73f00ddf2dda00a4813b12c40749510cfb142`; optimism `0xed29a16d8e65c350a9ff984c8668394899cb0913`; base `0x0638add2b856e0a6157f2bae3aa08c2923c83982`; avalanche `0x5ae73f00ddf2dda00a4813b12c40749510cfb142`; avalanche `0x5c7b76e545af04dcfbacac979c31fae454faa680` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x9daea9462ff3dd535643e07be587517a9790acc5`; avalanche `0xabfc48e8bed7b26762745f3139555f320119709d`; avalanche `0xc8b8fcbdb5c019d7802ffb0b39603395d7d3915c` | ⚠️ Unaudited |
| TickLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x3a7aeb3c33922073f4f23207d0ff247e9694a100`; avalanche `0xe66aae9cb5ab27ec6662c0ec9b9b28764d4a822e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xfe99e92df71f53a26005d1bfbe54c941a3131aa0` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: optimism `0xf132bdb9573867cd72f2585c338b923f973eb817`; avalanche `0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x84405466bd98fd2d16093e120268a416058f2a90`; optimism `0xb2607f2c8b4942bfcbad73f85df8323c57a348a8` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xc0485c4bafb594ae1457820fb6e5b67e8a04bcfd`; optimism `0xfaa5c886faa520188c316f0ab6b6eeb091454c54` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | ⚠️ Unaudited |
| Velo | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x3c8b650257cfb5f272f799f5e2b4e65093a11a05`; optimism `0x9560e827af36c94d2ac33a39bce1fe78631088db` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 30 deployments: optimism `0x053ae60117b2a90041e6872b18403ab102880c0b`; optimism `0x100451f9986161bd242b16381bd577f1c88a94fb`; optimism `0x16f5212410dc9c6353d72c964054d761d9064e3d`; optimism `0x3e8f202bce6858ff8c03bba979e0fe6a76c798ab`; optimism `0x4425dc7f14edb3eaa4e710bf5b6bac89da3f6e80`; optimism `0x44306faf4c61a23c3433939ca79e043f40841f3e`; optimism `0x56d6ab1c3622760216e606a4d1ac53d6548675dc`; optimism `0x5b0e7b84e83cee8c12553459e3d26bdcddc1cab1`; optimism `0x60301ff83dc9d73426451d257b1c6e355c0eb35b`; optimism `0x6c2eaabe511f0423501cba6343ed620105a4b63f`; optimism `0x72b7602c279038dbfc61fc0b3905e91273d62db9`; optimism `0x7af55307660d3e42088a8cae0e36fe6d001d00aa`; optimism `0x81116f71027a04e5a276c1bd94e3ecfd040e0706`; optimism `0x8f7486bd8f11536227e71f26a47041ab8be8265d`; optimism `0x9261c5a77f10fe036f7aa0b161372c838063bf14`; optimism `0x9e3311c65005ecd1acc34c6b146be2353c1284c2`; optimism `0x9f8380380a74f193168d8df1dd9e8bf4abb4eb85`; optimism `0x9fc66692e2ddbeae402b240963db2d1f58cd7193`; optimism `0xa747d25d69cb37a936079d9cafb1289861bbe604`; optimism `0xaba559a1077ac85e2dcd70ab4c53a0d0ab526c9d`; optimism `0xb287954dfc39872b86074906ecda07f40cbc5947`; optimism `0xc34ed82038a2fcb135c641f7a95cf27eb6e3ac6d`; optimism `0xc4c2e18b4f04fc6792677d839857cb7744775f72`; optimism `0xc8bf1a7eb6476bd2748f68627583877db6e182b8`; optimism `0xcc5cc6a3eaea292fbc13a526cb1fc561dae39b75`; optimism `0xd00de845c25ac81bc457ad6e635255bba8b56f8e`; optimism `0xd2f7bcce082646939c47c25fcf5f086414fe2e1e`; optimism `0xe685f049e472d58568e88c04e7d1e66d77713118`; optimism `0xf6a044c3b2a3373ef2909e2474f3229f23279b5f`; optimism `0xfdb2620738168e45233ad16d62cf024ae0bc7489` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x08c1375266b77841621b20586ef159b6e1d81873`; optimism `0x1ed73446bc4ca94002a549cf553e4ab2f2722b42` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x26ecad2dcb7fc8431db5dace522ba972c2ca3f2a`; optimism `0xf18fcd877cf7586e1e567dde99e57ba7ad5f4a68` | ⚠️ Unaudited |
| VeloLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x972b1ac00dfb287f244205b379f4565ab286ed3a`; optimism `0xf132bd888897254521d13e2c401e109caaba06a7` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x2421cfd0b6f92418b64e7edb30d22734cf8c86dc`; optimism `0xc506fe82ea5d27b7efe5a5f757a8b729f3477181`; optimism `0xfa6e2238264b9da942e578e8fc7274136bd84c40` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7d4ffaf369e92b4a6b696eb7bae7345f290dfe59`; optimism `0xf8e3120fd9957200b84913f746b4cb66b9a8a612` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x8c0ae206a52d3fdde6d43ea5b5cbbbe00e1c0315`; optimism `0xbfb12bac6bd6ce8c1006542152c2bbbe0bf1e54b` | ⚠️ Unaudited |
| VeloLoanNative | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xa48b8dd90f8c3763175e9f8d2171e0528582e4b2`; optimism `0xf4172a5aeaf5dafa21b63f763f6b69a61d5dc563` | ⚠️ Unaudited |
| veNFTAPI | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3629c89ed9cb172a3fba66dfdf8c06a85b35de9` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34f233f868cdb42446a18562710ee705d66f846b` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x09236cff45047dbee6b921e00704bed6d6b8cf7e`; optimism `0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c`; base `0x16613524e02ad97edfef371bc883f2f5d6c480a5`; avalanche `0x31a8a3f4ca7b74b098d48a47aaa3f03a49925d35`; avalanche `0x677e397d76cc2135bd15f1821b8cbd9aa7ab35f2`; avalanche `0x9334f3ce4569e04437665daa254e0189d145af21`; avalanche `0xaf6c9abbeebc6f78bc77bd65fbc624da10af4019`; avalanche `0xe59b0f65e11e5615579f290a11c7e3b3b312d82a` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x9c7305eb78a432ced5c4d14cac27e8ed569a2e26`; optimism `0xfaf8fd17d9840595845582fcb047df13f006787d`; base `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4`; avalanche `0xeac562811cc6abdbb2c9ee88719eca4ee79ad763` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f` | ⚠️ Unaudited |
| VotingEscrowSplitHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d67c7729135583f2ee11fd34c7921a8ae500e6f` | ⚠️ Unaudited |
| VotingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1eaf3ca8063292f4098e7fe761b864a176de23e5`; ethereum `0x34ea0bf8c7ba61540ba3f1df0be8ab82d81cf0f3`; ethereum `0x7219242292b467a9c256420981f5eff2acae6841`; ethereum `0x7a4e22ce127a228457f3d00653ac5a74e29e9c6c`; ethereum `0x7e1d833a4f11d63b49bb2f769cf5527d64846c3a`; ethereum `0xa043e9d6f593fc746d55cc8ab4a15363c9b8359c`; ethereum `0xf92899ddc18325fc25e25a7087fcb17f1d4fc59d`; avalanche `0x2c34c800f4bcad6b733fe08d837abb8c61486b8b` | ⚠️ Unaudited |
| WalletFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8bc6e85f8b5b0011e5e929ebe85151f9e0d4ee26`; ethereum `0xf010772d03cbfa1fd663c0c947d4e9d5f47ff6a4` | ⚠️ Unaudited |
| XPhar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8164ea89665dab7a553e667f81f30cfda736b9a` | ⚠️ Unaudited |
| XPharaohFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x150c52c1e8707c2e4372974e352bbf20bafaf08d`; avalanche `0x63f44fbd19caeb8e4b86078272228c9504499a1c`; avalanche `0x6cdf7c1afaf943daee52b214506c3a2422cee747`; avalanche `0x79be5a8e29b586c7a9aeeeda3ac7183f0932e6d2`; avalanche `0x8a180086d7be2cd51a102461043b29267e7a3941`; avalanche `0xef74752d36e5f54b1a1f9f14e3c9845d74f38d49` | ⚠️ Unaudited |
| XPharaohLegacyClaimFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e92345305cf7791a8af02d80a1af16d4b44b8b3` | ⚠️ Unaudited |
| XPharaohLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 13 deployments: avalanche `0x0a5261faf3a3d717b7d8f6e7f80654a2de8d89e0`; avalanche `0x16193d68daeac524b4eb6e0981d732fa00e54fc9`; avalanche `0x20fbab74a0da4ead66a988b4a7013f2b06b2ceef`; avalanche `0x5b60c84fd034b6c9040456a93ddb44f23aa9f099`; avalanche `0x5ce0a3e1c1e306595c68e22f7d140eeaa818ea8e`; avalanche `0x6f61a2c910192574cc791136e5f19f6e7b74947a`; avalanche `0x94bc4862ecf60138b781e98ab28c3ad3e25abb86`; avalanche `0xa1fa4530999bcad5347fa687390acaefa87f0947`; avalanche `0xacdf0686999bc7fa57776d8c93153dc2dd3bcb9b`; avalanche `0xbfb7eacc2fbbc9d4d7e54f1afcefae6e35283d7e`; avalanche `0xc7d6b83e330b131fa8b9265d933eb0b755ea16ce`; avalanche `0xcfeda4f6db023b18c370646f686f99697948a253`; avalanche `0xdd1427afb8479ed6eed025638bf0c4d95bac522c` | ⚠️ Unaudited |
| YieldBasisFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3501bf4b2640474d93a4321c4b9302ab6834035d`; ethereum `0x62801138b261e67000f6d9bb0719238707c88d6e`; ethereum `0x79b756f3580137dc92199dd49796836dd1bafb08`; ethereum `0x94bc4862ecf60138b781e98ab28c3ad3e25abb86`; ethereum `0xc6ef62158494f7a41b2873b0a500da972b7caff4`; ethereum `0xc996392bac47351934de07bf14277e0c44ceab16` | ⚠️ Unaudited |
| YieldBasisLegacyMigrationFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf8e2629f9fcd6f202e39baeeff3b3418b56f167` | ⚠️ Unaudited |
| YieldBasisLpClaimingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0b5a252fc951a6bc59ee3670571b64be580ad298`; ethereum `0x2d70fd03eeea2dcbe1bba0cc889bea62cf48e4b1`; ethereum `0x3779e4e7d7e384f9676f9c2228ede5198cdca87f`; ethereum `0xbef11e23968d9d63a95b723eb0a1149532ef2a4d`; ethereum `0xf64893518633689c97f10d6cf2d9cf49e900e1aa` | ⚠️ Unaudited |
| YieldBasisLpFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x12ae9b941da833325030f01f39c1d01a01611e67`; ethereum `0x3c30ccfd3b4c81458852b3ed2d159470b9ee3d08`; ethereum `0x57f8e979eec50902bfafda050a52d0cb45ffb5a3`; ethereum `0x595913bf887a9346f0db3ae1baff4f3b61425b46`; ethereum `0x91cf64bf98fd4371114984394a1f14cbe1e8a891`; ethereum `0xb3fb3ad3406503893457620fd8a2143237957eb5`; ethereum `0xc5da07e2392fd681e831438760d9d34c9587b95f` | ⚠️ Unaudited |
| YieldBasisLpLendingFacet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6296d24e5a175cd9b7b18026822a709bc5dadf` | ⚠️ Unaudited |
| YieldBasisLpRewardsProcessingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3f64f216e72cfa881bdb9848765594abc2d0281f`; ethereum `0x63edac47db7bc42b74ec6dbafbbdacf0996e9279`; ethereum `0x746815e9839b4ee5544125edae757d73bb139081`; ethereum `0x9e67dbb856b4b5e56d404e819da7829269587d02`; ethereum `0xb676b7d190a7e142212dd48341ba225c8341cd42` | ⚠️ Unaudited |
| YieldBasisVotingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4057b08ce8665a1c9482aefd0e1ccb8b2c29582b`; ethereum `0x6243e6b69118d75cac781e806aef4b21c5890cc1`; ethereum `0x87b8d35897bf2d75dc09be7aabe2e3520d066140`; ethereum `0x98779df684a0722450facec74b4d228fcf33ab4e`; ethereum `0xb5b86574af988b89dc74002b9bb1187c87d659f4`; ethereum `0xddb402b37052fd2f024df2f5ddd23ba1b3b90555`; ethereum `0xe108ffa9c400beda06d5443b2dd448bdbaee838c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (404)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x124d00b1ce4453ffc5a5f65ce83af13a7709bac7`; avalanche `0x6243e6b69118d75cac781e806aef4b21c5890cc1` | ❓ Unverified |
| PharaohLoanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd164434922dac6ff8a1e607a8477834edc42e0c6`; avalanche `0xf6a044c3b2a3373ef2909e2474f3229f23279b5f` | ❓ Unverified |
| Proxy (impl: 0x65b80810a0d229e01adf7f38a1d67f3fd3baf8f8) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x60301ff83dc9d73426451d257b1c6e355c0eb35b`; avalanche `0x65b80810a0d229e01adf7f38a1d67f3fd3baf8f8` | ❓ Unverified |
| Proxy (impl: 0x9f1f6f4cd000e137ab6d79d066e0bf508794d32b) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6c2eaabe511f0423501cba6343ed620105a4b63f`; avalanche `0x9f1f6f4cd000e137ab6d79d066e0bf508794d32b` | ❓ Unverified |
| Proxy (impl: 0xb78ea551315053876e9155fdceb8d22f1a160337) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xad2fc8aad0db6a91ffa1a2c50e9a1dbf2ab8c9cb`; avalanche `0xb78ea551315053876e9155fdceb8d22f1a160337` | ❓ Unverified |
| Proxy (impl: 0xba0a8519e08cfe85eaa3e879d6ee5f460076c386) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x723ae12117d4c6818050719e435b914438b99a02`; avalanche `0xba0a8519e08cfe85eaa3e879d6ee5f460076c386` | ❓ Unverified |
| Proxy (impl: 0xc99eb17309d7c6bdd96373db1e42412e0e1d44a1) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xbed7c02887efd6b5eb9a547ac1a4d5e582791647`; avalanche `0xc99eb17309d7c6bdd96373db1e42412e0e1d44a1` | ❓ Unverified |
| Proxy (impl: 0xd0a246f9fa9de9dc0f6f54523e8c9b938ea8316b) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7af55307660d3e42088a8cae0e36fe6d001d00aa`; avalanche `0xd0a246f9fa9de9dc0f6f54523e8c9b938ea8316b` | ❓ Unverified |
| Proxy (impl: 0xe02398ba3c10fe9625b576bf58ba8823f0609cce) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5523f111c778a128e4f5b8e76df6c0e20a2bf7b5`; avalanche `0xe02398ba3c10fe9625b576bf58ba8823f0609cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a706da965aa22bb575bd828d5fd39552f48b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01e9e8e684dd9b158fe772405f7b013f792e9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054ca4d18f05d6fde7340d457c893f51dd2526a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0715f175c2bc67a4b6b8f119111524559d46974b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082efb4995595c1e43b784e88ea5942d265609dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5261faf3a3d717b7d8f6e7f80654a2de8d89e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa0e48cabddc4178b72f3082127e0f71b19ac9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c9e1eb5ede341a65784afe4bd4065701af00717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec20bd81b95334c9956e3eccaa04c103ebbf384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105c64b9c965516b01c933560df259ec5c211320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11dee1a5c38d82422bf206a2085ce0e914122ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121650c31ce82b13efb454cceb1255e7aba40aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x148d1cc1244b15d3116b9e30535535ee5ce8d27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17cd3c65daf5b2f806d053d948ad7d59191fd397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3381e3e3a84dd1fdecf574afddb208bacf534c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bdd3dfdfaff014a8c7ff16b55eb7302c0f9e8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d7ce30e1340bbcef7be4cc8a3e0b0c52e080ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fd7667c14dc1053fe00d3034270c58aa8a2c8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204bee4cfdaa7b318333bca8f5612c8164f74ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24914636dab84236cb7d4394cd25d15ec6e3bd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2563ea92417ab6fb2cf410fc7d7947dc3878fca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264085998bae63d504fa5a09903c8a7d4f06bb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c34c800f4bcad6b733fe08d837abb8c61486b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d31fa05715b58b74238e83608bc57f19a6bb111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e92345305cf7791a8af02d80a1af16d4b44b8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d18bc2497f240bc5ea97861d86f9846277bfab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323354dc3222480726ea4770eefbf0532a63a746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ccc636d01d8ffdc1b0d15ad367499996d37a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3646c436f18f0e2e38e10d1a147f901a96bd4390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3938f063e3c8699eeb7d847915df093ea304a0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5b18beabd5094d31881c78cf00263f13f16daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d93767b2cfb7cb581458b1dc9e1e2aaeb96cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d43b815ee5b81fb8aa7a31ceabac591f8cb8e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bbe7c53248b3c41c4681d14151ec44191f682c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ecc8b383b6b6f4408c792659c8c12c9193ba7a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c767c8b83f006e0425373ff516bf457392d677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-119377 | `0x5122f5154df20e5f29df53e633ce1ac5b6623558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d43c377e498980135c8f2e858f120a18ea96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f394ebc8aa2b71f431dc90f7675b7360465464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9317370a842e24c0188781a5649141b2376e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c0709e1c410fa3d902300e0c81f096782c77e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c7b76e545af04dcfbacac979c31fae454faa680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x643001d0979e380ac2d6ef43eccd60c113917df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aa88750a3d4cd3cde2656c9adb17f28078f1087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf2fe80d245b06f6900848ec52544fbde6c8d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cacba9239c3ddc631832eb0569bebed1ddd4e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7640fad39aacc4756ef791405076b53c74d5ef5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794207a957ce811538e1e0b1bbf50d87ac9f149a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f04f21bafe2322212a250dcf5329c90e87bc4dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f072c53c8214f163626e5f804115f83ab0dd086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80951b62958b3e7f4a6f1aa01d9d0326235ec037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8165d326be1e38a26fabe7189b2d7d0e63d9b567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826b8e030b8989cdb354ace6fd6993e26a13b6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842a5720adb4b711110846a4c34282dbea2fcfa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8706fd061241266959e6a6e9e084f34935087012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a66bc8f873c541043347fc9d712f8d4a0c6730e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d104e49cd7748edaec3c1226311161abbfa1a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3e0cb6b31bf13da5f2b3989f3044f36fc6fc99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d4bb0f16579d4c6352fbea9c045e84fd7ff934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991fe81458d0a5a7a4cf440f6f2c810ca7cf9472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4c3202d6518dadbc6a7b973646c22a24a06d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dbe46d4972028b868fdc285471da248b1658785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4bb092f2049e8ef7bbf1a3cdd7dadd27b5b77e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60d8a85042539dd07290a5406db534f26f18089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8b2c8a0fc71dd889ea0be7fa3f6134c5cb77b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ad26a26a07295db1310e7a35d513f6c2da14b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc23ef4fb18552d6f051587184fe444d770bed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac0de1e57972ec0987306125c6eed399b4c49364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2f38af7dbdb765774e6944283be8f4309e62c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb05e6fe11896b8a341090b35c511092317b7e47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14e0a3f01d6c4472b82cf3abbebd422f9194770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24a2578bd94cefc72fae3ef3abbf6de1cdea72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb482382aadb1551ddacb899b6168713b00fd7cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb543dbe91be1d34b5cee98e8a4366da7b999e4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6e5f4b1c25401d5e77397147aa1729a3713d9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7452712ae4fadcd3886e558e70f85b0c16c0570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae0940b4cd1fd88af4cd68058f616d203d5348f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb0b59f38dbec732458b7c00248f66840454ccd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe69bf518435edc97b419ea046056ae03197f279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef435fd9aae281747a84dffdd49de0066a38e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfeb3404337798e7151202e2221a731c54721c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7d6b83e330b131fa8b9265d933eb0b755ea16ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85da884f71dc0b93bf14390f4272a0cd067b208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9651a35369428b678bc55eee50f07ebacc088da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa4a36b5179672719256df77e0943146c548193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4c9da1921e082c6a5eabdf9e4fdd7347a17f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a0a1f7f1e84fad3c4f9e435c75c24f15f9cb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd458b1af1b30f450f494089a738fe2e44c0d27c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ed854948950ea7c155a5c38bab7345a6f5dec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd504da3ae86aa3233871dbc8ae3eb38824138f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5f0dfeb2f10559352cc5ca11b3e54ab08505eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6516f52e90694ec7954f798c4b445f3424b4205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89b3a48c3f9d2913d60016067f6afca43b3b352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb9a6288544de8c35638d7cd93a7073a125ce46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebee5c3dfa953dbb1a48819dff3cc9c12226e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe75c1d647b84f779b02c6cf08b2c8031bb6c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe125f023734f07f83327395da383e1982a2e12b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1caf530b448338c8586f3b31c060a45c27e5159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe295126e52999d2a4434d3eb5ea2b838822598c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8951cb7f0bb1602a5f509dcbcf8e838308029d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb7eaf88c73899adb4a1dd4ff5d835ea93c7b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed3217ae99f6712a00681710f3851c07ca50b228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb423a61b5cee77193bc0a3dbcd256489d03db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0bd3142bdfe8458f41d3513fb91eedc9af1c661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3707532ac9ecca8d74d2a135bb2806a0b6562b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4db820dc6fab79699735e6d58664578d1d7cd3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf778b5dd4f9e7711e12833bbc8126772719dd0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfab5e5bb824a6d6b109d0086aa0ed0617a0ea96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x157dc2508531c9d1e105c11dac9a0fe642368552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4a039e4978eda465a47e24563939b60e9ba8bd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5669b39db00cbe4cd7a8f5109417c3a9e31b7ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f2f6721ca0c5ac522bc875fa3f09bf693dcfa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64dd805aa894dc001f8505e000c7535179d96c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7955519e14fdf498e28831f4cc06af4b8e3086a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x846e822e9a00669dcc647079d7d625d2cd25a951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-119378 | `0x8ac5aa057da4c86f3896cfd851cbcdfc19a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa84ea94aa705f7d009cddf2a60f65c0d446b748e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbcba2dca8aa187b4918b8374211d507aadf2045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5be2c918eb04b091962fdf095a217a55cfa42c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3c5e29ea198e617ebc707718707beff9393fa51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x030ad5f8a436ac243e8682c8d036cd82bf5a9fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0434133f15fa2b2f142565a0d992a7ed4ef62b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x053ae60117b2a90041e6872b18403ab102880c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05f018a431a9e1e693504e322c5c9ffe9d325b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08dcdbf7bade91ccd42cb2a4ea8e5d199d285957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b4a35ffe50d55cb00bb81f0f5ae61353e6f4c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x100451f9986161bd242b16381bd577f1c88a94fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12a31b6bbf8781ab70b46a4fa0afe27f992fc92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x142ce7ff652d956354790da9b7feffb2acfc9717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18c2abb47f4d5ea9bffd771ad9a15f21c3e6fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c0527b9a9de75a5e91be418f6c18f611b9b1af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dc76341ca156e376736ddba042aba071bd3b858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x201e6f5a7142fd744d1f51f19209f2409d5ca51d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20a27e9119c7af8f059b5853fb63d62a9e884498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20b7cd27079f37d382020937d525999c75b97f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21b48fa22f69ece450a687abbf32a82fe0f3c35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21fd4175f64d2a646205a2e0644c84b9e3946bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23ca235c86970263b1439d413a86549b3e4c1d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25244fe81803c8135dfd37ee5540b2a39c2b9553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26ecad2dcb7fc8431db5dace522ba972c2ca3f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28fe58c4646d6dcc6f694501e81cb1b21ab4d92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37eb657b66f1c2b381702ebbcf322c646e5f44fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c7645944bbcf1ec21cc4a2c0938910441349a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4425dc7f14edb3eaa4e710bf5b6bac89da3f6e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x457fea800f74b26f6bc6d23f218e3bf5aa765b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x478805a5c19a662cfc68127455b024433358d421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c8c3f184507d1f836c37cb8705b84766b3d4f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51e5a0c13b6e6ac02bd0a27d5d540fe9cdd89fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53bfd2835db84018fb2021146c790f049dfb1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5523f111c778a128e4f5b8e76df6c0e20a2bf7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56e0e3cfbcf646ebff21344a5d821e8c3dcf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c01161e65936a2d7183263e9eb599494e50a9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63a99309c5719bd96cacd878f912c8b7ed59566e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69e6797118fe7ca98a94171b847259012a7c6972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bd652f20be923fffa0888c72ae7cb55515bafe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x723ae12117d4c6818050719e435b914438b99a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74651420e5023aea77a4d2ab211c0cb975c63913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x761e200b06c87646c5918ec521426794d1d43c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x776ec8a2b2e9b7470631e30c5b6ab4a248585b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x780cc3f885ceaac8924777dbf94c43a0cbc7c2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81116f71027a04e5a276c1bd94e3ecfd040e0706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83ac60558c4877d4679e1eabbedc325e6ab57e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x849ac221f6de828cb92a08fec2e6ab3b626b306a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ac5aa057da4c86f3896cfd851cbcdfc19a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fbe841925aefaa7705d4d84cf4e116977d73821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90af8701553545df3d78a8a51e24810371daf390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c58aab553b8edda79e7601aadc252df3cf56971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e3311c65005ecd1acc34c6b146be2353c1284c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f1f6f4cd000e137ab6d79d066e0bf508794d32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fc66692e2ddbeae402b240963db2d1f58cd7193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa217ca857a1b6980c80116421fb3cd98ec7f1e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8deab7e22622c4d20307171e80278718c1c2046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad4edc0f27ce49bdc5b69fdcd7b29a2a59bd37ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf20d7f2ff3852b36b164bed95e290497998714a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7c3ac496ab2e2e4f7becd599f8743177b1b019e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb88dcffe39af3f1df6d179a1517db6b84a4509c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba0a8519e08cfe85eaa3e879d6ee5f460076c386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2425bc461d6755a1d0658eff70b472acc092fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc34ed82038a2fcb135c641f7a95cf27eb6e3ac6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4c2e18b4f04fc6792677d839857cb7744775f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc99eb17309d7c6bdd96373db1e42412e0e1d44a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc5cc6a3eaea292fbc13a526cb1fc561dae39b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6b7fc0d8f57f9779e4cc111587073a4f8436c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0a246f9fa9de9dc0f6f54523e8c9b938ea8316b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1cfbc177a1d7171f1dae7b3dbc850d8df0b5b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2f7bcce082646939c47c25fcf5f086414fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3e726b681c9a1e2a620cef9fe0ece49822b11d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5ea7dd272449656bbfab120d8e69c026fb82c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8ac9df18371d179699533576fcfa913035835f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe02398ba3c10fe9625b576bf58ba8823f0609cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2493c811841628554de49fc48a3b63db54ffdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe31ed435d6cfaa9e1b9f016b7c093bca88361dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe685f049e472d58568e88c04e7d1e66d77713118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec0af979b3a3d8e2f5f16cf596748991588be22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeda1e6578f7cca28a36e5b50d71f2f154b93c061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeec8f87e205fc7d7d1c83431bda269b1c03b8a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf132bd888897254521d13e2c401e109caaba06a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf18fcd877cf7586e1e567dde99e57ba7ad5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4c17e43726d96bb2cbf2c62eb3af7b0ecb0dd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf761ac4e28f84b4166f342cd8110b567c4d13d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb505369d01b216004b930e23367f3c6c895fbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdb2620738168e45233ad16d62cf024ae0bc7489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x019070694578f072556778ed0313f3e90222e1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01e9e8e684dd9b158fe772405f7b013f792e9a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x02db23119e205426d67893e4fad3321e76af1cfd`; avalanche `0x4a039e4978eda465a47e24563939b60e9ba8bd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x031a975187111afe6b9dc473cd317b00ed8cd262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x038cba84d1cdf5b0820fc6a1fae93f42240268bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04262dbe34764f36cf75ef98313ff97824dcc752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x054d962e0d930fba802f41ec60aa74d188dcd54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x065028dcf219d8622dd50231f188f2b315349aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x088703700f4fa35bf9eabc8cdbcead3678432779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0aff494476dc74cf7bb5dd005c2b1fe7be76efa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c7417eca1ac7c49234c91145b3522259d95b54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ce185fd999c20ffaa1c5ab51fc3aacef96ab41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0dea372e70350d9c298a3825f0249fe2dbad26f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e23a4eb753334e747cd164c8dea620e0306d0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x109309e885ee9023bd22e4f45a347640bb2a82aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1112f67a7098d80c35fcd139fa951496749dfec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14e4e36f70ff06dc874f0e827b174ced91e51cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15913efd471ef439b602564fe0d8e9069b2522bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16766b107b5716b2de18bbc8587b0ac7dc9c99ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17cd3c65daf5b2f806d053d948ad7d59191fd397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18bf868878fc0722a7400de93dcb791aba7d001f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19844c931406cc9bd237aa3e169310978a33f0b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a624ba3f3928b38990d9cc862ae5fb54ac66297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6ed8d4754ed5a3b9c9e65e94fc5824ebd89d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bdd3dfdfaff014a8c7ff16b55eb7302c0f9e8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20cbeb09cbdeeda0cbc41eb7884f151ec900cdd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2155f306d2806d745427a3e04721e8cf6f8327dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21760a0269c99a711269b60df59d9a35dc2d66b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21dadc5df1dcd425f8a1d936b9b037aa75261a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23b216788e78c8a4755473b8b2ed7be7929a81e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x242ec332344d15fc99f07c5a855dc42127f20758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x263625c4dff7a2c7d64e141ed45189681a27c84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26dd96e6e181e292da662ac6a3fbe17c89473cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27ae8c52a41ec52a4150ba6321007ec41702c0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28fe58c4646d6dcc6f694501e81cb1b21ab4d92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29cd8852ff040cfe74fb20277a121ed1293afb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b17bfc65aa76df848ca621c2dc1a327ca73b6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ca45d9d2f6a020117c4961181a2fb335c3eac06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e694d02cf3da855b19ee31f5f61c0b8608256d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3176f6e4be2448c53edd59c27651edfaa74bf483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3388a57006e7e259d1a5e393c832cf5016f56196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34c19641b3a381a4e256273bed8fc4628e210981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3646c436f18f0e2e38e10d1a147f901a96bd4390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3755df8a937e9505af7b14d8b13e83f133ed11c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3760211121b776945b38584f440d724ea80ab3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c28fa57f8cd5751eb5dcd8d53c10651d7d96579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c3945a9537ea1536a28bac135eed6cfb1509051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d39212cbca54627c0fc4e27aa316d10c184ecd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f90e95e8f703b2ef143c5aa99b37fb159da61d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x400c710cbeadc5bb8b7132b3061fa1b6d6f80dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4057b08ce8665a1c9482aefd0e1ccb8b2c29582b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x428b740727f794a61e23b79fbedbd0f5539534ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x438aa2d498079a8ade27697610f67f5a7d49bf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43c4b7bd4c173992c6711c631859a2eac84bf8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44306faf4c61a23c3433939ca79e043f40841f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x469ab2ad1c9a295455948312df9aa8be7acbd534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48b1d49fb891bab3543db6e902cc54726a133ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cd13301c1b0555272be010bfbe8901a55e520f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x516ab0f04dd90ee755f5ea2533888b5333789f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51d22dc07fc719d9d3c13b129c0983386f284e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52a7ab3bc380ba2e06814e9005932728dd0a4e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52ae672484074893a3e60b91a5e983da08be8d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5363e33b444ccfd438204266d025a26c048f0f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53d569bc4b37adbbdb6ab447d92adf42514ae480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x553901e346fcadebfd15adffd2ba3c58ac6f9988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56e0e3cfbcf646ebff21344a5d821e8c3dcf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58318fd6adb8caea00727ee4f579d48e6c9631d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58b05074d52d1a84d8ffdadda3c1b652e8c56994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59aa177312ff6bdf39c8af6f46dae217bf76cbf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b0f5acde0a779856d6885a67253529c235929e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b2c919000c6e368307904d50ccc66c98bc517bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d433a94a4a2aa8f9aa34d8d15692dc2e9960584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d99162eb56d9cc8426ca65ef597a51497968293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ef3876ca93b93c9bcfd637783ed99412b1eff43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fbdf3b3202a0858da1307d9d3c074593c9b60c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x631c0eae26937c0beae293b3be4518e51288b41b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x638dc97eeb46bdaa506113ae6f11b2cc92a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x645ac03f2b268733263fd5d59ab73a26df6adaf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x646fffa2d907c24abea32a75047dd106904848a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6499d25b850fa00da2fa33d9ef036b33b4be40d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65b8ba2672ac8b8ac0f90c6c7cc3a368ed352d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65e36a992e49f7e6296850b62e7c00f1d8f8c485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x660862d49e92f80f29e56c2770027e8d83e97882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66c6650a106e82fc40824077fa501d6f28974091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b19153936b35eb5d035193463491ee902bfd9da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b6a3d5a1c536ace1d761685af241b2cb7a6ea5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bcce366cbd79b3ecac9a452f56d4c131e2b54a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bd81e7eafa4b21d5ad069b452ab4b8bb40c4525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bf2fe80d245b06f6900848ec52544fbde6c8d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c4acf40b81b15643ab58ac145a8b043497baf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6cab6577257523e1d609de76104764f042f993d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6cdc88fdd9695fce81c3d09471fed66d0e5f8c3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70fd0f23df8ff32ed3b26207735867ec3de39f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71775fee4867597c721ff9e8dd705cbad955325a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73aa9abc71473313abff7a712d6d4f5eb0e42619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73c4b095b0cb52cb02db918138324f8009e8cdbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75a1c49face1f899d510d99a07aaaa5052b5f690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79d6b846a1cd0ea3e0d817f227a974cc09fc2229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dbab3faa00c286cb65996535f2562a5ef2f4ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f257abb6880813a08f7dcba8c328b9e325edfc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81dd8a1b210ca1e97cd090725791ebbcab783d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x824dbc85b7609f294148b122a2cb826ab13f0296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83700b8809754f67f824532ee167ef7880d0b21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83ac60558c4877d4679e1eabbedc325e6ab57e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85448bf2f589ab1f56225df5167c63f57758f8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86cf4b676056aedfc8ffeba0cffd047f7b84428a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86eba1b766667b99dd4f9a40d01960e36cf753e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87f18b377e625b62c708d5f6ea96ec193558efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88a49cfcee0ed5b176073dde12186c4c922a9cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x89d3a5ec6948410dcd220b137cacaa17ccc5366d`; avalanche `0x9f41a8894e3d9bfb6a9667272983e69b443e72d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ba179fbbc41d36573097a6cc9924db7c3978fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ce534f3fcb4c0f4f8cf3ca06e744739f9f8830e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f6c94dc1ab34bb9586a0c15cfb7cb4d31c287c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x903ade4f53451270ee11649fd70682481dbb5a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91b8c8c51a11a7033c34257c3768035eff4f7736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x922b9ca8e2207bfb850b6ff647c054d4b58a2aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x943444ba1451678e951f1572e6246c66ac899bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97301276a873207d34ccdf0eb6584c8189d0dd44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98e3299de7edac19446ec3792afbd7211aafd615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9aebf5fa3ede9cd4a483759a69843cc4c81c2f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b0c4d5114f6a0373ca521e50b8c3da97b20b47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cc44526f59c12d3f675d307241d6ed97b50104f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d45e1acf9f164be11eeae206b459dd575ee0bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9de4f90ba6b5df998cf99bd911f84da392871685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e95ef7d8b87708641923c48c4eb298ed7ca6552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f52f2beec30f2ebc9bbeb105e68cfe73dd4d74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa46552eda2f84fe843a66bbe244515bbfa951c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa90bc0e1d28151206530daba53a5b8d28332cb7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9257e4a3e1af0c162fef2d41f9e7de4d5b5431b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9ba8b96d390478eb84164cc97f7e2340db34430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacc34ad51457930989fb5050c2dce6339f06479b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb43f10d54ce511d45e0bb8f1e896c6d7886166fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb603a73eb0e8713b87f957051d5128548bca37d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7c3ac496ab2e2e4f7becd599f8743177b1b019e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb888979122365cee81d274e4bb6c970ce42af336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8f679e2cb42965c99e72035184a7a9d6df98f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb94ad9ceb47318d6fb40bb47c570cf5ecc229aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb98c602d04ba75ccf2337c39156880f757006150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc02ff120750341b4d25f052820ae4d0e10f4a69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc046f2f09549e20039ca67496ebcf4f7a0221aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc200e687ae4da86fc4b649d9d145dde86ec60524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2b3bdbbfa04f4b32b125833d65998acb8951fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc35af3a31e354ce4b4396aeb478009540ad3f422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc45c207b10aed2a609ccd8c1d77d31fdd96af5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9384c77faa29183d2bc54d120c78ccbe92e7012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc997575204290ff7106ab8b2bcfa7e7dea43d783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca756ef397b8f039d04b4ff967f43417b723afde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcad684775d7879e63f5d319dacc8086eecc01b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf9fe8d3324a16194b426145ac4351c298846e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd00de845c25ac81bc457ad6e635255bba8b56f8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1447c4140b1f6ecae955813b779a2a59dbda08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd28467ede84cede6b05070779e39eaff4988548c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2f7bcce082646939c47c25fcf5f086414fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4862ab24285a55e077c31a1167a538125414369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5d3642f2c089b20671e172b38003247d5f4de90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5ea7dd272449656bbfab120d8e69c026fb82c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd62c869a90224cf30e9a2c059e5ee8dea13f01d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6b6618cbddfc8f33cc6ad44fb6557fa900049b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8d82cd3d82e4d739b1f5f30feaa2b9d8e107ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc469e32771df0a7ff3ba33ed1993a92f9a15c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdca25b5ff3a4be4b8c4bb9f45edc77bc0c3df21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcfccf2e8c4efbba9127b80eac76c5a122125d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde8ac9df18371d179699533576fcfa913035835f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0e637573494f12695e66c3024a9115bd97c9300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe168fcd8f27c22e1c5e9c7aa6cf78afed82f06c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe30d0c8532721551a51a9fec7fb233759964d9e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe46d245942dc01c5ea3e1dd05f3268ace867b5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe565310baa582c768a77a3bb7f86a892ef07d04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe57aec7c6657003ad82c1990da1a28b5ebc6b942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5be021d769b3d51655ea972e5d80ee942a17508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe63f0de1bde30e4bd75bcaace0d48ac66364ec12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe685f049e472d58568e88c04e7d1e66d77713118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe809b72e7b1e62cb2a38baf2f681887d054d2a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe93b6875d7bc4aab57b2473f2d974d0f8de5fc95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe946a9f39312e2346ba79dab865b0e9a74f2f981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe98aec7fe3648c104fac23a350926c17951cf0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea6f5924acd41817fd9a4f04b52d9e6cb303219b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec0af979b3a3d8e2f5f16cf596748991588be22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec909973d7a8da5ec010c380924462abca3033d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf007426228945bf59e3eecf025323a877ea50964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0274c793d16713338af4b8bf2bef64ba2485b99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf03ce48d5e8dedff1012dcd32a3352f7cc90a1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf18fcd877cf7586e1e567dde99e57ba7ad5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19a0fbade62210d6b67d63ec95fa0febd8bfb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1f46f919f8d9fe75070a96f31cb764ae2db9f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf31632c73b8775e45ce6d2539deb008cb766d51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf582b0357a877c0b363a4c2783641d0b3431cc6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7f32fe3af99005fb4839a735458321f8754112e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9221de143a0e57c324bf2a0f281e605e845d767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc508b2cbbe312be63cb981136cab4fabe864c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe842861b9f79bb77ccb6043731d433d63b365df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe926062fb99ca5653080d6c14fe945ad68c265c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff39c52b6649af0f73c8d3088344436a5e3b2fb6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 408
- Live contracts: 0
- Unknown liveness contracts: 408
- Source-verified contracts: 61
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=48, source verified unclassified=13, unverified unclassified=347

Showing first 200 of 408 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ERC1967Proxy<br>`0x1ed73446bc4ca94002a549cf553e4ab2f2722b42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0x555709f3d6b9e8b3129697a2d7fe965e5cb8433f` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0x7ac9d050926e1add934eaea2b9cb0fcb923f7f52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0x84405466bd98fd2d16093e120268a416058f2a90` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0x8c0ae206a52d3fdde6d43ea5b5cbbbe00e1c0315` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0xf18fcd877cf7586e1e567dde99e57ba7ad5f4a68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0xf4172a5aeaf5dafa21b63f763f6b69a61d5dc563` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0xf8e3120fd9957200b84913f746b4cb66b9a8a612` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | ERC1967Proxy<br>`0xfaa5c886faa520188c316f0ab6b6eeb091454c54` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | Loan<br>`0xdd233edba73e9f659ac69ec38cdc3a71ed7884f1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | Loan<br>`0xf007426228945bf59e3eecf025323a877ea50964` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | Loan<br>`0xf761ac4e28f84b4166f342cd8110b567c4d13d01` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x053ae60117b2a90041e6872b18403ab102880c0b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x08c1375266b77841621b20586ef159b6e1d81873` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x16f5212410dc9c6353d72c964054d761d9064e3d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x26ecad2dcb7fc8431db5dace522ba972c2ca3f2a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x3e8f202bce6858ff8c03bba979e0fe6a76c798ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x4425dc7f14edb3eaa4e710bf5b6bac89da3f6e80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x44306faf4c61a23c3433939ca79e043f40841f3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x56d6ab1c3622760216e606a4d1ac53d6548675dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x5b0e7b84e83cee8c12553459e3d26bdcddc1cab1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x60301ff83dc9d73426451d257b1c6e355c0eb35b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x6c2eaabe511f0423501cba6343ed620105a4b63f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x72b7602c279038dbfc61fc0b3905e91273d62db9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x7af55307660d3e42088a8cae0e36fe6d001d00aa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x81116f71027a04e5a276c1bd94e3ecfd040e0706` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x8f7486bd8f11536227e71f26a47041ab8be8265d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x9261c5a77f10fe036f7aa0b161372c838063bf14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x972b1ac00dfb287f244205b379f4565ab286ed3a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x9e3311c65005ecd1acc34c6b146be2353c1284c2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x9f8380380a74f193168d8df1dd9e8bf4abb4eb85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0x9fc66692e2ddbeae402b240963db2d1f58cd7193` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xa747d25d69cb37a936079d9cafb1289861bbe604` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xaba559a1077ac85e2dcd70ab4c53a0d0ab526c9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xb287954dfc39872b86074906ecda07f40cbc5947` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xc34ed82038a2fcb135c641f7a95cf27eb6e3ac6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xc4c2e18b4f04fc6792677d839857cb7744775f72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xc8bf1a7eb6476bd2748f68627583877db6e182b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xd00de845c25ac81bc457ad6e635255bba8b56f8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xd2f7bcce082646939c47c25fcf5f086414fe2e1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xe685f049e472d58568e88c04e7d1e66d77713118` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xf6a044c3b2a3373ef2909e2474f3229f23279b5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoan<br>`0xfdb2620738168e45233ad16d62cf024ae0bc7489` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoanNative<br>`0x7d4ffaf369e92b4a6b696eb7bae7345f290dfe59` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoanNative<br>`0xa48b8dd90f8c3763175e9f8d2171e0528582e4b2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | VeloLoanNative<br>`0xbfb12bac6bd6ce8c1006542152c2bbbe0bf1e54b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | BlackholeLoanV2<br>`0x693ab037675b056730576892c214015990440cdb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| candidate review | PharaohLoanV2Native<br>`0x54c269cf9712ab099ae1668b031f719156206ad9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | CommunityRewards<br>`0x5fbdf3b3202a0858da1307d9d3c074593c9b60c5` | non_address_book | unknown | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | CommunityRewards<br>`0xf1f46f919f8d9fe75070a96f31cb764ae2db9f94` | non_address_book | unknown | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | CommunityRewards<br>`0xf353d4d3a75e6930d5c8b598492646e374f008de` | non_address_book | unknown | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | RedeemCommunityShares<br>`0x9fd29c7ad6f086df34cc71abb3954bcb00255447` | non_address_book | unknown | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Swapper<br>`0x053e49f058851bb56469ebce4905b320fe19e3e9` | non_address_book | adapter | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Swapper<br>`0x33f04ea4a819c6b93e18866cb35fc0138ca9451f` | non_address_book | adapter | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Swapper<br>`0xed29a16d8e65c350a9ff984c8668394899cb0913` | non_address_book | adapter | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Vault<br>`0x1dbdbf3a9f58d3b831989f76e27b4a0f1d5dd46a` | non_address_book | core_logic | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Vault<br>`0x723ae12117d4c6818050719e435b914438b99a02` | non_address_book | core_logic | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Vault<br>`0x828322b871c351b3ee48c0864b614dd4f6283fe6` | non_address_book | core_logic | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Vault<br>`0xb2607f2c8b4942bfcbad73f85df8323c57a348a8` | non_address_book | core_logic | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Vault<br>`0xc0485c4bafb594ae1457820fb6e5b67e8a04bcfd` | non_address_book | core_logic | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| source verified unclassified | Vault<br>`0xf8e3120fd9957200b84913f746b4cb66b9a8a612` | non_address_book | core_logic | unknown | verified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x00a706da965aa22bb575bd828d5fd39552f48b07` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x01e9e8e684dd9b158fe772405f7b013f792e9a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x054ca4d18f05d6fde7340d457c893f51dd2526a6` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x0715f175c2bc67a4b6b8f119111524559d46974b` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x082efb4995595c1e43b784e88ea5942d265609dc` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x0a5261faf3a3d717b7d8f6e7f80654a2de8d89e0` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x0aa0e48cabddc4178b72f3082127e0f71b19ac9f` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x0c9e1eb5ede341a65784afe4bd4065701af00717` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x0ec20bd81b95334c9956e3eccaa04c103ebbf384` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x105c64b9c965516b01c933560df259ec5c211320` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x11dee1a5c38d82422bf206a2085ce0e914122ae3` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x121650c31ce82b13efb454cceb1255e7aba40aa4` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x148d1cc1244b15d3116b9e30535535ee5ce8d27c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x17cd3c65daf5b2f806d053d948ad7d59191fd397` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x1a3381e3e3a84dd1fdecf574afddb208bacf534c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x1bdd3dfdfaff014a8c7ff16b55eb7302c0f9e8d1` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x1d7ce30e1340bbcef7be4cc8a3e0b0c52e080ced` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x1fd7667c14dc1053fe00d3034270c58aa8a2c8f6` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x204bee4cfdaa7b318333bca8f5612c8164f74ba3` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x24914636dab84236cb7d4394cd25d15ec6e3bd50` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x2563ea92417ab6fb2cf410fc7d7947dc3878fca0` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x2c34c800f4bcad6b733fe08d837abb8c61486b8b` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x2d31fa05715b58b74238e83608bc57f19a6bb111` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x2e92345305cf7791a8af02d80a1af16d4b44b8b3` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x31d18bc2497f240bc5ea97861d86f9846277bfab` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x323354dc3222480726ea4770eefbf0532a63a746` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x32ccc636d01d8ffdc1b0d15ad367499996d37a92` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x3646c436f18f0e2e38e10d1a147f901a96bd4390` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x3938f063e3c8699eeb7d847915df093ea304a0f1` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x3e5b18beabd5094d31881c78cf00263f13f16daf` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x42d93767b2cfb7cb581458b1dc9e1e2aaeb96cb9` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x43d43b815ee5b81fb8aa7a31ceabac591f8cb8e6` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x4ecc8b383b6b6f4408c792659c8c12c9193ba7a9` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x50c767c8b83f006e0425373ff516bf457392d677` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x52d43c377e498980135c8f2e858f120a18ea96c2` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x5a9317370a842e24c0188781a5649141b2376e65` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x5c0709e1c410fa3d902300e0c81f096782c77e85` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x5c7b76e545af04dcfbacac979c31fae454faa680` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x643001d0979e380ac2d6ef43eccd60c113917df8` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x6aa88750a3d4cd3cde2656c9adb17f28078f1087` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x6bf2fe80d245b06f6900848ec52544fbde6c8d2c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x6cacba9239c3ddc631832eb0569bebed1ddd4e70` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x7640fad39aacc4756ef791405076b53c74d5ef5f` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x7f04f21bafe2322212a250dcf5329c90e87bc4dd` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x7f072c53c8214f163626e5f804115f83ab0dd086` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x80951b62958b3e7f4a6f1aa01d9d0326235ec037` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x8165d326be1e38a26fabe7189b2d7d0e63d9b567` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x826b8e030b8989cdb354ace6fd6993e26a13b6fb` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x842a5720adb4b711110846a4c34282dbea2fcfa6` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x8706fd061241266959e6a6e9e084f34935087012` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x8a66bc8f873c541043347fc9d712f8d4a0c6730e` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x8d104e49cd7748edaec3c1226311161abbfa1a03` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x8e3e0cb6b31bf13da5f2b3989f3044f36fc6fc99` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x91d4bb0f16579d4c6352fbea9c045e84fd7ff934` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x991fe81458d0a5a7a4cf440f6f2c810ca7cf9472` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x9c4c3202d6518dadbc6a7b973646c22a24a06d55` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x9dbe46d4972028b868fdc285471da248b1658785` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xa4bb092f2049e8ef7bbf1a3cdd7dadd27b5b77e4` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xa60d8a85042539dd07290a5406db534f26f18089` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xa8b2c8a0fc71dd889ea0be7fa3f6134c5cb77b57` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xa9ad26a26a07295db1310e7a35d513f6c2da14b0` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xabc23ef4fb18552d6f051587184fe444d770bed4` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xac0de1e57972ec0987306125c6eed399b4c49364` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xae2f38af7dbdb765774e6944283be8f4309e62c1` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xb05e6fe11896b8a341090b35c511092317b7e47d` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xb14e0a3f01d6c4472b82cf3abbebd422f9194770` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xb24a2578bd94cefc72fae3ef3abbf6de1cdea72c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xb482382aadb1551ddacb899b6168713b00fd7cb7` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xb543dbe91be1d34b5cee98e8a4366da7b999e4a1` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xb6e5f4b1c25401d5e77397147aa1729a3713d9fb` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xb7452712ae4fadcd3886e558e70f85b0c16c0570` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xbae0940b4cd1fd88af4cd68058f616d203d5348f` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xbb0b59f38dbec732458b7c00248f66840454ccd4` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xbe69bf518435edc97b419ea046056ae03197f279` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xbef435fd9aae281747a84dffdd49de0066a38e06` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xbfeb3404337798e7151202e2221a731c54721c55` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xc7d6b83e330b131fa8b9265d933eb0b755ea16ce` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xc85da884f71dc0b93bf14390f4272a0cd067b208` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xc9651a35369428b678bc55eee50f07ebacc088da` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xce4c9da1921e082c6a5eabdf9e4fdd7347a17f03` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xd0a0a1f7f1e84fad3c4f9e435c75c24f15f9cb4b` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xd458b1af1b30f450f494089a738fe2e44c0d27c7` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xd4ed854948950ea7c155a5c38bab7345a6f5dec1` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xd504da3ae86aa3233871dbc8ae3eb38824138f7c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xd5f0dfeb2f10559352cc5ca11b3e54ab08505eac` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xd6516f52e90694ec7954f798c4b445f3424b4205` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xd89b3a48c3f9d2913d60016067f6afca43b3b352` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xdb9a6288544de8c35638d7cd93a7073a125ce46a` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xdebee5c3dfa953dbb1a48819dff3cc9c12226e0c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xdfe75c1d647b84f779b02c6cf08b2c8031bb6c52` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xe125f023734f07f83327395da383e1982a2e12b0` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xe1caf530b448338c8586f3b31c060a45c27e5159` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xe295126e52999d2a4434d3eb5ea2b838822598c5` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xe8951cb7f0bb1602a5f509dcbcf8e838308029d1` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xecb7eaf88c73899adb4a1dd4ff5d835ea93c7b77` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xed3217ae99f6712a00681710f3851c07ca50b228` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xedb423a61b5cee77193bc0a3dbcd256489d03db8` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xf0bd3142bdfe8458f41d3513fb91eedc9af1c661` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xf3707532ac9ecca8d74d2a135bb2806a0b6562b0` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xf4db820dc6fab79699735e6d58664578d1d7cd3c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xf778b5dd4f9e7711e12833bbc8126772719dd0e9` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0xfab5e5bb824a6d6b109d0086aa0ed0617a0ea96c` | non_address_book | unknown | unknown | unverified | n/a | `0x40feca5f7156030b78200450852792ea93f7c6cd` |
| unverified unclassified | UnnamedContract<br>`0x157dc2508531c9d1e105c11dac9a0fe642368552` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x4a039e4978eda465a47e24563939b60e9ba8bd51` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x5669b39db00cbe4cd7a8f5109417c3a9e31b7ab9` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x5f2f6721ca0c5ac522bc875fa3f09bf693dcfa1d` | non_address_book | unknown | unknown | unverified | n/a | `0xc0de1436c4e247f8652476a0b9ff55699801e1d0` |
| unverified unclassified | UnnamedContract<br>`0x64dd805aa894dc001f8505e000c7535179d96c9e` | non_address_book | unknown | unknown | unverified | n/a | `0xc0de1436c4e247f8652476a0b9ff55699801e1d0` |
| unverified unclassified | UnnamedContract<br>`0x7955519e14fdf498e28831f4cc06af4b8e3086a8` | non_address_book | unknown | unknown | unverified | n/a | `0xc0de1436c4e247f8652476a0b9ff55699801e1d0` |
| unverified unclassified | UnnamedContract<br>`0x846e822e9a00669dcc647079d7d625d2cd25a951` | non_address_book | unknown | unknown | unverified | n/a | `0xc0de1436c4e247f8652476a0b9ff55699801e1d0` |
| unverified unclassified | UnnamedContract<br>`0xa84ea94aa705f7d009cddf2a60f65c0d446b748e` | non_address_book | unknown | unknown | unverified | n/a | `0xc0de1436c4e247f8652476a0b9ff55699801e1d0` |
| unverified unclassified | UnnamedContract<br>`0xbcba2dca8aa187b4918b8374211d507aadf2045b` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0xc5be2c918eb04b091962fdf095a217a55cfa42c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc0de1436c4e247f8652476a0b9ff55699801e1d0` |
| unverified unclassified | UnnamedContract<br>`0xe3c5e29ea198e617ebc707718707beff9393fa51` | non_address_book | unknown | unknown | unverified | n/a | `0xc0de1436c4e247f8652476a0b9ff55699801e1d0` |
| unverified unclassified | UnnamedContract<br>`0x030ad5f8a436ac243e8682c8d036cd82bf5a9fe3` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x0434133f15fa2b2f142565a0d992a7ed4ef62b4a` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x053ae60117b2a90041e6872b18403ab102880c0b` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x05f018a431a9e1e693504e322c5c9ffe9d325b07` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x08dcdbf7bade91ccd42cb2a4ea8e5d199d285957` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x0b4a35ffe50d55cb00bb81f0f5ae61353e6f4c82` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x100451f9986161bd242b16381bd577f1c88a94fb` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x12a31b6bbf8781ab70b46a4fa0afe27f992fc92d` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x142ce7ff652d956354790da9b7feffb2acfc9717` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x18c2abb47f4d5ea9bffd771ad9a15f21c3e6fe20` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x1c0527b9a9de75a5e91be418f6c18f611b9b1af9` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x1dc76341ca156e376736ddba042aba071bd3b858` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x201e6f5a7142fd744d1f51f19209f2409d5ca51d` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x20a27e9119c7af8f059b5853fb63d62a9e884498` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x20b7cd27079f37d382020937d525999c75b97f84` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x21b48fa22f69ece450a687abbf32a82fe0f3c35e` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x21fd4175f64d2a646205a2e0644c84b9e3946bcb` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x23ca235c86970263b1439d413a86549b3e4c1d0a` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x25244fe81803c8135dfd37ee5540b2a39c2b9553` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x26ecad2dcb7fc8431db5dace522ba972c2ca3f2a` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x28fe58c4646d6dcc6f694501e81cb1b21ab4d92a` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x37eb657b66f1c2b381702ebbcf322c646e5f44fb` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x3c7645944bbcf1ec21cc4a2c0938910441349a5c` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x4425dc7f14edb3eaa4e710bf5b6bac89da3f6e80` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x457fea800f74b26f6bc6d23f218e3bf5aa765b6b` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |
| unverified unclassified | UnnamedContract<br>`0x478805a5c19a662cfc68127455b024433358d421` | non_address_book | unknown | unknown | unverified | n/a | `0x97be22dbb49c88451fbd1099f59eed963d9d8a12` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view](https://drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view](https://drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view](https://drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view](https://drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4302] drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view — no match: Extracted 17 contract names from the scope section listing files. Audit date from 'Date Audited: November3-November8,2025'.
- [4303] drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view — no match: Extracted 19 contract names from the scope section listing files. Audit date is the end of the range June 30 - July 3, 2025.
- [4304] drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view — no match: Scope explicitly lists 10 files; audit date range April 21-23, 2025, end date used.
- [4305] drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view — no match: Scope section explicitly lists 6 files. Audit date range March 27-31, 2025, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | FacetRegistry | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | FortyAcresPortfolioAccount | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | PortfolioFactory | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XPharaohFacet | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XRexFacet | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IVoteModule | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IXLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | IXVoter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LibDiamond | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | LoanUtils | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | PharaohLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | XPharaohLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | AccountConfigStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view | CollateralStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | CommunityRewards | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | EntryPoint | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IReward | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IVotingEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanUtils | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanV2Native | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | LoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | IRouter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohLoanV2Native | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | PharaohVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | Swapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | VaultV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view | VeloLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | LoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | Swapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | Vault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | VeloLoanV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IPool | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IRouter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | IVotingEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | Loan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | LoanStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | RateStorage | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | Vault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | VeloLoan | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view | ProtocolTimeLibrary | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 140 |
| upstream | 27 |
| standard_library | 12 |
| needs_review | 368 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 51 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [4302] drive.google.com/file/d/1c68Rah-fQzLzaESx7qX_Lbk9ecZ6fHWM/view
- [4303] drive.google.com/file/d/1u9A628xAWbkZwC38iR2HW-CtRVPfpbPr/view
- [4304] drive.google.com/file/d/1Vi7osCQmVKXENdyly670g-837ms7L6cv/view
- [4305] drive.google.com/file/d/1JnTDL9HknriukWSs8sZPSlOGfh6_rFY6/view

Fork inheritance lineage and inherited audits are included when available.
