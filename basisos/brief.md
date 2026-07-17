# Agentic Audit Brief: BasisOS

⚠️ Lifecycle status: DECLINING - TVL dropped 44.6% over 90 days

## Project Overview

- Project: BasisOS (`basisos`)
- Website: [https://basisos.org/](https://basisos.org/)
- Lifecycle: declining (Tier 0, 99.5% below peak)
- Generated: 2026-07-04T14:53:05.323Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base
- Contract surface: 201 unique implementations (297 raw deployments)
- DeFi Llama TVL: $24,193.58
- On-chain TVL (included contracts): $34,095.49
- TVL by chain: Base $34,095.49

## Project Description

Basis Trading. Structurally: 17 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 7 functional families. Its contracts share 5 common project-authored base contract(s) (proxy, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 325; live-surface contracts included: 287 (49 live, 238 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 201 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 180
- Unique implementations: 201
- Raw deployments: 297
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $34,095.49
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $34,095.49 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentToken | token | base | n/a | [`0x73cb479f2ccf77bad90bcda91e3987358437240a`](./contracts/base-8453/0x73cb479f2ccf77bad90bcda91e3987358437240a/) | ⚠️ Unaudited |
| BasisStrategy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0443f96d3a1e95278b93cac0e83fa89c0460795a`](./contracts/arbitrum-42161/0x0443f96d3a1e95278b93cac0e83fa89c0460795a/); arbitrum `0x191f854e3da22b2c581904596fe790db3af495a1`; arbitrum `0x80f947e404d3ae5c810c41af71a17ad8d58c87ce` | ⚠️ Unaudited |
| BasisStrategy | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xab9f15715d12e6d0f250f799082412545eaaffe6`](./contracts/arbitrum-42161/0xab9f15715d12e6d0f250f799082412545eaaffe6/); arbitrum `0xd19daa2ec0f724112284f41abbfca5b402e44bee` | ⚠️ Unaudited |
| BeaconProxy | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x4401b95febcef99343140915b5ecd95695d2c626`](./contracts/arbitrum-42161/0x4401b95febcef99343140915b5ecd95695d2c626/); arbitrum `0x705e55748d245657914148e9bd3c0183b15ebb00`; arbitrum `0x8b306680be04405f1aa0d5b4f7aa60f1550850be`; arbitrum `0xa27d2f408bac24c97affd2662786659c257e4c45`; arbitrum `0xc57be8baf545dc63d1135a9fb43b94765565c7c8`; arbitrum `0xd6e39c22c22ff1d13457e226a75b73b382441632`; arbitrum `0xd79dd12b7bc927e39aef596f9c78385e9f9a4d1d` | ⚠️ Unaudited |
| BrotherSwapper | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7227804a345ab8030ef85785a694e939e0b3afd9`](./contracts/arbitrum-42161/0x7227804a345ab8030ef85785a694e939e0b3afd9/); arbitrum `0xe2b22d310b57ca61ab601a1db0ae292a80310c11` | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | n/a | [`0x4dcbaac36253093a2d1fbd8e3f1026c097946eba`](./contracts/arbitrum-42161/0x4dcbaac36253093a2d1fbd8e3f1026c097946eba/) | ⚠️ Unaudited |
| CustomPriceFeed | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6576ebcfa41e019d563802a7194eefc92f98ceb1`](./contracts/arbitrum-42161/0x6576ebcfa41e019d563802a7194eefc92f98ceb1/); arbitrum `0x97ff3e5308a37d692856a6eda4cadcb8bea78f86` | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | n/a | [`0xdc4ec101818e31e26dde776c008f69299aab8c9e`](./contracts/arbitrum-42161/0xdc4ec101818e31e26dde776c008f69299aab8c9e/) | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | n/a | [`0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9`](./contracts/arbitrum-42161/0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9/) | ⚠️ Unaudited |
| LlamaTvlAdapter | adapter | arbitrum | n/a | [`0xdd5c8ab2e9f113b397ff2b8528c649baef24df97`](./contracts/arbitrum-42161/0xdd5c8ab2e9f113b397ff2b8528c649baef24df97/) | ⚠️ Unaudited |
| LogarithmVault | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x0592700f01f3ad1c17f7d1bb4fec8aad19d596b6`](./contracts/arbitrum-42161/0x0592700f01f3ad1c17f7d1bb4fec8aad19d596b6/); arbitrum `0x23f685bd55d5a1aeb626cb3f2aaf6124e65da555`; arbitrum `0x3c6c0cc7673ad9f746eb0a8ec6f68af02d2237b8`; arbitrum `0x7248c971393f9597ec093428e63b292daf26c879`; arbitrum `0x72ca1069847ddf6b172c2bfa1012368d29c5a2e2`; arbitrum `0x79f76e343807ea194789d114e61be6676e6bbeda`; arbitrum `0xe5fc579f20c2dbffd78a92ddd124871a35519659` | ⚠️ Unaudited |
| LogarithmVault | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x27261c12eacc6684a23832b06cb3fdc31d09ecd5`](./contracts/arbitrum-42161/0x27261c12eacc6684a23832b06cb3fdc31d09ecd5/); arbitrum `0x4e8ba8a872f0cefc5d7e5dc0751cfa8d2c6dc22b`; arbitrum `0xa71fcfc1f7e0c4e5d37cdeea3c7b6b6ec62df968` | ⚠️ Unaudited |
| LogarithmVault | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3c435c69fa9af7aa9674bc360c765651557fe884`](./contracts/arbitrum-42161/0x3c435c69fa9af7aa9674bc360c765651557fe884/); arbitrum `0x550f5d4f978544cdc5819b7428c5b7e4c5ab42db`; arbitrum `0x803ed5c0d09a32d7913bf95ed5c9e23f714f2ba1` | ⚠️ Unaudited |
| OffChainPositionManager | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x105755108a8dfcd90c5a0de597bb3a8bce83c535`](./contracts/arbitrum-42161/0x105755108a8dfcd90c5a0de597bb3a8bce83c535/); arbitrum `0x47ef0fa6dd0bbff9e2fa97d2ab3b2731d0facc45`; arbitrum `0x4d79db3bf2788ec1c9ccf6de023c95aecf984204`; arbitrum `0x7ca37a1bf935062d30c530bcea5d32e0eb25eb4f`; arbitrum `0x97d0122a473457f1dd2bad64f73e6343b3f10cf5`; arbitrum `0xdae9b0f4128fdf9f0433bf941c9a253e5246b7af`; arbitrum `0xeda462b502d9489662ca8f84576e6bc21ff12d86` | ⚠️ Unaudited |
| OffChainPositionManager | governance | arbitrum | n/a | [`0x23050c5e3066b4cd77253a4665c67f2c0701b48e`](./contracts/arbitrum-42161/0x23050c5e3066b4cd77253a4665c67f2c0701b48e/) | ⚠️ Unaudited |
| OffChainPositionManager | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x2551927db13c58eb0c551843d45feecb96440be4`](./contracts/arbitrum-42161/0x2551927db13c58eb0c551843d45feecb96440be4/); arbitrum `0x6ecafebf8363a6e92f7e45f1e6ecb3fd1f1ed04c`; arbitrum `0xba4e5306ade16f337232b210c8dc3f67ab387165` | ⚠️ Unaudited |
| SpotManager | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x28d21b1b23440dec140d74f569a0aeb98b0c5201`](./contracts/arbitrum-42161/0x28d21b1b23440dec140d74f569a0aeb98b0c5201/); arbitrum `0x30ed7e8e8103ab57d5d21d48f001e0eae371dc7e`; arbitrum `0x47310058b08d108e75e582bf718a10e97990eafb`; arbitrum `0x8984bb636146015c61e2ff43afc9259e02a3e3e7` | ⚠️ Unaudited |
| SpotManager | governance | arbitrum | n/a | [`0x5834cee2689919db003063a0c683fa83d8a39d46`](./contracts/arbitrum-42161/0x5834cee2689919db003063a0c683fa83d8a39d46/) | ⚠️ Unaudited |
| SpotManager | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6c86843f9341221ba1ca118f0cd16eeef643272b`](./contracts/arbitrum-42161/0x6c86843f9341221ba1ca118f0cd16eeef643272b/); arbitrum `0xabe9b64ee44640e468a46fab5f71f39a005297c8`; arbitrum `0xd2e090b08127eefa581a093c4d568cf689845054` | ⚠️ Unaudited |
| XSpotManager | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x3981cedd1001a847848acdd616eeb7f68f2a0748`](./contracts/arbitrum-42161/0x3981cedd1001a847848acdd616eeb7f68f2a0748/); arbitrum `0x5ece9f24b3ce934d4872f6e30e996bfd8f99b455`; arbitrum `0x7123d4d8059d14da7caca9aa336d2fcc1a205450`; arbitrum `0x761a6e33ef0e601aefa3cb96748ce06f221f913f`; arbitrum `0xac4dd49547a554be88fbe812bab163823dfe730b` | ⚠️ Unaudited |
| XSpotManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc66fd949e2d19550138d778ef38d032188c4adf8`](./contracts/arbitrum-42161/0xc66fd949e2d19550138d778ef38d032188c4adf8/); arbitrum `0xd6f58e48540f1536cea60b90dcf1e206c6d9e958` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (180)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x17eaadc22316628f48c8c56cc4b053cc907afe4f) | unknown | arbitrum | n/a | `0x93b20c648864f5d13982809c525c7ff3f1ed5457` | ❓ Unverified |
| Proxy (impl: 0x36419f10439371a0465aaf48cf922b3e0148a69f) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0db51e4412c2b0fb4d8ee4e5f67e0f467b5f60aa`; arbitrum `0x36419f10439371a0465aaf48cf922b3e0148a69f` | ❓ Unverified |
| Proxy (impl: 0x3f134f6f05484926fc51b33d1e230fc6038e9eb9) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x232ae607323f2404427570233a75d16d49b1fa7a`; arbitrum `0x3f134f6f05484926fc51b33d1e230fc6038e9eb9` | ❓ Unverified |
| Proxy (impl: 0x7770c98201dd6d2312629941ead46f9021719b03) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x5b76bd556406a97d309c435786577103bad7ce14`; arbitrum `0x7770c98201dd6d2312629941ead46f9021719b03`; arbitrum `0xbcdbff1584eda7ad89ea201e8e18d85ac955b806` | ❓ Unverified |
| Proxy (impl: 0x88544643603646772a126d0d843bfb137cd3d2c2) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x3a614ee25eaea1a7d0473187179256437c4ea074`; arbitrum `0x88544643603646772a126d0d843bfb137cd3d2c2`; arbitrum `0xc016086cc13e5453e3373798d9bcc46b92423208` | ❓ Unverified |
| Proxy (impl: 0x896999bc2fecfd39066d5b3c496571b549b8ee04) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x27bfc4de8202ec9ed921c6646b5814bbd78092ee`; arbitrum `0x896999bc2fecfd39066d5b3c496571b549b8ee04` | ❓ Unverified |
| Proxy (impl: 0x8b0ca0885c07d16703e33b8c34f3e42c00c052ea) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3aa74513b0211d0b50d0d25f00543c17d970f788`; arbitrum `0x8b0ca0885c07d16703e33b8c34f3e42c00c052ea` | ❓ Unverified |
| Proxy (impl: 0x8b651e4295806a2d15ebfa4e3efd6e5c46660ae1) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x881ada5ac6f0337355a3ee923df8bc33320d4de1`; arbitrum `0x8b651e4295806a2d15ebfa4e3efd6e5c46660ae1`; arbitrum `0xc14da39589ab11746a46939e7ba4e58cb43d3b24` | ❓ Unverified |
| Proxy (impl: 0x8b788279a9d90a76c274ffeb110bfbc5fa5c7678) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x51dc6bcacc6818d47d870405bef0cafb6014ec77`; arbitrum `0x8b788279a9d90a76c274ffeb110bfbc5fa5c7678` | ❓ Unverified |
| Proxy (impl: 0x91e31839c4b304f9e010614f49a23f9c0fe03a55) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x26ad95bddc540ac3af223f3eb6aa07c13d7e08c9`; arbitrum `0x91e31839c4b304f9e010614f49a23f9c0fe03a55` | ❓ Unverified |
| Proxy (impl: 0x93f1019571bc11d885f2b8e4794e76db0f1ac91d) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x2cc1567874312c3d8833509f6f6ec0d322e30514`; arbitrum `0x93f1019571bc11d885f2b8e4794e76db0f1ac91d` | ❓ Unverified |
| Proxy (impl: 0x9b2a5e2cbaabe0aa7518c667359d4587de8167e2) | unknown | arbitrum | n/a | 4 deployments: arbitrum `0x1231fa1067806797cf3c551745efb30ce53ae735`; arbitrum `0x8bdb3ece7e238e96cbe3645dfad01dd5f160f587`; arbitrum `0x9b2a5e2cbaabe0aa7518c667359d4587de8167e2`; arbitrum `0xcef3d7466f369b4a46845ab1316c0bca531051a0` | ❓ Unverified |
| Proxy (impl: 0xaa92ef35f866f0ede56cbd73331f9808eb71c8b8) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8baab907986eb5d34e11b1a128f38e5085a9a24f`; arbitrum `0xaa92ef35f866f0ede56cbd73331f9808eb71c8b8` | ❓ Unverified |
| Proxy (impl: 0xaeb876858b377abd4c8653160fb5d76a3f282ed8) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xa05833a544b34ece44c0c2034ab2296090e5109c`; arbitrum `0xaeb876858b377abd4c8653160fb5d76a3f282ed8` | ❓ Unverified |
| Proxy (impl: 0xaf862a4599432d91c8d33927125cd7094f73bfca) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x75032ea6f276de687a4c7cd82be3b91e2d321ed1`; arbitrum `0xaf862a4599432d91c8d33927125cd7094f73bfca` | ❓ Unverified |
| Proxy (impl: 0xb3eae416802e218e49378cec948a95b88d26d9b1) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8f63fe9c10310c5f0cb5ad023de6491fff32686b`; arbitrum `0xb3eae416802e218e49378cec948a95b88d26d9b1` | ❓ Unverified |
| Proxy (impl: 0xcda9fc2dc00ed41380a434e2ea9b8b7a6adac154) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x541a3908f6914a5574a42ad37e136eedfdd4fc89`; arbitrum `0xcda9fc2dc00ed41380a434e2ea9b8b7a6adac154` | ❓ Unverified |
| Proxy (impl: 0xd1c7f8ceb3a643c90548ea133db38cc6ddfceb96) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x5fd836e2b41b32ce567fffb913816e44bea06530`; arbitrum `0xd1c7f8ceb3a643c90548ea133db38cc6ddfceb96` | ❓ Unverified |
| Proxy (impl: 0xd1e394ef58479bfd357e3c3a7b15bc5728d061cf) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x1ec52db6a9c7b175507ec3fafb13b71cfc4e700f`; arbitrum `0x97e207d731cc35b68114a9923e4767306afe45bc`; arbitrum `0xd1e394ef58479bfd357e3c3a7b15bc5728d061cf` | ❓ Unverified |
| Proxy (impl: 0xdd24d5192018edfea9b2b105eb8fc831c71c8096) | unknown | arbitrum | n/a | 5 deployments: arbitrum `0x15c6a4dbeec04d414cb2e5d2de80d165f29b2fbd`; arbitrum `0x6e77994e0badcf3421d1fb0fb8b523fce0c989ee`; arbitrum `0x8bbc586fd37c492566b3f65e368446e238dd7326`; arbitrum `0xdd24d5192018edfea9b2b105eb8fc831c71c8096`; arbitrum `0xde56f312464f95c06eecf4391f930877fe4d7d93` | ❓ Unverified |
| Proxy (impl: 0xe12502dbe2617e2aa31d32e8e3e88471b1a82492) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x372b068a887b47312895ee6f079db772f5ae725b`; arbitrum `0xe12502dbe2617e2aa31d32e8e3e88471b1a82492` | ❓ Unverified |
| Proxy (impl: 0xe76c36f32bcf1b3c972dfd6f72ee284eb67b8564) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7f9266c9eb3072f86db328029e8c0dbeeaef3a79`; arbitrum `0xe76c36f32bcf1b3c972dfd6f72ee284eb67b8564` | ❓ Unverified |
| Proxy (impl: 0xe7cf980dca976d1b74084ba6277cc6227d681420) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x01b407b5b9eb00bfe23fb39424dbbe887810ffeb`; arbitrum `0xe5227e7432c9adee1404885c5aad506954a08a74`; arbitrum `0xe7cf980dca976d1b74084ba6277cc6227d681420` | ❓ Unverified |
| Proxy (impl: 0xf7a2080311493c51e712f58786742d0220ea4b05) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xc69c6a3228bb8ee5bdd0c656eea43bf8713b0740`; arbitrum `0xf7a2080311493c51e712f58786742d0220ea4b05` | ❓ Unverified |
| Proxy (impl: 0xf86f0605b1e54eae3ddac726800a65506d135fd9) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x79bd584c765243bf135766e8e13b8ebab4c2d53b`; arbitrum `0xf86f0605b1e54eae3ddac726800a65506d135fd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x026004d2a46900839fc217e92a43da61f1cda2c4`; arbitrum `0x2f1aacdae4f27239bc2b5c1dbdf7fb8cf57dc9d5`; arbitrum `0x6c472338e750c3016fa220cacc2471f2b3766554` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x03a89ff110f2d16c24353cef446e732d3e3ae335`; arbitrum `0xaeaa443b04201eddc78129a140c325134c2b47d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0576599691c88bc86a89d345e86cadb184a99516`; arbitrum `0x424b0ae1e84f184d43d099a7a7951fbb70ac180c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07c2895db02ed00348cad9f4d310ae26f16da9a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x089b82aef6f8e35d5c4980c50bc97ea334216b02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x090a89ea1cd1aaf774e30ec6e484f30c6d1c05e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x09cc7b8f4ac3b245fec14e541e89ffc0d5ee07a6`; arbitrum `0xf1accc6f5110681852c6cc4b4eb9f7212e071443` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10f4bb6b95f8ff3cfc35084503a0e93895e157bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1120401210f0e72aebc22d92e2efa1246a829726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16693c4ecbe41b95dfe669ca343fcd588894da17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1749aed1217620eedf2e9e57fd6609cfc99fb732`; arbitrum `0x4050c50b7c198ac010ecd8f2591f7d92c6e3ea6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19dd9fc3c6bd35e1902a8c508157c85f5464f929` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1aba73d66dad491f4d79f74657f6b83717b26ba8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1d1eb2cd8692ae47fd6a912936ceec85073bd86d`; arbitrum `0xaff8aaf0ce50aa240f93c564421334eb090f401a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dc658095a5883e2b9961f91361259b271bb3dba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x22649d014fa7f1ebaee509263698867254248b6e`; arbitrum `0x536c58bda7491cd4d004ab98bc52d2853d56d805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22f4940e91c93943a2e99a8932739190330ce7b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23a21f769669598e601d840c99ec97aef567940f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24269646a16832403d7636d4e180280eef903f61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x248105b09d059d87c576e1bb56daf397ff567e7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25080b6068b3727da0c34f4f93d3d2d52629e9dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25c10792582cbb1aa3165f5e0a67ff899cbf7ec8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26e64710ea99a7eef52e5e13abb7bb794ea165d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28f21b64f5efcea6b190f4cbb04049236cb97603` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c18b8bf55efc4f7d26a8f39391a63d8c3ac0ebe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2dfbf63eb0a2510ac704e323d98232d78b320acd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e739e6b47e595b51336d2fde86814566c1ebfff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x2f23a5175373c1948c7d76824572d38539dfc051`; arbitrum `0xec48d9fff0558919e9c7f9968f8adf0249f5add9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32cf01217f1ffe5c5ec4ff720581339e68939901` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x32f10d2f2cdcd17212e9290db8a17325e6edf063`; arbitrum `0x554f54caea7c2eda630f9d71fa03d58f9b30d1e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3463fd3f6dc8a667ba7d4d08c411315414877120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x36989a8f11facf79987b0cc7ce15a7270a385f0a`; arbitrum `0x9bd2042ee0e48066a3c321edac090042a808f787` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x378731fa8aceaa7dc52c8b0d412a8abab8725069` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37c2295aadbd8390ed9657e6e9b69dc692649ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39d2854caadc2d36cab387f21b1e3896cdc7f7c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39f26567aebc2f06c840aa606eeb9bf3fe16a4c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d019e645b6c5eb7466a285540fca1dd2f5b5bbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3f216a234350ad38065a25c82b1f09b46c36abc3`; arbitrum `0xa8f7393ac088635adfe5ae3dd6ffc6354fd3ba9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4332260be9675599a44e9982f82dfe9ccc0b31d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4438ed200e0c3a20894f4c7d1226cee6d244cdbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x461366b132dabc52fb858769b98538f34262769a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4692c9c7058b8b948c13c7e6bda9ef4aebd9f506` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x472e74d055caed372152f4d87fb1a1cb9b445753` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x483f293a38729c848140e6d192f8338ad10000a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4908d640ff03232cc1703e4fe701c233fd6566f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b443aa25e6b1f803a1f8a7c3b173fce5befa8ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bbad6ad9df3b7bbe643f9ede7d21c834ddeb559` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5525fd26a2cf70f618cc4b3e512e95f1755f2e72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57cb995c8cfe11f46f985dade0d0a6f42303a9d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58de9ca115ad4f0074e90cccd425cd3330bfb61b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59a5eb505c4c8ef92ecafa9488d60befd7f9160a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5db1c25f7cf233d5dab1f9fb1a79e5d4e034c3a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fd515f9cbdf75c4e72c68c48d62019a0e5831f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60d782aa77927ce2d934e2a2ba5cf1ce536ce480` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6135c597e9bf6a96921b7f8fe29709b84bbe265a`; arbitrum `0xacdaf2f7bd432d527a84264e5b3e94b164b44063` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6314917e93da9ae2ce381fddccdbed79765b49ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63a6a81bd9426f9ba2faf47f924b70d9a15e43b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6456fc2900af6845538d6520c61493d7cda3e8a2`; arbitrum `0xefb99716077a6d055c0c54b5b1fe0a68f3a906b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6723af22f08c34925db7721fd7129da54a46bd1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6724e9f0d1a7475c246d247d897b17e38635bfde`; arbitrum `0xb758989eebb4d5ef2da4fbd6e37f898dd1d49b2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x695ed3b71d126614b3ba4b171b415082680b955e`; arbitrum `0xe9f183d352ee21e3bebeb3b27bc43eae9a633d5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x696e96edbf88caaba99b45bf1a704b8913c01646` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6decb9548ff9cfbc95cbf4b5f2a3cf3e27847391` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ea4f0648dd2eaa762e28ebce4a60646b32a8e1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73de28b0b8ea5d3e5e9c2917e0989ded4a3c48f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x742392c20c1d16f509192d007ea735a2f1c77464`; arbitrum `0x8a260451534bb06795b26a054e63621322d3d179` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x742edcd458496a87dde08b48aaa817f0366f9e0c`; arbitrum `0xa659260d8cc1e36c5b616e12d93f0bdbb1df4aed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75514402027594fa5692dddaa9f2c74c15a10345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75f0abc627774a5b647c82bef38a67b98eded760` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x760a20e19fc06df9153545dcc8ecc0f4611bbb58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x775fae6a0c2a9a0bf045a89f59b2cd02ee02800d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x779991ef056eea6d6dd5ddffec7d1650bca953a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x799aeab196453c95d0c3bf16ff06ab51bca64554` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x79b093e7d266e9a1f9be541b3c6109075fe0ff55`; arbitrum `0x949c9908cd6c2f0bca623355f4c5baf157c3fb70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79b5bbe556f6c7531e28c0f2c9a2b8e2fdd6a424` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79b8a0766ff4c9649740912e23e308494a2e66d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bd924b114a9b8d3c73cd4fb028ac8449d615916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7be33e94aaf55b48d058849b97095892b475f171`; arbitrum `0x9ffea3a15b40ca046c8dfa278a1aead6e39c37ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c1d694fa5cac3a0e91f1c8ff55787bc66c208fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c2906c260c1204f14376c6d86eca97d3a535a0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cfa2bc87a645118a09cb318b348a88ad4f25b6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7eedf63a2c3ae02f2d6c2e049d1d49c57f54630d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x816b8bc9e2df56f63c1ba59cdc30d7b1cb4bffdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x817a424cab659350e5ca9d727eb94bad73cfa8b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8283e886ac6f77a8d38c4b945cecf39a6357b5cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83e73c44220b3cf57caa878e29d5693179a61fe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89262849d0ba0a65582a26ec861ec25beebed8d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898e3facfbe788d0dc60c9094b4703b87c72548e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898fe6cbabdd9c9a8d70b3ccbec77e49389f9085` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa429d0b24b43b550d180659115bf11af178f7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b85e584f69d6da83018137e48082969a8c579ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d6ce09ffb55bddf5ec33ee12fb51f9eb9d6e836` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dacacf40a6bb7ad22139a075f8ce6cb1ef492f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dec31941a76db68b950937cf4301a8a1695ab5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fc78ed7bec63d40bcd1e18a748c36cdc69c3f91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x907102c5d3bab0f38eb5ade46932f40a5ac5059a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x939a5a02394173a7b269eaaa4794502b924237e1`; arbitrum `0xee34c286b4407b1be37db93757b313c738007483` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93f75f6df2ec569cbd42046f11b1985863877476` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x94062886d060e3a80aab17951c6e087a153e8ae8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95613cc483ddf16dbde5cce62a3aab0636c90490` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x957987f90846c4168b2b03648d3ba6cec08a6455`; arbitrum `0xfa8efe78569971816c916103a48d2ccc2b9286d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f5c4f4bc28ae9a50894025e81aee571b3d7fde9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4749ae9a817b9aeaab48941c2c61b74e220f463` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9b3f3146b4f69b8bbf8498ae3960bf4f77a5a5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa93db346459db7bafb2aefbd7ba7f5f1c986801` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab4e7519e6f7fc80a5ab255f15990444209ce159` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae309df571927516d7e8ed77a8a17824279b4c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb03b9451686dda03c5b3882dbb6860ad047716d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb075a40fd7ad0be5f735010dd3a27be722bc6176` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb396f6c455f37621ef6650eb47c216c662b8d586` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb47d2dadfed53cc5fc6f8ea740001a2534d73b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7eed63919d9831a2e319b10aa5a804419bbabaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8b007f736c2759741eb0d75ce70d5d2ab32bc43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb97ba247402b512767a03b7ba5809b522dc37fef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba6ea579d827b34dc923d55c4f93dba6ef3aa122` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbaffac22a7daf573b9b75c303966daa84ac987ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb7eaed8ef9566c327ffca8327768d0555f35cf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd9699f5e68057fefad0be1a02b2a0eed3f95290` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf399ccf1ebbc09d99411e207439498388cb791e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5254d58f4a8c6251b0d6a8c8a3087ed847dc709` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xc7a1bb1c9769f5099e1244e1a0dbb16eca469ab0`; arbitrum `0xfc56b9180fabbc4876d08ec3e5d0f878a0bcff3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc800d492b6421ae9e3c227142d955c5fa27a1bd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc825c41a2ddb457157a69828ed70a8b6729a1f2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8e802c55819eb4cfac1eef76cabe6a63455df2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc96033788d5533a901495e66558f578035fcafb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca097ed37265ae16ff0d564b69af13a2e33688d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb022c271d464cfe6f3592da12d0f6e9f35c07af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd060cb6c45cdc5223fff892a94dca270962ad111` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd22ec11673c3e4908fe3ed1fd33086ce08b05091` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6b1f0a2899de875bc0b604cd7922caa85c36d47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd99e2fb9317b90f91a64eda52714aa9c8e04a21d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9d59a873a3ad1f4669acc8818588b66487f8b21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddb66f3adb858bbb2da8403f47fd2db88f66d228` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde9cf62d0fff95ee8b077d9d289d8b8fa00d1863` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2d3ebb0b3cfb80773a03dee15647ec969df4733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3400c2b74ee394095119ba5bd08088af9d89e34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe414be7b32f6df2166c34d14abfeee72bce322ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe47e0acfac9ee39dfda45e259053dcbd01273d2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe57170a8905b48d2cd0e2ea7d7f626d8c70229ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe83c1195a5ea0b5c1e52e9f47751e8072ae93ba4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe85e878a4a89c18adb6a5810d70450e0608156f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8b06ea0bec2668c8ad8ac8f6fd98194f8d9454f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9771b4e0413382c6128c5953595d4c2db729108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe99827adb3d78d685262f67d500b1b6f39594a56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb1396193f18be21f736a42f5bc8ee2638a8cc77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed6c7f70f7e7c4af7bccb90b7f95a38c3b9f3fe0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed99e476cfe5c607a66c43f3c16537e4c3486408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee9a0044f564e04d5546f25eecf63cd1c51d0dde` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2b26877ac0f8701b08c8f3e0fb7975c93cf212c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3cfe4f445a6d4c95e02f9a66edcfabf9ea5e7cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf885d9d4516c6644af19f5cdfee96b327e453813` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9b33eaac69408c79d1cc523b9200a38d0a0d9eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfacd9001cc03eb9817cf2b1c5dbbe2a563c04e7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc1e8f1f40d52a19ac6b2e702d60903e6483b6e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcad4b8288f14a0dca3222f62f1a70fb3e9b5073` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BasisOS-nov-24(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/BasisOS-nov-24(Final).pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x73cb479f2ccf77bad90bcda91e3987358437240a`](./contracts/base-8453/0x73cb479f2ccf77bad90bcda91e3987358437240a/) | AgentToken | token | $34,095.49 | Verified native implementation with $34,095.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0443f96d3a1e95278b93cac0e83fa89c0460795a`](./contracts/arbitrum-42161/0x0443f96d3a1e95278b93cac0e83fa89c0460795a/) | BasisStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xab9f15715d12e6d0f250f799082412545eaaffe6`](./contracts/arbitrum-42161/0xab9f15715d12e6d0f250f799082412545eaaffe6/) | BasisStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7227804a345ab8030ef85785a694e939e0b3afd9`](./contracts/arbitrum-42161/0x7227804a345ab8030ef85785a694e939e0b3afd9/) | BrotherSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4dcbaac36253093a2d1fbd8e3f1026c097946eba`](./contracts/arbitrum-42161/0x4dcbaac36253093a2d1fbd8e3f1026c097946eba/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6576ebcfa41e019d563802a7194eefc92f98ceb1`](./contracts/arbitrum-42161/0x6576ebcfa41e019d563802a7194eefc92f98ceb1/) | CustomPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdc4ec101818e31e26dde776c008f69299aab8c9e`](./contracts/arbitrum-42161/0xdc4ec101818e31e26dde776c008f69299aab8c9e/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9`](./contracts/arbitrum-42161/0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0592700f01f3ad1c17f7d1bb4fec8aad19d596b6`](./contracts/arbitrum-42161/0x0592700f01f3ad1c17f7d1bb4fec8aad19d596b6/) | LogarithmVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27261c12eacc6684a23832b06cb3fdc31d09ecd5`](./contracts/arbitrum-42161/0x27261c12eacc6684a23832b06cb3fdc31d09ecd5/) | LogarithmVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c435c69fa9af7aa9674bc360c765651557fe884`](./contracts/arbitrum-42161/0x3c435c69fa9af7aa9674bc360c765651557fe884/) | LogarithmVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x105755108a8dfcd90c5a0de597bb3a8bce83c535`](./contracts/arbitrum-42161/0x105755108a8dfcd90c5a0de597bb3a8bce83c535/) | OffChainPositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23050c5e3066b4cd77253a4665c67f2c0701b48e`](./contracts/arbitrum-42161/0x23050c5e3066b4cd77253a4665c67f2c0701b48e/) | OffChainPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2551927db13c58eb0c551843d45feecb96440be4`](./contracts/arbitrum-42161/0x2551927db13c58eb0c551843d45feecb96440be4/) | OffChainPositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28d21b1b23440dec140d74f569a0aeb98b0c5201`](./contracts/arbitrum-42161/0x28d21b1b23440dec140d74f569a0aeb98b0c5201/) | SpotManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5834cee2689919db003063a0c683fa83d8a39d46`](./contracts/arbitrum-42161/0x5834cee2689919db003063a0c683fa83d8a39d46/) | SpotManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c86843f9341221ba1ca118f0cd16eeef643272b`](./contracts/arbitrum-42161/0x6c86843f9341221ba1ca118f0cd16eeef643272b/) | SpotManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3981cedd1001a847848acdd616eeb7f68f2a0748`](./contracts/arbitrum-42161/0x3981cedd1001a847848acdd616eeb7f68f2a0748/) | XSpotManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc66fd949e2d19550138d778ef38d032188c4adf8`](./contracts/arbitrum-42161/0xc66fd949e2d19550138d778ef38d032188c4adf8/) | XSpotManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 176 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12743] BasisOS-nov-24(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
