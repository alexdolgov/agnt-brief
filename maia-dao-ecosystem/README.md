# Agentic Audit Brief: Maia DAO Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Maia DAO Ecosystem (`maia-dao-ecosystem`)
- Website: [https://maiadao.io](https://maiadao.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fraxtal, metis, optimism, polygon, sonic, swellchain
- Contract surface: 285 unique implementations (408 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $391,825.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Maia DAO Ecosystem in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 285 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 224
- Unique implementations: 285
- Raw deployments: 408
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumBaseBranchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x213128ef80b0fdddb96f09780e8f3dc8477d2869`; arbitrum `0x7add6ebebbb24c8d6e135c6c4fc168f676363cf1`; arbitrum `0x880cc05e65578091a6793749b55122198a740783`; arbitrum `0xe16776fce6b983e9ab52e9506bd3e14d22bdbda0` | ⚠️ Unaudited |
| ArbitrumBranchBridgeAgentFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d1b7079745d6148a273b36c03228b5d0d84def7` | ⚠️ Unaudited |
| ArbitrumBranchPort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0c453ef35986e1d8da22043ff00bf03ceb42e1f7`; arbitrum `0x79f4b04ffca54bc946aa0ef8e33ee723467f0192` | ⚠️ Unaudited |
| ArbitrumCoreBranchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x38defd1a1a1e7d6af860ec1eda6f4c75741d9e7e`; arbitrum `0xaaa6c918bc5b391553221a1a32423658480943fd` | ⚠️ Unaudited |
| BaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: metis `0x0ac0478017d3d38dc7f703fc1be0d10dad85fffb`; metis `0x5873adcc66448e9006d51e1df2e21c9c0ed55eb4`; metis `0x94fab903c7585b03171c8e845fcbaefa008c0d8b`; metis `0xb27bbeaaca2c00d6258c3118bab6b5b6975161c8` | ⚠️ Unaudited |
| BaseV1BribeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x27f7bdc4efb93056d195ee0b9d976ce828731a7e`; metis `0x2b723ed4491c5e0e9dfe647bc7d6b44dfb572be1`; metis `0x2f2ab7d7d9f5a38521c92b7e2204588c52e87f26`; metis `0x4a3e7f7e2b53441f7fed2813261f981911f7e253`; metis `0x5722bb45981b7d35fcb46dc02c5227c656a61c69`; metis `0x78c7036e6327a32258bb035ca6ee86ab4d212021`; metis `0x89b5902c2521d0d2a8fe55c0ea054fd030f34652`; metis `0x970c6991a10e6dd4eea7726518ed3cd71b87f906`; metis `0xf9fd7666949aaa6d5b3666ceb7ecb47529a327ee` | ⚠️ Unaudited |
| BaseV1Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: metis `0x068233c5ceb836f0a5f0ec57ceac9cd9fb46509f`; metis `0x449315748f7d9326acd084f79f292768a04b5a8f`; metis `0x546c81cc29d95fcc48a956e71e6b885969e6c9f1`; metis `0x633a093c9e94f64500fc8fcbb48e90dd52f6668f`; metis `0x87eeb75d45ba14e111c77ae9dcef246623161deb`; metis `0xf5c4def9b17745337706c6edd91fcdf34c003a0e` | ⚠️ Unaudited |
| BaseV1GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x3c5436f1c7703451fb2dd8aa198f1019bcf9bd3f`; metis `0x5e209c7eb7479bb98cfa9ce4e32306f2f3d550da`; metis `0x7cb109f969aee28525a4139f5d0efe30e8865004`; metis `0x81497c49d002ae2cde6b976dca56714123a018f6`; metis `0x844bf39cf0e81c250ab9a16845c60a25329a0aa6`; metis `0x9c27e8fa887073f991bd726be34be83adcb68778`; metis `0xdcf7438ccbe4bf7a6b1787cf92c98971dd52f956`; metis `0xf648f8ef87c5a15196355ff7b66dd0d6098de8b0`; metis `0xf70289835668762c1b615f7a6f5a8c0525bd92df` | ⚠️ Unaudited |
| BaseV1Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0xe6868a326db48e1e5d38bc2696e2bda8ae0005da`; metis `0xeb4562979a9820aefd44d4e6e724ef644def5cd1`; metis `0xf031bc60924e32af54976b78325af4d04acc4730` | ⚠️ Unaudited |
| BaseV1Router01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: metis `0x10afc114105858a3911d16f33acc1ef7a98d7e3c`; metis `0x2d4f788fdb262a25161aa6d6e8e1f18458da8441`; metis `0x50f0771194a531aaa0efc1334be7597a087beb4b`; metis `0x6bc8994ad01292d65ee6979a8c9105edcfbd91fb`; metis `0xbf9d63a5a2cb8d4892996097f213a5e355022c36`; metis `0xccbf835bac562464e6fd456cb36d5e6b8250191d`; metis `0xdfb3d497d14efbaf4a9fe50d2b66b8717b1c75a4` | ⚠️ Unaudited |
| BaseV1Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x45ee37b64f9a23b54c72d1c3710a8c1252151b0c`; metis `0x695fa60d8e32afe073c901636ad8b7039e3cd85e`; metis `0x879828da3a678d349a3c8d6b3d9c78e9ee31137f` | ⚠️ Unaudited |
| BaseV2GaugeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6560a407df42acf92e63ef08b676c422e6c74612` | ⚠️ Unaudited |
| BaseV2Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49283af8c7b4bfe4b716672d2989109e7e4d411e` | ⚠️ Unaudited |
| BoostAggregatorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x223f3862f28848784432dc48346d133aba94fbd4` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x455d5f11fea33a8fa9d3e285930b478b6bf85265`; sonic `0x4d85ba8c3918359c78ed09581e5bc7578ba932ba` | ⚠️ Unaudited |
| Brush | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe51ee9868c1f0d6cd968a8b8c8376dc2991bfe44` | ⚠️ Unaudited |
| BurntHermes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a0000000000e1007ceb00351f65a1806ecd937c` | ⚠️ Unaudited |
| ClaimHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: metis `0x14c51bf8ef19c1bcfd9c0d075b4680c0bbb1e3c6`; metis `0x29c6850143cfca22fb76db2e33690524a1ea9017`; metis `0x3aa56d0afded4be626fffc18b9a97920dcd2cc55`; metis `0x7ce2d554b8b83ba82ed6236bc56895ce27845a2a`; metis `0x80184481270ba19d514746d59d793e196a6fd344`; metis `0x943aa393546fa20e9647f574e5b07e9ffd6f2955`; metis `0xeb6392f918a5309c241e1065ce2256b587cd7e66` | ⚠️ Unaudited |
| CoreRootRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x31e2a6bbc2af8aeb78dd1fa1fcefe0f672c3e8fe`; arbitrum `0xcd2fdcb25ae2106b4f860bf92b4af5f326a00eb3` | ⚠️ Unaudited |
| DeployArbitrumBranchBridgeAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89b63a9439b4158e8714259ef2519e5d6053bf16` | ⚠️ Unaudited |
| DeployBranchBridgeAgentExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x356d64f0cc529d2945c64a9ed3ded77d5b1f0e3b` | ⚠️ Unaudited |
| DeployRootBridgeAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9a338139d897713551a254b49deec9621fd1098b`; arbitrum `0x9f6c242982a8912211479268b369a88b0f9079b6` | ⚠️ Unaudited |
| DeployRootBridgeAgentExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa6f7df4d1ca66085093d39291b127de5ad8e6f6b`; arbitrum `0xecf46419b41ca3389ac4e99c8dcc88080177cf1d` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x252f7818231486380e1d853baedffd42015a5120`; metis `0xd1cf3aad25981b36686140b93ed4246317bb3048` | ⚠️ Unaudited |
| ERC20hTokenRootFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb9833d1ee7d6b5478104f618436e5df4eaeb55c7`; arbitrum `0xe6ac784d1844cad3d4ccb3cd1114acdd1623bded` | ⚠️ Unaudited |
| ERC20sMAIA | token | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd7a586ce5250befab2cc2239f7226b9602536e6a` | ⚠️ Unaudited |
| FlywheelCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 18 deployments: metis `0x02707dbe94175ed43ffb5db06d6a600f807a7c1a`; metis `0x34a3eb1e7c15f0a671fb465c35339a07340c62dd`; metis `0x3e68b8bd10a1ac1a0bd329b1e2ef8af691d388ce`; metis `0x471cae0aa27cdef793b5bb7100b9155164aad52d`; metis `0x50477f757676dc42c41203948cdfb00c4859d3a3`; metis `0x607a8a55a63d6f27f6cf1958f2734c69849d131b`; metis `0x6ac56ac0219e85eb6d0739c9ef4fc31b927df638`; metis `0x79fa3a6bfadf5cd0c1505532e29d8fef937383e4`; metis `0x7ab001a3e126151d2002ed3f179f92e77cc4efd8`; metis `0x81685ee4fcaf4e02b81a46c05aa315a99c9586aa`; metis `0x91bc0842f66e632e3b1b0857199b8b19e66fe837`; metis `0xa695577151f2ce8e49a87e4ecc2b1ebb0feb0b43`; metis `0xb8cfd3e99a2caa971a363539c1983cf234ff3e88`; metis `0xbc1907663ae06e858dc38e3208f944f4d50c097b`; metis `0xc136b62e3f16b7cfee1bfd5e82ca096471ac6762`; metis `0xc3a3c357b9c7ea1a16b02b1d66c2fd333116dd10`; metis `0xe555743ced6d2818a1207b837e69d2c57dd282b4`; metis `0xebb5565ffe2f5122110fba6c7c8bfdd85de4b8db` | ⚠️ Unaudited |
| FlywheelGaugeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5174fa3cd4a9fd8113d8ab55975d4d1b079afabb` | ⚠️ Unaudited |
| GOGGLES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9fdbc3f8abc05fa8f3ad3c17d2f806c1230c4564` | ⚠️ Unaudited |
| HERMES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45940000009600102a1c002f0097c4a500fa00ab` | ⚠️ Unaudited |
| Hermes250 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x44f9f257c341298de53abd2b85b00fa1456d3f15`; metis `0xcbcc9ac48aced0f4ae6d816fb9e7843990d4b4c2` | ⚠️ Unaudited |
| HeyAnon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79bbf4508b1391af3a0f4b30bb5fc4aa9ab0e07c` | ⚠️ Unaudited |
| LycheeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc8e1bd56571f8b076f524007a29d09d1b69982e` | ⚠️ Unaudited |
| Maia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00000000ea00f3f4000e7ed5ed91965b19f1009b` | ⚠️ Unaudited |
| MaiaBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 14 deployments: metis `0x3212c7f0d2f07707786dfe5e0a64aeffb4f072ac`; metis `0x3245f49dda5e717a69356e53fd407060e34dae69`; metis `0x5c89dcfb4b319b3878e2cfbffea75e681c24c2b6`; metis `0x8037603aa8a69b2b02615048c06f600255c7f30a`; metis `0x83de931543ba68fe9c2684ab350985f2c10e501a`; metis `0x89fef02c281cd1dcb4371dc9a32931e3dc8777c9`; metis `0xa67af8fc9ba71d6d031488a0465df2480b2b853c`; metis `0xb9791d1d5c33f79ca97f72fcd4c707da589ee28f`; metis `0xd1395b72350ec98887dc3d9b388fcc92fb778183`; metis `0xd211a32199f9a36a9a75a506ee17c4808f9353f1`; metis `0xddc272987d8db3584e48ef74761afaf5ecaa5297`; metis `0xec69ecd8d6f1301e4bd9de5a4e91364b01cdc963`; metis `0xee67fea89b6e165854fb8bcce0daee0e3a6cf980`; metis `0xf4d84c68c8a02530deddf5b67134b4d6f7c41a76` | ⚠️ Unaudited |
| MaiaDynamicRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 5 deployments: metis `0x010284f0f01344d22d3fec366a5f85dec16b4453`; metis `0x2851a6c4e5d1704758bbd082f8b5c9b0d14ac04d`; metis `0x3ef1b87570fcf0d8ea3b4a053f4519c31c5f55b5`; metis `0x77fa1e788f5922aae35ca4780c25ed3648c01d89`; metis `0x8e4813d444c49844904f6c9875448abc2a3543cc` | ⚠️ Unaudited |
| MaiaERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x31ba70a4a17b311f4d2beed181c89f1f909da00b`; metis `0x72c232d56542ba082592dee7c77b1c6cfa758bcd` | ⚠️ Unaudited |
| MarathonLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6efda282691ca242ee565d3acf8bf8ca9fa0243e` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x0a889038442c8a1d6ebc6a5a4d07e98cf3ae5956`; metis `0x4dba32437af93ce6b1740d44492978702b159afe`; metis `0xf14c98d45c55de0ece47d192638e2a5118bb85e6` | ⚠️ Unaudited |
| MulticallRootRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8f9b85c85fb4e0c74de75dc883966ff363440a7d`; arbitrum `0xebdcaab09ec0491e2a632e3e8f2b39f081d878dd` | ⚠️ Unaudited |
| MulticallRootRouterLibZip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3ad10d46abede5e56925ae97bfc131054f834333`; arbitrum `0xcb3b7be0056e2064565bb2b1d635a87180c33d25` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9e339e1a98fb8d3df16edde78652cfa98cf916dc` | ⚠️ Unaudited |
| PoolTickBitmap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3048a54ef39ed5db7e748bb5ace83fb05beee3b4` | ⚠️ Unaudited |
| RewardsDepot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: metis `0x1e5a3dc1413ed59b961d17b6af643d0bd5bed31c`; metis `0x4312163bd0dffc3d12f97b462307b7eaa1b1117e`; metis `0x5ab5e78184542ac68638db0dd5e23599e8a24761`; metis `0xf2a8d927038646b1fb2e6354fdafa1feeb0c1015` | ⚠️ Unaudited |
| RootBridgeAgentFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x627dccd47fbadfbd601894aeea289c23db67d466`; arbitrum `0xe0ff9ada7ff73180beca8d6f69fc8d2505f9539e` | ⚠️ Unaudited |
| RootPort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5399eee5073bc1018233796a291ffd6a78e26cbb`; arbitrum `0xd3e3599517f2036fa314e468d62135714fc03c56` | ⚠️ Unaudited |
| sDOG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50bc6e1dff8039a4b967c1bf507ba5ea13fa18b6` | ⚠️ Unaudited |
| sMaia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x54ccc76091fe30bcce8b0dae102d264d24e1ea1c`; metis `0x559119275a8a862edbd2cde21196f4c758d5ab84` | ⚠️ Unaudited |
| StakingHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x1c86afe9f9af4afc23bd1f50191c5c0192d47802`; metis `0xcee8b8d4c2bf24d44aff418bc113ea022d291533` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x94af219709867091ab0038466203856179035cea` | ⚠️ Unaudited |
| TimeBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x15ac5940d9805fa7d7e57e2e931f4f2e32e3fe70`; metis `0x4c1bbb3c8a495c40108461fb97ec022405acd315`; metis `0x5c6b075e347695f23cfb5831e5f9b563afdbbf75`; metis `0x62c90f32e05776d811fd7dc1c2206413893078c5`; metis `0x63e132328138c0ae0287f679876c59b29d6c4afc`; metis `0x6e23a7981a7918b7b825a073dd20a4cfc9c1f578`; metis `0xcebd1cda107cb6f60daf6578433137925928ac74`; metis `0xd39f300731ad59ee755300d00e77ae2711bce5ca`; metis `0xea0415b511a1199f7e0822b8641ab49a44c74a1d` | ⚠️ Unaudited |
| TimeBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0xd23d70eec1f7ba5c4842a9c124bdb6189e46a0be`; metis `0xf1c8d77d345f4e4cb8457434e4fd3a677e505031`; metis `0xfcc66d3ad5b9fe0cb785b7d51dd08425397c0fa1` | ⚠️ Unaudited |
| TimeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0xd1d003804b08572cafcf2ba2729b49369e9b2b81`; metis `0xe2546b144efc3f8bd85d84b6ca64cc4f033c9be1` | ⚠️ Unaudited |
| TimeTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 2 deployments: metis `0x3d183e4f3eef0191ecffafd7ffc5df8d38520fa9`; metis `0x9d99ad8f5f9ce04253a31e3e31f9a438bd894285` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5c532676c96029d5188b5bf5c5ff959b8f444b5` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xccf19f7a90167b13c377db89ab6e8f5c8e4b2a1e` | ⚠️ Unaudited |
| ve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 3 deployments: metis `0x7d9767e65612527beb51e0228f7ce17870c3ab3f`; metis `0xa4c546c8f3ca15aa537d2ac3f62ee808d915b65b`; metis `0xdff00310eeaec7a04b0808f266a57742c734808f` | ⚠️ Unaudited |
| ve_dist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: metis `0x04f783ff9664be99ae6fc8c8aec379a287b27f67`; metis `0x305ba5aa6ce6d5a260a00d1e924edaa020cae851`; metis `0x5dbda704f368d4e5b67f19e706e16e9f20fa14c5`; metis `0xbf779daccd1704c736e6cb8c5a53138bef27c982`; metis `0xc6fed9712a7f1a25e4eb9fb1777ba40aa5eeec6d`; metis `0xccb2f438b2e9f5b129b6395e1685074a4f276cf9`; metis `0xe9da187a7987a15ddee08456800b0cc9f5b18cd5`; metis `0xeb23b0d96acb349de4a2de0fbb6f2ce31e5cab03`; metis `0xf271eea81053e1c25e51764edb004a03d37ff3e8` | ⚠️ Unaudited |
| VoteMaia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x000000f0c01c6200354f240000b7003668b4d080` | ⚠️ Unaudited |
| xAnonStakingNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x780ae218a02a20b69ac3da7bf80c08a70a330a5e` | ⚠️ Unaudited |
| ZeusToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 4 deployments: metis `0x89dedf49b43817ae4e54449e02ad2580504e8b28`; metis `0xaf0358dc42c0869aadfff4000f6f1b5f0c710d13`; metis `0xb29adb169788e556a6076f12ae825948505db458`; metis `0xe43375f414b14e8a7fa8b8e32df4e6fa1bfc4cfe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (224)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x54de3b7b5d1993db4b2a93c897b5272fbd60e99e) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x54de3b7b5d1993db4b2a93c897b5272fbd60e99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00fdfef33d8f101b556d2833b9d9797d36a3de0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x07fa011ccd2a732385ff7b267d4abd679f4c6652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09e1dfdceecf07332da707a0df3f76638fb6b1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ce4b9946d9d03ec02753043f5717ce10814dba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f63c5b1d7949e8fcc7dc6ef3ffec58f4e622224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0fb7659f13f8c7d03c9147a02343c47545a25ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x11fce669a83c164fd1882558ce35f04ca981f6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13898224e6b5968369bd9267a257735f808c6ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15c286d003f939ea0ba0f0295be8c7058d2e1727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17d464ce6ffc973928b1e13c0e5af43cc8558ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x195b95f6997a6194f18319d07372fa1b34197f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c2efb3629167c4022a2c1dd70f92fa1e8d21958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c565039b50dc330dff15f4f2e9d94af439ecd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1cd66a649fc455d0942f8fbb8eebc950f1811043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22b4575a1289b5257e98666d211a8dd00ee45c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x25356d3669c4371e817493f298ab94bd48ec9950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2759e7891421c10eafa76c6c1be54a33454469ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x291342897cf97753af4bee51322e592aa87d3e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2a4f01301e0dee705a6e7b45310967a3181f988d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fa2c57111467ab758292916633ba30e374353ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3159e0009ee509200e7023a700d2f09664a40038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x329fe9889f3b42841a07be46542ad46690fa0743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38fbd8c77af018bc2395a76324767f8fea6483cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x40b4ddc439a21735ddd007d9757343b748705655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x461c09c784ad83d076192fecc1c739126e5a5011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fa8521a76880f8b4a88c4dcab39ee93e6bfde33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fae94e57d1e02635b763d1511b08eb90d92d8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x51d05dde07fe4afad25de49610bffa4b21145106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54f25d7bc05601cec0e3d0aa76bbb681cc0bf847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56c8e7c1f187b96eb25eeb0fef6d2bb8e9826a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5bc377c7cc3348e8fcdbc8e38443299d0ff24166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5e000b54c35cdf9ee7dad58d12eca9458ddf2c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x64bd97c056aec2e31258e4c5f0548659b71ec814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66ca5243be232edd5ea3d4b9c7fb2a07556963a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x692ee35aebe1a9c43e320073fb7c9fee049dc6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x69830412574917fe3fe52d18430dfb4fb6e44972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a560783a786294ae287ab6cad043647a048e191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6aea33c56efc446d877cd84d813cff02a3af4867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b1a32e7c183166c3e51daea8cebbf091ea1294d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b850937b1b3a4b1ae89db32485b79281c1ef457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ddd6dfb798ecb59f4ede160d00c5a7a4d03ebb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x749da4bea381fafcd093b996160976ea00ca5cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x763f5cceac9df10c082e84fe5e09141f1365e845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x76991a67bf582966b2a8ef6e00bec8c58e841ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7705d358e6558c4dbddfa70eac7000ef08790544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x77c3418a1c7b95cbe49084b07b9047ff9ce86a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a11c3211dcf4c81a3531b5fa2b7447c9aaa657c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7e24d08a62c26a6adf087a39c5c945d9d6970123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f61a71d3e7e422831a5aea8f47d052c63a096fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x832e8cc6bd70b65912f5a1e8daf1b716af15bb9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83962023d431c3921978c95d08d7a259cd508940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x84ca55acb36f75e306b3ea0c0292e8540ccd3f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85169bfde96b55e3e816be96bf4e14433decd92f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bd88148c75c4dbfec6fc0c805a94dd6eeb5f5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8ca294dffd8a865093dfc3c9e41f0be1205fe354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d765a010fa57526c5b39484e05841e1aaf438d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e2ba6df9e70b9b0e6d6b816597edd607cd57ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x98dbc0365febb5112d50957176dfb5aed296875f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa2c36773ed49cc7abd490374c4243658991cc127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa8262a6a80539c5c0cbe9c11b6d0f4d15db2dbdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa151a57e7244d9d20028d1f501ccb8fa60edd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa557c9c5e8439947295d841c459a97fcbd5081e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xac25dca233ddbee5d343d1358524d81e38000909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xacce5906e2901590ef5261a19f5a2381c8d2fa2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadeacea32f09c6de5671c5150ec57fa12ee25db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf4fc278f8a1d12c5d48f48abe179ca2285a7778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0970f86020298183b1a357424d221436c03d536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb1f9d786592495b8385434426330622fe9df7726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb313e6548bc69d9d9362d7996939c11b671e86fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb5feb84f36b273b2981f609f2ea3963b6190c12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb62c9d350431a464b4e3c8e2b639b28a4b5a21a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb947549916f490a77a564c320675cbb29cf5cb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb9601006c5c0326fe1267a3a6882d01629a38dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbcc0716d72dad001ff518a1390b85db3664b2e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe31bb1088927a43b74860f3dc4e8e48757ccd23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe7551d9b0a7a913ef7bf3f08a9f142eee6717cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbf2aca1c98d6c84fd3d80eac9004cc38988647ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc31409980b4a1af929448d71c57e56e91b1636d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3a9c37f953fc7c651c833c1e3026fd6f5cd00df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc66a15c837dff4994bcfc6e0c2b588f0d0a82ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc7c5f05e612798c336b74be0625ca887e060689e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd643b7203a1878234f322dee5be22995142e0c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd9e379ff2c548e193cb0e814da535e8303f5d323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdfd1056c3bacb701cb0eb04f02d57bea456e34d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe192605ecc8bd1748939100d8807922c915de72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe1c434508b2d75d065d54321dd6d0918accdf217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6f020f0ba0cea7156b9821c8fddedb59c77a137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7ca2a4057a832e74cd143112392aaf27a9f41a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe854fb4b44713f68d06ab54c4a6d484087b89a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8a092a21f8f59c15be03ee4856e5970ed7489e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeafc2b46de46f8c18df6e578e7075e3ade436b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf67cf8528dc2d8d59f4395dce51f25c74da573fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf7af13be0a5ac0c94105415bdcd1e88a74872b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x03574b098f144ce725cba98413d884030cab173f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0395a1f9d84f264fab6d313f5f7ee2b495ac7625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x03e12a438d2fc849bc7531a1f2834bdb303fe775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b0a0a228756400bb5175847e2683e8f0ec916f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0b8fd13806c75480991ffaf1c5d5808cfdbb08e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0f7528c20445d735d18535a627ee1ebd5a64cabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1082fc0d12c8e5c45b803ff62128b68515f58143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1091fc55d0a928aa03987c1749f6e871b3d39959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x17019336ff338fbbd6a9dc1787a3eba36f028381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x184732bbc3646496019b8ba7088c96c96c4cafda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1963ba4ccaa07e5d3d2b39b60131b9efa591e6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1db38a4ccc1fc633b3d5bbf1b15934928dbe787c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1fa4083501c9e94c4f1eb14fe745f9a20550f020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2235342de9cc43cb43f9cfe58fe3fff77b62660b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x264cd3f9e6204523a0dc9db2e2c331bad73ada4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2bf4a7c67249fc4a49569dc68ef760b0001ec933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x35d212970137329342a4c591cdf3e65eb6ef69b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x371bd1e2cb335fa4b400c8243f06f1a9ddc5eafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x39516310faf49a62b9fb40d6cf8e4995a861a58c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3a773efc27a173230ad3c0d66b58e478f96dc22c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3ad1e196c9e6d6e9616e20bd7fd0291959f59db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3d6c69b74efb08dbaedf1ee9779c1f49911a9de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x3ff382c414a9d8fe97a5c8eeb850c859823b77ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4433be92dfc2ee2e5cb958bddf89d722496f73a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4547cd3dafbae435a53c3954dce0bfc32b501e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x46650dddc1ab2b4b99fbf9f54679c9b0631d289e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x48c3946f8df0db554b8d4d74cdea01f93900462e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4a0a47f0783038e2c2590874c765fc0b2b2aac78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4eb03e32603c51294f42f66cd51b4f1b59db3f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x4f52dc48b0a7cdc7d69903cace4ef860fa510a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x525b020e09b83ab7bca425efa4f4efc57cb7eb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x53840754427f9a672493289fd3ad5252f05d53ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x55df51dea18d717b396ea4c21d9f4bba770aee14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x59a1c813b9d82a687d72f6fab16ca6a5f4069795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5abf65e465bdbd97a83d969ae89af781c65b9b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5b8564d9d1d9ace3eaa798446818a08e47e6668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5c6e25d3617dbff44d33dbeaacd93f61ddfa6be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5dccc51d347005e229c30afdfebe0c274b071369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f1961a1c8ca1797e393ba9d92e48ec886455767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f2b4c136d45777effca1216a2a2c693b27618a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5f9c4c8ae8156c08c6a3682102cff1f9db42f145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x604e898636e3dfb5075dd1c10dc7d93c80804cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x615a8bbfcd3882246febec89efc5c53b668fc79b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x673ec421e0d068027f8fd89585f8d6e68899ac7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x68985350ca36f40ae3b081e27d2dcf4dcfa1ef5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6e11b11265e3346369fe7a990db6421dc6d62276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6f94d3823f9803a9a9e01cb33edbbcb6d6bf9613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x703d718d67f38219868113272ced32d7e735095d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7186c732063883fecfe42e82aaebfd47f8e74f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x749e46034618c6cbf64938b8de10092523228235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x74e26fe58952ec9c18f6378a97fd71414198c852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x76eae1061664e32f7ef85d612c9b5dbe7be1c378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79d65a8930b83485a34031251f0a41b954fc2ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x79d80c321f4d2e53499168bdce42048e024d2a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7b9a407af88c8aaa2c70a02fa0b09e8444aa1f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7c1a606ed32777079dcd73b0fc768d3ec6548661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7d41fcac970ab1940dab70f9abc6538cc67354ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8199467298e138ed69d6380b6f884bd0066bcd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x82f1d2e44678af2d16792ed9cc5e0aaf8227eafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x82f93c0c822155ad07882ba2a76707a5abe986c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x83983682f54d12d0c78d2883caa9203acec46fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8560bc4e149dea4594ebe385b7f827216af64c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8623afa4912673abe87d1f042916e1a94a70e884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x883bf9a9a0a23ee006ff904d32f457391fbf72da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x897e8c53e8d5b52d934d820cbb2bfdf44437fb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8a44e189d05bc1b9e9b2334db3621b041a462c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8c0da096d3e8caa6a670a7312605068ef141418e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8c15c6e175a4508034b804b4ce49023b0dda7c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8e1f22d41b73c5b73d18cd8eb67128ad9b38e871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8e6fefd8d569b49b63e8216d546ee1b65d0052ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x8fcafd1375fdaffdb9cd007719d915d17195440b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x90b02a384b6a6a1de5559c4c7056ffe8982f49f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x92315aaf5c8fa6f677b076b22a8712fec21f14d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x948fbe5a7123ee59dd6838b2c17b7effbfd21342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x978dd6d297bf68565a3f7fd24d0cf0bf19dc9881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9965427afe27ff035ba8124e468f30f648879b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x99e88485941ec4ef442854bcfecfed7e4e901cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9b816263d9d4d87c1f1d7cf7845cd6aadf5ed56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9bc7abd30b91c9b987f4e7216ff365cfef882b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9d2dbe6fc1671c0e47a8e71e734431822087dcc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa2bb184de113e96f56acf6799e1214ef686c1e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa3c90e9708349767552c1ae35302130a246d10ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa43f8a320bd0e60a0acd87ff5bf47143318a4d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa70352bb13a1097c0797834f971f87013536f1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa90c54a79dee89ffb6f834d5856b60cc8be1bfd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xab65c51aa3e71fcfa61c8e88ed26982d9c69ad4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xabed04966050497f6f979944b7576a7bc6091e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xae642a1701e003129b6d965ef451c5fc8dd82292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xaee878a3e0897da0cfb36f8efdace48bfb27e8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb01df7be2efafbbe8ec48f42ce9cc0b99e76ce22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb0b2a8f758b0d0436f115c019b28a605411317e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xb8f281bf5cdd43155b98ecb0af07289fa8277b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbbdc4dc02496c2879a50dae2a457cf2902384cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbc739ce0e937062c28e0730c4af7412096b050c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbd45b5328fefce2b95f84177ce5d5087b331b5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbe66187ab4e33ce292235bddb79ac0c43296422f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbf27d359c64baaec598cf0769eaf4edea8512df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc1ef689a266b32477de5f071bc08ee076b2f025f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc2c33894be6ed2dc690606179360095f7678c851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc6a465a95cee2414b8fc41997d0fce8e6942f8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc82f82c59b7efbaa3251f2164628fcc5241a57ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xc9631fc195d2f7e824a4839b836d013352112a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xca8365b82907801f0c00d39485cc62060e82707b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcd0bd17223341718f4530b33665855590bb7329a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xce93f03aff01ba9a23b8424380516668abee6ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xcf5fb6ac308b5dba1eb16650867ef54475851742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd0b30a51257810d90ff0d2de61233a858144a46c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd20a0de47ad6f1fb4ad18c8d1d07afb3e89d6f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd3e0e29188f7267c7051be698953d08013da65a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5a11c40d5322f6ff26ebd20116c363773c9905a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd5bb730dab33f4ef9f003ea10578596beef2b5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd87beb1147323ba95a76c9ec391a2a50cd0c2f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd983e54968862b1193f1d361b3d05a601d92ec76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd104c4fe69b7ed7dc8a6c74a7e6a7fa6f4d0c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe3ff2de25ec939da143e9a6c4bfe67f88f7eab9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe55ae769e7f9da5a89085fed01faa879e64708a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe5bf71302315504c3621c832101e1f94e667b56c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xe95d8f7f0b73fbc3e4153507fb37d21bbda022a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xecfbefcf7210ff2667637b877ec806efc30a4df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf019570184d868c1812bf7351c1060cdb92a2baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf063ee819668d86c6246338eeaf01da368499d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf10abb3133e889c07bce253a63d8edf5dd804b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf235c60bfaa81cd5a6dfa9e8264bbb1cb37926bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf3628b88177bf2eb5050b357619a710536ec724a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf55544f5cb36d4c65508343bfcb0c457af1a66f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf78af946c8985312f3d25109b39baa70de729369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf7b5e9e122d1224a6f7e78d0411a84b1e5b905ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a516edf6158d5bf1dd0b51337053c4acdf644d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8547116635a062ffe4aba581eb4a61e516c5ea73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc57f0dc8cc99d532ddf0ebcd59e02e2e4819427a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 128
- Live contracts: 0
- Unknown liveness contracts: 128
- Source-verified contracts: 32
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=3, contamination review=5, source verified unclassified=24, unverified unclassified=96

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | BaseV2GaugeManager<br>`0x6560a407df42acf92e63ef08b676c422e6c74612` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| candidate review | BaseV2Minter<br>`0x49283af8c7b4bfe4b716672d2989109e7e4d411e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| candidate review | FlywheelGaugeRewards<br>`0x5174fa3cd4a9fd8113d8ab55975d4d1b079afabb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| contamination review | DeployArbitrumBranchBridgeAgent<br>`0x89b63a9439b4158e8714259ef2519e5d6053bf16` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| contamination review | DeployBranchBridgeAgentExecutor<br>`0x356d64f0cc529d2945c64a9ed3ded77d5b1f0e3b` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| contamination review | DeployRootBridgeAgent<br>`0x9a338139d897713551a254b49deec9621fd1098b` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| contamination review | DeployRootBridgeAgentExecutor<br>`0xa6f7df4d1ca66085093d39291b127de5ad8e6f6b` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| contamination review | RootBridgeAgentFactory<br>`0x627dccd47fbadfbd601894aeea289c23db67d466` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | LycheeRouter<br>`0xdc8e1bd56571f8b076f524007a29d09d1b69982e` | non_address_book | unknown | unknown | verified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| source verified unclassified | PoolTickBitmap<br>`0x3048a54ef39ed5db7e748bb5ace83fb05beee3b4` | non_address_book | unknown | unknown | verified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| source verified unclassified | xAnonStakingNFT<br>`0x780ae218a02a20b69ac3da7bf80c08a70a330a5e` | non_address_book | unknown | unknown | verified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| source verified unclassified | ArbitrumBaseBranchRouter<br>`0x213128ef80b0fdddb96f09780e8f3dc8477d2869` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumBaseBranchRouter<br>`0x7add6ebebbb24c8d6e135c6c4fc168f676363cf1` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumBaseBranchRouter<br>`0x880cc05e65578091a6793749b55122198a740783` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumBaseBranchRouter<br>`0xe16776fce6b983e9ab52e9506bd3e14d22bdbda0` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumBranchBridgeAgentFactory<br>`0x3d1b7079745d6148a273b36c03228b5d0d84def7` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumBranchPort<br>`0x0c453ef35986e1d8da22043ff00bf03ceb42e1f7` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumBranchPort<br>`0x79f4b04ffca54bc946aa0ef8e33ee723467f0192` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumCoreBranchRouter<br>`0x38defd1a1a1e7d6af860ec1eda6f4c75741d9e7e` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ArbitrumCoreBranchRouter<br>`0xaaa6c918bc5b391553221a1a32423658480943fd` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | CoreRootRouter<br>`0x31e2a6bbc2af8aeb78dd1fa1fcefe0f672c3e8fe` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | CoreRootRouter<br>`0xcd2fdcb25ae2106b4f860bf92b4af5f326a00eb3` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | DeployRootBridgeAgent<br>`0x9f6c242982a8912211479268b369a88b0f9079b6` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | DeployRootBridgeAgentExecutor<br>`0xecf46419b41ca3389ac4e99c8dcc88080177cf1d` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ERC20hTokenRootFactory<br>`0xb9833d1ee7d6b5478104f618436e5df4eaeb55c7` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | ERC20hTokenRootFactory<br>`0xe6ac784d1844cad3d4ccb3cd1114acdd1623bded` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | MulticallRootRouter<br>`0x8f9b85c85fb4e0c74de75dc883966ff363440a7d` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | MulticallRootRouter<br>`0xebdcaab09ec0491e2a632e3e8f2b39f081d878dd` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | MulticallRootRouterLibZip<br>`0x3ad10d46abede5e56925ae97bfc131054f834333` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | MulticallRootRouterLibZip<br>`0xcb3b7be0056e2064565bb2b1d635a87180c33d25` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | RootBridgeAgentFactory<br>`0xe0ff9ada7ff73180beca8d6f69fc8d2505f9539e` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| source verified unclassified | RootPort<br>`0x5399eee5073bc1018233796a291ffd6a78e26cbb` | non_address_book | unknown | unknown | verified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| unverified unclassified | UnnamedContract<br>`0x00fdfef33d8f101b556d2833b9d9797d36a3de0a` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x07fa011ccd2a732385ff7b267d4abd679f4c6652` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x09e1dfdceecf07332da707a0df3f76638fb6b1e3` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x0ce4b9946d9d03ec02753043f5717ce10814dba7` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x0f63c5b1d7949e8fcc7dc6ef3ffec58f4e622224` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x0fb7659f13f8c7d03c9147a02343c47545a25ac7` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0x11fce669a83c164fd1882558ce35f04ca981f6f8` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x13898224e6b5968369bd9267a257735f808c6ada` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x15c286d003f939ea0ba0f0295be8c7058d2e1727` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x17d464ce6ffc973928b1e13c0e5af43cc8558ef2` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x195b95f6997a6194f18319d07372fa1b34197f2c` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x1c2efb3629167c4022a2c1dd70f92fa1e8d21958` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0x1c565039b50dc330dff15f4f2e9d94af439ecd33` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x1cd66a649fc455d0942f8fbb8eebc950f1811043` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x22b4575a1289b5257e98666d211a8dd00ee45c54` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x25356d3669c4371e817493f298ab94bd48ec9950` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x2759e7891421c10eafa76c6c1be54a33454469ba` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x291342897cf97753af4bee51322e592aa87d3e4e` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x2a4f01301e0dee705a6e7b45310967a3181f988d` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x2fa2c57111467ab758292916633ba30e374353ef` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x3159e0009ee509200e7023a700d2f09664a40038` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x329fe9889f3b42841a07be46542ad46690fa0743` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x38fbd8c77af018bc2395a76324767f8fea6483cb` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x40b4ddc439a21735ddd007d9757343b748705655` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x461c09c784ad83d076192fecc1c739126e5a5011` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x4fa8521a76880f8b4a88c4dcab39ee93e6bfde33` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x4fae94e57d1e02635b763d1511b08eb90d92d8b3` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x51d05dde07fe4afad25de49610bffa4b21145106` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x54f25d7bc05601cec0e3d0aa76bbb681cc0bf847` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x56c8e7c1f187b96eb25eeb0fef6d2bb8e9826a85` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x5bc377c7cc3348e8fcdbc8e38443299d0ff24166` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x5e000b54c35cdf9ee7dad58d12eca9458ddf2c9f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x64bd97c056aec2e31258e4c5f0548659b71ec814` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0x66ca5243be232edd5ea3d4b9c7fb2a07556963a6` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x692ee35aebe1a9c43e320073fb7c9fee049dc6d7` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x69830412574917fe3fe52d18430dfb4fb6e44972` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0x6a560783a786294ae287ab6cad043647a048e191` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x6aea33c56efc446d877cd84d813cff02a3af4867` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x6b1a32e7c183166c3e51daea8cebbf091ea1294d` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x6b850937b1b3a4b1ae89db32485b79281c1ef457` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x6ddd6dfb798ecb59f4ede160d00c5a7a4d03ebb0` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x749da4bea381fafcd093b996160976ea00ca5cac` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x763f5cceac9df10c082e84fe5e09141f1365e845` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0x76991a67bf582966b2a8ef6e00bec8c58e841ad2` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x7705d358e6558c4dbddfa70eac7000ef08790544` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x77c3418a1c7b95cbe49084b07b9047ff9ce86a51` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x7a11c3211dcf4c81a3531b5fa2b7447c9aaa657c` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x7e24d08a62c26a6adf087a39c5c945d9d6970123` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x7f61a71d3e7e422831a5aea8f47d052c63a096fb` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x832e8cc6bd70b65912f5a1e8daf1b716af15bb9b` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x83962023d431c3921978c95d08d7a259cd508940` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x84ca55acb36f75e306b3ea0c0292e8540ccd3f2d` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x85169bfde96b55e3e816be96bf4e14433decd92f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x8bd88148c75c4dbfec6fc0c805a94dd6eeb5f5af` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x8ca294dffd8a865093dfc3c9e41f0be1205fe354` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0x8d765a010fa57526c5b39484e05841e1aaf438d5` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x8e2ba6df9e70b9b0e6d6b816597edd607cd57ef0` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x98dbc0365febb5112d50957176dfb5aed296875f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xa2c36773ed49cc7abd490374c4243658991cc127` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xa8262a6a80539c5c0cbe9c11b6d0f4d15db2dbdc` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xaa151a57e7244d9d20028d1f501ccb8fa60edd94` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xaa557c9c5e8439947295d841c459a97fcbd5081e` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xac25dca233ddbee5d343d1358524d81e38000909` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0xacce5906e2901590ef5261a19f5a2381c8d2fa2a` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xadeacea32f09c6de5671c5150ec57fa12ee25db3` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xaf4fc278f8a1d12c5d48f48abe179ca2285a7778` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xb0970f86020298183b1a357424d221436c03d536` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xb1f9d786592495b8385434426330622fe9df7726` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xb313e6548bc69d9d9362d7996939c11b671e86fa` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xb5feb84f36b273b2981f609f2ea3963b6190c12f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xb62c9d350431a464b4e3c8e2b639b28a4b5a21a8` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xb947549916f490a77a564c320675cbb29cf5cb11` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xb9601006c5c0326fe1267a3a6882d01629a38dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xbcc0716d72dad001ff518a1390b85db3664b2e9d` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0xbe31bb1088927a43b74860f3dc4e8e48757ccd23` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xbe7551d9b0a7a913ef7bf3f08a9f142eee6717cf` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xbf2aca1c98d6c84fd3d80eac9004cc38988647ac` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xc31409980b4a1af929448d71c57e56e91b1636d5` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xc3a9c37f953fc7c651c833c1e3026fd6f5cd00df` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xc66a15c837dff4994bcfc6e0c2b588f0d0a82ef7` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xc7c5f05e612798c336b74be0625ca887e060689e` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0xd643b7203a1878234f322dee5be22995142e0c07` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xd9e379ff2c548e193cb0e814da535e8303f5d323` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xdfd1056c3bacb701cb0eb04f02d57bea456e34d7` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xe192605ecc8bd1748939100d8807922c915de72b` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xe1c434508b2d75d065d54321dd6d0918accdf217` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xe6f020f0ba0cea7156b9821c8fddedb59c77a137` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xe7ca2a4057a832e74cd143112392aaf27a9f41a7` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xe854fb4b44713f68d06ab54c4a6d484087b89a29` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xe8a092a21f8f59c15be03ee4856e5970ed7489e8` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0xeafc2b46de46f8c18df6e578e7075e3ade436b51` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0xf67cf8528dc2d8d59f4395dce51f25c74da573fc` | non_address_book | unknown | unknown | unverified | n/a | `0x8054a4fbd093808af4529187d3efb9f6301ab92f` |
| unverified unclassified | UnnamedContract<br>`0xf7af13be0a5ac0c94105415bdcd1e88a74872b4f` | non_address_book | unknown | unknown | unverified | n/a | `0x21c578ebd0c047dc3477c395ece98d56981d4d87` |
| unverified unclassified | UnnamedContract<br>`0x3a516edf6158d5bf1dd0b51337053c4acdf644d9` | non_address_book | unknown | unknown | unverified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| unverified unclassified | UnnamedContract<br>`0x8547116635a062ffe4aba581eb4a61e516c5ea73` | non_address_book | unknown | unknown | unverified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |
| unverified unclassified | UnnamedContract<br>`0xc57f0dc8cc99d532ddf0ebcd59e02e2e4819427a` | non_address_book | unknown | unknown | unverified | n/a | `0x00000000b3083afdbe0b3eefaa1259c9623effd7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Maia DAO February 2023 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20February%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 57 | n/a |
| [code4rena.com/audits/2023-05-maia-dao-ecosystem](https://code4rena.com/audits/2023-05-maia-dao-ecosystem) | Code4rena | Contest | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [code4rena.com/reports/2023-05-maia](https://code4rena.com/reports/2023-05-maia) | Code4rena | Contest | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 56 | n/a |
| [Ulysses Protocol May 2023 - Zellic Audit Report.pdf](https://github.com/code-423n4/2023-05-maia/blob/main/audits/Ulysses%20Protocol%20May%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 74 | n/a |
| [Maia DAO V2 Ecosystem - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20V2%20Ecosystem%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20Ulysses%20Protocol%20May%202023%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 74 | n/a |
| [code4rena.com/audits/2023-09-maia-dao-ulysses](https://code4rena.com/audits/2023-09-maia-dao-ulysses) | Code4rena | Contest | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Maia DAO Ulysses Protocol - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Maia%20DAO%20Ulysses%20Protocol%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13449] Maia DAO February 2023 - Zellic Audit Report.pdf — no match: No reason recorded
- [13450] code4rena.com/audits/2023-05-maia-dao-ecosystem — no match: The provided text is a leaderboard/competition results page for a Code4rena audit contest, not the actual audit report. It contains no contract names, file paths, or scope sections. The end date '5 Jul 2023' is used as the audit date.
- [13451] code4rena.com/reports/2023-05-maia — no match: No reason recorded
- [13453] Ulysses Protocol May 2023 - Zellic Audit Report.pdf — no match: No reason recorded
- [13454] Maia DAO V2 Ecosystem - Zellic Audit Report.pdf — no match: Scope section lists programs: ComposableStablePoolWrapper, VaultReentrancyLib, ERC4626, FlywheelBoosterGaugeWeight. Audit date from cover page.
- [13455] Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf — no match: No reason recorded
- [13456] code4rena.com/audits/2023-09-maia-dao-ulysses — no match: The provided text is a leaderboard for a Code4rena audit contest, not the audit report itself. No contracts in scope or audit date are identifiable from this text.
- [13457] Maia DAO Ulysses Protocol - Zellic Audit Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseFlywheelRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2Gauge | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2GaugeFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2GaugeManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BaseV2Minter | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BoostAggregator | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BoostAggregatorFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | BribesFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | DateTimeLib | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC20Boost | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC20Gauges | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC20MultiVotes | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | ERC4626PartnerManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelAcummulatedRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelBoosterGaugeWeight | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelBribeRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelCore | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelCoreInstant | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelCoreStrategy | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelGaugeRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | FlywheelInstantRewards | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | HERMES | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | IncentiveId | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | IncentiveTime | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | Maia | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | MultiRewardsDepot | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | NFTPositionInfo | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | OptimizerFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PartnerManagerFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PartnerUtilityManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PoolActions | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | PoolVariables | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPDecoder | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPEncoder | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPReader | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RLPWriter | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RewardMath | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | RewardsDepot | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | SingleRewardsDepot | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosBaseStrategy | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosBaseStrategyFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosOptimizer | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategySimpleRebalance | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyStaked | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyStakedFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyVanilla | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | TalosStrategyVanillaFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UniswapV3Gauge | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UniswapV3GaugeFactory | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UniswapV3Staker | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | UtilityManager | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermes | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermesBoost | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermesGauges | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | bHermesVotes | unmatched — not counted | — | — | no |
| Maia DAO February 2023 - Zellic Audit Report.pdf | vMaia | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallExecutor | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallFlags | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallProxy | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallV7Config | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | AnycallV7Upgradeable | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ArbitrumBranchBridgeAgent | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ArbitrumBranchPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BandwidthState | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BaseV2Minter | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BoostAggregator | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BranchBridgeAgent | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BranchPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | BribeFlywheel | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | CheckParamsLib | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | Context | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | Deposit | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | DepositInput | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | DepositParams | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ERC20Boost | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ERC20Gauges | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ERC4626PartnerManager | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | Gauges | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IAnycallConfig | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IAnycallExecutor | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IAnycallProxy | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IApp | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | INonfungiblePositionManager | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IRootPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ITalosOptimizer | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | ITalosStrategyStaked | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | IUniswapV3Pool | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | MulticallRootRouter | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | PartnerManagerFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RequestContext | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RootBridgeAgent | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RootBridgeAgentFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | RootPort | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | SafeCastLib | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | SafeTransferLib | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | SwapCallbackData | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosBaseStrategy | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosOptimizer | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosStrategySimple | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | TalosStrategyStaked | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UlyssesPool | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UlyssesRouter | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UlyssesToken | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UniswapV3Gauge | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UniswapV3GaugeFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | UniswapV3Staker | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | VirtualAccount | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | WETH9 | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | bHermes | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-05-maia | vMaia | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | AnycallFlags | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumCoreBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BaseBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BasePortGauge | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BytesLib | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRootRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRouterLib | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranch | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRoot | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626DepositOnly | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626MultiToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallConfig | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallExecutor | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallProxy | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IApp | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IArbBranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBranchRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreRootBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranch | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRoot | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626DepositOnly | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626MultiToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC721Permit | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IFeePool | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IMulticall2 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | INonfungiblePositionManager | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryImmutableState | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryPayments | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPoolInitializer | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPortStrategy | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ISwapRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesPool | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IVirtualAccount | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IWETH9 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Multicall2 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | MulticallRootRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Path | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | PoolAddress | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgent | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootPort | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesERC4626 | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesFactory | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesPool | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesRouter | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesToken | unmatched — not counted | — | — | no |
| Ulysses Protocol May 2023 - Zellic Audit Report.pdf | VirtualAccount | unmatched — not counted | — | — | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | ComposableStablePoolWrapper | unmatched — not counted | — | Listed in scope section as a program | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | VaultReentrancyLib | unmatched — not counted | — | Listed in scope section as a program | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | ERC4626 | unmatched — not counted | — | Listed in scope section as a program | no |
| Maia DAO V2 Ecosystem - Zellic Audit Report.pdf | FlywheelBoosterGaugeWeight | unmatched — not counted | — | Listed in scope section as a program and referenced in findings | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | AnycallFlags | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumBranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ArbitrumCoreBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BaseBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BasePortGauge | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | BytesLib | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRootRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | CoreRouterLib | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranch | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRoot | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626DepositOnly | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ERC4626MultiToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallConfig | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallExecutor | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IAnycallProxy | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IApp | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IArbBranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBranchRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ICoreRootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranch | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenBranchFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRoot | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC20hTokenRootFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626DepositOnly | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC4626MultiToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IERC721Permit | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IFeePool | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IMulticall2 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | INonfungiblePositionManager | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryImmutableState | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPeripheryPayments | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPoolInitializer | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IPortStrategy | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IRootRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | ISwapRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesPool | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUlyssesToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IVirtualAccount | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | IWETH9 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Multicall2 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | MulticallRootRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | Path | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | PoolAddress | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootBridgeAgentFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | RootPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesERC4626 | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesFactory | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesPool | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesRouter | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | UlyssesToken | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf | VirtualAccount | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | AddressCodeSize | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | BranchBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | BranchBridgeAgentExecutor | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | BranchPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | DecodeBridgeInMultipleParams | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | RootBridgeAgent | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | RootBridgeAgentExecutor | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | RootPort | unmatched — not counted | — | — | no |
| Maia DAO Ulysses Protocol - Zellic Audit Report.pdf | VirtualAccount | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 224 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 274 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: n/a

Zero-match audit list:

- [13449] Maia DAO February 2023 - Zellic Audit Report.pdf
- [13450] code4rena.com/audits/2023-05-maia-dao-ecosystem
- [13451] code4rena.com/reports/2023-05-maia
- [13453] Ulysses Protocol May 2023 - Zellic Audit Report.pdf
- [13454] Maia DAO V2 Ecosystem - Zellic Audit Report.pdf
- [13455] Maia DAO Ulysses Protocol May 2023 - Zellic Audit Report.pdf
- [13456] code4rena.com/audits/2023-09-maia-dao-ulysses
- [13457] Maia DAO Ulysses Protocol - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
