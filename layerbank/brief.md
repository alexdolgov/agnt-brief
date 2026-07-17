# Agentic Audit Brief: LayerBank

## Project Overview

- Project: LayerBank (`layerbank`)
- Website: [https://layerbank.finance](https://layerbank.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.426Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc, linea, manta, mode, scroll
- Contract surface: 97 unique implementations (179 raw deployments)
- DeFi Llama TVL: $23,032,193.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 20 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 5 common project-authored base contract(s) (untransferableerc20, ownable, reentrancyguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 279; live-surface contracts included: 179 (36 live, 143 unknown).
- Excluded by liveness: 100 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/12 (50.0%)
- Deployed-live implementations: 12 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/13
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 84
- Unique implementations: 97
- Raw deployments: 179
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 46.2% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Leverager | unknown | manta | n/a | 3 deployments: manta [`0x4054f478ec834fbdb2b192f144d4615d31bda9a6`](./contracts/manta-169/0x4054f478ec834fbdb2b192f144d4615d31bda9a6/); mode `0xf0dcba2dd51311b5ad5770573edb8d39d39029e5`; linea `0xc98b936d7540ba67c2260916ae91b3eeb9eefff3` | ✅ Audited |
| LToken | token | linea | n/a | 33 deployments: manta `0x472d43a8f00a41c3431e549367d2de2e07c5e388`; manta `0x604ddc9c59572d197b983f0578e58e61026765ed`; manta `0x71384b2c17433ba1d8f6fe895e9b2e7953dced68`; manta `0x7479c717f2b72116d15b4eaf8d540c497e07e0b6`; manta `0x7def25c6c2b4bc9e9fb5122d22650f8ecdfeff45`; manta `0x9d8ecb502d2ac290644d70a096165188d47e21a4`; manta `0xdf4b60ce539648ab05541827a3bf0a079a5fc1c2`; mode `0x59dd441184024a77fd17e68f07e242622806c256`; mode `0x66a5e18e36bfea86074a047954fec7c94ced366e`; mode `0x6a0d9584d88d22bcad7d4f83e7d6ab7949895ddf`; mode `0xba6e89c9cda3d72b7d8d5b05547a29f9bdbdbaec`; mode `0xc5b9cb1a26fb1f9b8e26d8d357cb950f53df4959`; mode `0xd97905cc56030a6e9b618d6e26cc9ee2eaa15948`; mode `0xe855b8018c22a05f84724e93693caf166912add5`; mode `0xfd160b6818254af48171a7731eba26dee6f16902`; linea [`0x14abc603b6471aae51f92e6f7cc5be7cc6eefd14`](./contracts/linea-59144/0x14abc603b6471aae51f92e6f7cc5be7cc6eefd14/); linea `0x2ad69a0cf272b9941c7ddcada7b0273e9046c4b0`; linea `0x2c88a441418e06b9f3e565c2f866fcb03c9409e2`; linea `0x5924117c4a5e000312684a5e76e90cc93addde6b`; linea `0x67492784ec588681e55b2bfc0118d882a8f23e48`; linea `0x6fe39525298118a6b58646b83f6b23e48208a855`; linea `0x8fefabe1b9a530d9d0f0ef25e84a9d8b56ab2053`; linea `0x9e9aec6a296f94c8530e2dd01ff3e9c61555d39a`; linea `0x9f8b5de4191db60e7b1d2ed448084657c0b46c19`; linea `0xa630475ef1511e54f9b061d6d830e19be182bc79`; linea `0xb01f9de93374a6b287372008ab8739c7ddb7ce28`; linea `0xb81b1e2ee4c867c95ec7041f6c22e0e89328d890`; linea `0xc7d8489dae3d2ebef075b1db2257e2c231c9d231`; linea `0xccba9ac94531e15aa55d9065e398812f06b84f14`; linea `0xcdfcfdb11b75c53e43e4f1f19ecfc16b321d15f8`; linea `0xe33520c74bac3c537bfeee0f65e80471f3d564b9`; linea `0xea0f73296a6147fb56bae29306aae0ffaff9de5f`; linea `0xf46680e9987f334041656abeb83b87c2494dc751` | ✅ Audited |
| RateModelSlope | operational_periphery | manta | n/a | 18 deployments: manta [`0x01be49c7734673bd407fc54735c2ac02504c27c1`](./contracts/manta-169/0x01be49c7734673bd407fc54735c2ac02504c27c1/); manta `0x27f85bd47740139a56e34124b33481ea6e1e660d`; manta `0x7e76a2112706814477a3f7638a0fcedde85733a6`; manta `0x7ebf48f06fed5fa165748c7f30337a5d0d65fb14`; manta `0x8d965181bdfd026cf5a09889898d70c4afae4684`; manta `0x91ad6fb355252f731ecbeb30aeff6464cbbe0c07`; manta `0xbea4070909dc939282ecc953d99840e390d891d1`; manta `0xd30726b29fae71d28c15f5632ec9ab2c2716a2f6`; manta `0xe8c8cfc7750abaf26e5889c5e3f56d1e5f96902a`; manta `0xf7e5d5afae27305b371c4d183f887b77f0848acc`; manta `0xf9a2e1cfa9760a1edc405047df638da71815ef95`; mode `0x0442bea39e4307c0523027319e06e2145b7ff62a`; mode `0x072cd619678efe125099d7d167f6ce6cf3c3bc62`; mode `0x16cd8dace8569c7bd4e903c864444367b9f7b1af`; mode `0x2a0c7d8e23d7be9cc8e7c0b2895299f11690e295`; mode `0x7187b3e844589c3c6bd41b56867e269ffbe1dc71`; mode `0x83df63c060c248541e93488e94ac55b11efa7ff4`; mode `0xe71957bffbcdad7278f4dc2cb44aa6e35d0f5967` | ✅ Audited |
| RebateDistributor | operational_periphery | mode | n/a | 4 deployments: manta `0xc85836a3878e4dbbec91ac0701d4f6db08ce616d`; mode [`0x67d21527b227ec286409c6dd28d4704424ce006f`](./contracts/mode-34443/0x67d21527b227ec286409c6dd28d4704424ce006f/); linea `0x87bec95c9a414f9a83599138ba9e754d15f855bf`; linea `0xea01659b66a682d41f4718bb62134ea8109fbfc6` | ✅ Audited |
| RewardController | governance | manta | n/a | 2 deployments: manta [`0x68b30d4c712bb9b629eb79595a6c804e5968eb40`](./contracts/manta-169/0x68b30d4c712bb9b629eb79595a6c804e5968eb40/); mode `0xa2c4ff1500f7e5137d2299642118df7a2c0ba82a` | ✅ Audited |
| xLAB | unknown | manta | n/a | 2 deployments: manta [`0x69e38d781183a52de5e7506cd57bc6c55bb74467`](./contracts/manta-169/0x69e38d781183a52de5e7506cd57bc6c55bb74467/); mode `0xd4ab4799e66c40485b136580ffa233f7bd2a9f8b` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Core | unknown | linea | n/a | 6 deployments: bsc `0x8efdd7396b83cd53ae7555224a30c41b1a100ffa`; manta `0xb7a23fc0b066051de58b922dc1a08f33df748bbf`; mode `0x80980869d90a737aff47aba6fbaa923012c1ff50`; linea [`0x009a0b7c38b542208936f1179151cd08e2943833`](./contracts/linea-59144/0x009a0b7c38b542208936f1179151cd08e2943833/); linea `0x43eac5bfea14531b8de0b334e123ea98325de866`; scroll `0xec53c830f4444a8a56455c6836b5d2aa794289aa` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | linea | n/a | 4 deployments: manta `0x67c10b7b8eefe92eb4dfdeeedd94263632e483b0`; mode `0xe8c3ba0c2ac39f9d97bcebf913e480b55d4c1aec`; linea [`0x3df121931dc2e72dc4746da933126f6d50595605`](./contracts/linea-59144/0x3df121931dc2e72dc4746da933126f6d50595605/); linea `0x5d06067f86946620c326713b846ddc8b97470957` | ⚠️ Unaudited |
| LABToken | token | manta | n/a | 3 deployments: manta [`0x20a512dbdc0d006f46e6ca11329034eb3d18c997`](./contracts/manta-169/0x20a512dbdc0d006f46e6ca11329034eb3d18c997/); mode `0xfe67e16313f4b38743a153f74d5762f7c83e59ae`; linea `0xb97f21d1f2508ff5c73e7b5af02847640b1ff75d` | ⚠️ Unaudited |
| Locker | unknown | linea | n/a | [`0x14c5a2b562754ed412708a103fb9cb65b1b16494`](./contracts/linea-59144/0x14c5a2b562754ed412708a103fb9cb65b1b16494/) | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | mode | n/a | 6 deployments: manta `0x38f4384b457f81a4895c93a7503c255efd0746d2`; manta `0x90286f894020950981c9e3196bacb03a223e4cfd`; mode [`0x310e183416d7f266c150e7244733d1dcb1470172`](./contracts/mode-34443/0x310e183416d7f266c150e7244733d1dcb1470172/); mode `0xa6b2535b1c10ca5592be90a01dd1b6018062f7cf`; linea `0x35a8c6050591c2f65b3e926b4b2ef825e3766bd6`; linea `0x42e62fec1036f874a7579806530d628a59b6d7fb` | ⚠️ Unaudited |
| Validator | unknown | mode | n/a | 8 deployments: manta `0x3447275b4252b7929483528cf966eb466e71277e`; manta `0xca892a10908a38044e933836c21f28ac34ff157f`; manta `0xf2c1e27a4bf0d81bb4a6e6e3e5dcd1dc6ed3a7fa`; mode [`0x0ccd703acfe6ce83377243c2dbf9d55a09e12769`](./contracts/mode-34443/0x0ccd703acfe6ce83377243c2dbf9d55a09e12769/); mode `0x5ae221cec86bcdd0cdc616b6c2bbd95d0e68030f`; mode `0x8acbbeafd432b86a0772a2ae16df87885f062cdb`; mode `0xec47eb47ff67ec527e72e82d220eb057d69be055`; linea `0x720a99762bb3d2b98c8ddd64e13b0851355ca0e7` | ⚠️ Unaudited |
| Vesting | operational_periphery | manta | n/a | 5 deployments: manta [`0x683049b66b55a202bfc9a60e954ff9b41ba7b39a`](./contracts/manta-169/0x683049b66b55a202bfc9a60e954ff9b41ba7b39a/); manta `0x6d28332dda6b38408fec31f775d5b2e6d6c7781e`; manta `0x9125548148fb44af1e772a6c1f3727a65d043599`; manta `0x9fea1782b5deff62e32576cd29993824ecd2c9d3`; manta `0xc44a204705e0919266aee243df915ec3ae16d9a4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (84)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x3cd31bb63fab1917abaf50809006e0a062710bd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44ad9ef55ce955b696a4880e4669d99b2d0cc107` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54572fa57f6f68bdda46e634c41304bda8aa2d2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e740da89d9703c37ff29eeb60fef8a942853d43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e6e9eaf2aee0a6fbca6873af5ed8f33492def4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d8148bab26630f45eb4b1d27f5fffbc2b205961` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8ed849ba3e7d747636492316fc5d1f1975ce79f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe003a695019de65d2411b5a595468cba5d9baf58` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x126eb7b882651c228157fe5aec2be88438d8d118` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x147967e44ba47b607aca0cb014c8d359dc14aba6` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x21a3d684b32703bb56f308ce5ed79ba42abb5069` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4ad32c69eb3eecbb16d1748fde754b6ad50318d9` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x4be8c1da5e38458b16cf476070c526d55af8bb01` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x90bdfb3a9051288973272b60314239fb11522a43` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9cad141b542a46947bcb53121da0334cbb1a5250` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa28b3b0a10138f49ac7593812d2ffb7bfb73d927` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb8eecb81def12113bc163f29a9a8904d23339d44` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbdaf1446d6064e95c44fe94401fb5dd7a4d48962` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc30808b757d59a815da41487e2dd6dea7eb44b50` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcd5f48a4a7c5d34aad3f73bd2d63392a15e32d6b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcec210fd9334686ae8663c05ca4efef32c0fd2bc` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xcf235013efa9b1453f3b7c216b37ff7459c2d7d8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf04ec6dddd4fab38e690e2731973869e953b996a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf3e0707db3282ad53f64cd22d8583c92541df5cf` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf90f48c6f7f37ee73373f6ce06aae9d822994b0e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0f225d10dd29d4703d42c5e93440f828bf04d150` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2551aedb152b66f5be0b5ded19287f7fcacc557f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x273a36b282ed96d12666a9bd49298d495a679b8b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2a7efe59431835ea84008b852828808e892f5fa1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2b8867b0c93dcbefcc69be3eb6176779c23ef169` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2ba3ade8778808d8d40ddef28fe5b63585779e7b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3a0362a50dd5df5887125ba5f12953989e072977` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4ac518dbf0cc730a1c880739cfa98fe0bb284959` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x72f7a8eb9f83de366ae166dc50f16074076c3ea6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7c57dba8512e2ebeeac37aa65f51256b9326cc4d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x803a61d82bad2743be35be5dc6dea0ccce82c056` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x892d09ad4085d214363b06bc0f25654c40d5cba8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa91a0471593603f2376c2d2571dc122e982153aa` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xab3e7cb8a2dddef2c300e136003b8cde69b97151` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbd9edf764bc1f219c124ad5cfa7084bbed124aa8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf1e25704e75da0496b46bf4e3856c5480a3c247f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfb31a0fc2fd2b786aa54bd155b043f4077f20b99` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x016aa4299881239c15fea325cdc5e644ae6137b5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x048a6ccb63f4dffac23b8dc724fc4e1a2268d20a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0f5bb9c22c9b3ef079d139e52450fd1d9cbecaef` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1d51ef81a4e45013106b3d34863751e7001d7f51` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x232780dc4eaf570cdbeafbfd119b65e85edda892` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2b46e8625f48bf190b95556c23be607e343545d6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2c4cbd05f01e4870197b4bd1fd70538efbf60999` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2f96c932731e11f2bbaf6997ea21c56e9b9e3e00` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x52b47029c19e5c69eb3678a618b46bcd25ac6ae2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x57cb249b94f88f30b0a605e23418b53c0b5c29d7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5e838a74f4e21dc8876bed136fd35c4e960b1448` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6749900ebfdf070cd4fb5acbb71db4db3208d2b1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6d1ca2cb0de960dae80f9dde4c9043c66010d43d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6efb01e09a2d77c73aedf1df185d7213b865fea5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7225e1249152506eaa492df12d571425e93d54ee` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa15f453e8bd8bbb28eb599e05ec1fde8956ea816` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xad8d03c1edf91d4e6153146c67ee7c5eba92a8f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xae5c5535f475c07315a52b2607cfe7f2d869c552` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xae79f221284c9a57817ee6e1a8f04967d9ee0bab` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaeb4afe47f1c92797087378a4c9d5d964b2a29f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xafa621a96bd027e26ceb93c37d5a674fb0682e78` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb05fe91f9ad887ab46eccfc5cc4c6e1a6d4ce076` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb5b25d9192f582568363243677dd25a939fe7112` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb9bf4af75179c87aa2356cc3efcc24f10f7ebb8b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb9dd38c7ee558633b9498cbbab0eb316c1f58df1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbb5fe256f5d68cae11bfd5bd9acdbef8bfdc445d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc1d76a2ea390d05119b6f7d18bc4b5304db1ec4e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc44c04f657012dae504250f8fcc87df1005b151f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcc77ba41cd1d2c0f04947b23058f2dca2667472c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcd88eea868d3acc500ee3069738c028166c0a620` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd4ac03af102a0f5e008c73cdc4896e3741adb04b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd69fdd02ad3b7b94cae1e5b4330b82e30299fdf8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd8385524d566823e7ce1829144fa4b76a613f0df` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe43976e0ad6ffe02500069ae21e376fb87845ed6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe937de87cff1b15d6edd56ea39c3a2a3826a6102` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xea34ef86661b034d280760c91b589be83ccc1d4c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf90e4e1ead06ae9b2fba4ac3cf42eaa7cba0ee9a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfbed1737fa12b90b91e86339ca6413e36bca085e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfc64ac71e97067080bf1ac3bc7b79790f185cc32` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfd7f7af88c006e9c7aa371b6c94fc04ce80eafb9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfde206138d3314a421de06e4bb9f18f3237a8051` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff8030c391ec0d89b8fee189721f300b77790053` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-LineaBank-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LineaBank-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-LayerBank-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LayerBank-v1.0.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 5 | n/a |
| [20250123-LayerBank-Final-Audit-Report.pdf](https://movebit.xyz/reports/20250123-LayerBank-Final-Audit-Report.pdf) | MoveBit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fvi5sScuffF7lLX6pHEo5%2Fuploads%2FgSR9vUclew9CtwxZGIL4%2FAstraSec-AuditReport-Layerbank-V3%20(1).pdf?alt=media) | AstraSec | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x009a0b7c38b542208936f1179151cd08e2943833`](./contracts/linea-59144/0x009a0b7c38b542208936f1179151cd08e2943833/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3df121931dc2e72dc4746da933126f6d50595605`](./contracts/linea-59144/0x3df121931dc2e72dc4746da933126f6d50595605/) | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x20a512dbdc0d006f46e6ca11329034eb3d18c997`](./contracts/manta-169/0x20a512dbdc0d006f46e6ca11329034eb3d18c997/) | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x14c5a2b562754ed412708a103fb9cb65b1b16494`](./contracts/linea-59144/0x14c5a2b562754ed412708a103fb9cb65b1b16494/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x310e183416d7f266c150e7244733d1dcb1470172`](./contracts/mode-34443/0x310e183416d7f266c150e7244733d1dcb1470172/) | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0ccd703acfe6ce83377243c2dbf9d55a09e12769`](./contracts/mode-34443/0x0ccd703acfe6ce83377243c2dbf9d55a09e12769/) | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x683049b66b55a202bfc9a60e954ff9b41ba7b39a`](./contracts/manta-169/0x683049b66b55a202bfc9a60e954ff9b41ba7b39a/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 84 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [1858] 20250123-LayerBank-Final-Audit-Report.pdf
- [1859] spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
