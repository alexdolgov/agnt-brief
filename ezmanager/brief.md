# Agentic Audit Brief: EZManager

## Project Overview

- Project: EZManager (`ezmanager`)
- Website: [https://ezmanager.finance](https://ezmanager.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.743Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, bsc, ethereum, hyperliquid
- Contract surface: 305 unique implementations (502 raw deployments)
- DeFi Llama TVL: $340,173.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 14 project-authored contract(s) across 5 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 11 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 506; live-surface contracts included: 502 (94 live, 408 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/11 (81.8%)
- Deployed-live implementations: 12 of 305 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/12
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 293
- Unique implementations: 305
- Raw deployments: 502
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 58.3% | 2026-02 |
| Valves | Tier 2 | 3 | 25.0% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromeAdapter | adapter | base | n/a | 2 deployments: base [`0x66a4acd86986afce3c0119383d2869ca5cfc0999`](./contracts/base-8453/0x66a4acd86986afce3c0119383d2869ca5cfc0999/); base `0x9efde1640231a5306304317649f548be73a5fa28` | ✅ Audited |
| CLCore | unknown | bsc | n/a | 8 deployments: ethereum `0x3a5e783c9e7b24505d0baee021d555e81ea86e79`; ethereum `0xab264652495d3d0bdccfcccc308c794ea0160312`; bsc [`0x10c6d38f0c19c09b7cefde5f42494e4feca08eb2`](./contracts/bsc-56/0x10c6d38f0c19c09b7cefde5f42494e4feca08eb2/); bsc `0x78af86bc355283a984d1770600abadf58ce4b5b1`; bsc `0xc4aafef081445fd6fcc794f9b47e686b3d30e05c`; hyperliquid `0x6f81790ebac25497be379dc66143fb298663ae11`; base `0x61c36aff32be348a3d1fe1e2b4745048f652770f`; arbitrum `0xd52170ae01b9198246842d9a4ad964acd786ae91` | ✅ Audited |
| CLManager | governance | ethereum | n/a | 15 deployments: ethereum [`0x0294954263af527c725fcd9cac0e1f5ca3a68a70`](./contracts/ethereum-1/0x0294954263af527c725fcd9cac0e1f5ca3a68a70/); ethereum `0x3b2cfbad1c3d4fc841bc4576240d23cb97e742b6`; ethereum `0xcb9f751c2c14975c3d39fcb31c4273ba1887f3b3`; bsc `0x43f44c3936e90ce5a32d70fe32779b715c6a884d`; bsc `0x4d5a83c157026c28ff3aabbfb3d713a2704be153`; bsc `0xc5a634018941916fe8e22f1436b3ac6af66989b5`; hyperliquid `0x84ff6013e88a9414205f8ea9de8427fe91815fc2`; hyperliquid `0xa33471bd66cf2a25cdc7f13a8bec09e532f9c96f`; base `0x15689ea14534e7b91e1a4d4650deb9bed1670af5`; base `0x52dcc445e56694f5a4e4bc0631d01ebb90bd48a2`; base `0x846fb837eb67e0781f6204d88be0a1d49a791a7c`; base `0xb822f2a166960b85cf5af56eca6cb412e78fbd14`; arbitrum `0x57f5b24e2c55d51ea171f405c0e2c122bf2bc2aa`; arbitrum `0xbe682de7356cd5e5908400fd271b44fa4f350269`; arbitrum `0xe9b946d6fd9cf0c6ba796e56397201c45fc3ec0a` | ✅ Audited |
| EZWrapper | unknown | base | n/a | 5 deployments: ethereum `0x2e631aa51584822370a81e8614999aa483db574f`; bsc `0xfdbeb935e2097d9fdff27a73f89b1890e681d48d`; hyperliquid `0x5afebf92e99ccb0b13215bebe85dabc63f8ec338`; base [`0x180670ccb476624566e78618d467ef57ebbf1921`](./contracts/base-8453/0x180670ccb476624566e78618d467ef57ebbf1921/); arbitrum `0x91d0acacb9979e2332d05d370ff94e676516c449` | ✅ Audited |
| ProtocolReserve | unknown | arbitrum | n/a | 15 deployments: ethereum `0x38de5bd4e7a6fdb66a25329b23a7a7f9726f5323`; ethereum `0x7adce92b8bc6f1dfaf63cbeccd8999e67e8659f2`; bsc `0x953b248f203d57e65dcb2e132fe679cbee06b278`; bsc `0xa71df71ab49814eb79c41f0d306e260cd2f08012`; bsc `0xf3af047b66ad5d38fe7f2471bb401789a47b5889`; bsc `0xf3e9dcf940a880044c7f17a6d0d0b0188973f23d`; hyperliquid `0x43ea78157b39fbacc599162f63b855e4a8d49799`; hyperliquid `0x7adce92b8bc6f1dfaf63cbeccd8999e67e8659f2`; hyperliquid `0x898ec6efce764eccdc2f4b5923dfc1e882772650`; hyperliquid `0xbcab6cc4b2f1990f8e6e9f11c881a229d69cbb27`; base `0x6c50a44aad8da3957d7ad92ac77c173003bfe973`; base `0xb55cb1a9fd97b629b89944374707c0553590edc8`; base `0xe24135604d1d4add8f795153d5884ae1eb2e6811`; arbitrum [`0x149a9a5b2472553253aa532842f358de9b0d8ee6`](./contracts/arbitrum-42161/0x149a9a5b2472553253aa532842f358de9b0d8ee6/); arbitrum `0xc3e111c8c81b4675df243a3ba0e0821c0fe7014a` | ✅ Audited |
| RebalancePlanner | unknown | ethereum | n/a | 9 deployments: ethereum [`0x06dff44b626cd0fa34bd18ea061fb1b4d4ca2e6c`](./contracts/ethereum-1/0x06dff44b626cd0fa34bd18ea061fb1b4d4ca2e6c/); ethereum `0x9a1fce1d87b922a6714c0946a2206a3699e19b7b`; ethereum `0xbcab6cc4b2f1990f8e6e9f11c881a229d69cbb27`; bsc `0x61f3d9ade7a9a4fbd467fbc4a659b8c84a7b0a45`; hyperliquid `0xc3687d944fce91c80a4cd34793c4391fc9167804`; base `0x06f655a7642bb53caa8723b2bf2410915b9799be`; base `0x4e7855a053ad1880eacd25cdefd3069d961f2e24`; base `0x84600d1a569520dc41bb417f3b3025949888643a`; arbitrum `0xa7e6a3d530bdf6933e0f4d1f9fe62e052fee09b4` | ✅ Audited |
| ReferralManager | governance | bsc | n/a | 5 deployments: ethereum `0x25755579d2dd51e2f3a50b350a7623a85adfebdc`; bsc [`0x1b5f42003e77ae9389a1688c64441ca5cbebfd35`](./contracts/bsc-56/0x1b5f42003e77ae9389a1688c64441ca5cbebfd35/); hyperliquid `0xa90b89f90e43d5b75ba7eced1eaa6e4d771031e0`; base `0xab31a2e26b03e46cb28ba63a67f3141043f6ff28`; arbitrum `0xf89baeb220fc71a4ac124a6e1b1f36129907bc3b` | ✅ Audited |
| UniswapAdapter | adapter | ethereum | n/a | 5 deployments: ethereum [`0x0c10cb1fe66e0e452183d918e78b714026900bd3`](./contracts/ethereum-1/0x0c10cb1fe66e0e452183d918e78b714026900bd3/); bsc `0xaebfc272e575cf38721c30a60a018c6de49cfd3f`; base `0x0e5d5ade8e9f5ddc2df1caebc63ea37c1fc5be3b`; base `0x6e08cab6ebb204ac7473afdb09c6e914f4b4f749`; arbitrum `0xc0fac58f632b4be80e9c040134cb6867b0f6fc1d` | ✅ Audited |
| Valuation | unknown | ethereum | n/a | 10 deployments: ethereum [`0x43ea78157b39fbacc599162f63b855e4a8d49799`](./contracts/ethereum-1/0x43ea78157b39fbacc599162f63b855e4a8d49799/); ethereum `0x738db78bf64dcf2d9b6d9d9a5708083d946727e3`; bsc `0x52ee652a0970da0c56d404fec5c82f95f9329c3c`; bsc `0xbcdd7354ecddf2a4b1308175eec9b0f5dd2edc10`; bsc `0xe4ad95d009dbe901776105ae765b8a1fd9ecbc51`; hyperliquid `0x5a049dbfed26b5f06c8c657450d5aa5b8aa04cc7`; base `0xae79b33073b8ee252de6b13a6dff63ed3871a548`; base `0xb80b506a310ddba3196ad73073a7fff04376035e`; arbitrum `0x54a02f01986dc700211c5182848fff751e45de89`; arbitrum `0xf6d5ce9cf5bb0c63a5c8b6e17dc2a58cbd3d7d6c` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Lens | periphery | base | n/a | 10 deployments: base [`0x1d741af84c01513564d838c7461218c685a64a69`](./contracts/base-8453/0x1d741af84c01513564d838c7461218c685a64a69/); base `0x248d33124e3e7e2974938f3bb6cf740fd54ff395`; base `0x2aa8cacf7f81500b76f5e8746c57b932eac0c17f`; base `0x2dd39ad5d395ef8ab8543260916244378304d0ed`; base `0x6c133ed330002e5243be9ee730536d4fc1dc7fb4`; base `0x8ca465180b9fb5aafa7ef2a16da0e9760442caee`; base `0xb55d1103cd208bb2dbef3f69d9781d7ff2e0f21c`; base `0xc9133ce4033ea72221f3cf6f8f2482f3fe410e73`; base `0xd41cc7c1c7c03cfb89a37951b6830304dc04ab2a`; base `0xf408ed6233807ced3b02c5fb79c790ef1ee81d82` | ⚠️ Unaudited |
| ProjectXAdapter | adapter | hyperliquid | n/a | [`0xc5cf6bc5db058b4330ab3687bdafc575f800cc0d`](./contracts/hyperliquid-999/0xc5cf6bc5db058b4330ab3687bdafc575f800cc0d/) | ⚠️ Unaudited |
| TimelockController | governance | bsc | n/a | 9 deployments: ethereum `0x8963891b913993df6845c0f3303332cb55eae985`; bsc [`0x03421c4598f9b1e20195b3abf0bdf6297e38d325`](./contracts/bsc-56/0x03421c4598f9b1e20195b3abf0bdf6297e38d325/); bsc `0x16e38a8ef26f58f0af08be19515e71b8d7a01c6b`; bsc `0xc20e4b932de069ca20307f46de43dbeee23a71f2`; hyperliquid `0x389170532bd6838c238f39b0efa1b1ae1650c398`; base `0x93e4a14ec4d39cf55f23cc121cc810943588c872`; base `0x96b98364051b1784002b08a5c7fb51c3d61a07c3`; base `0xdd6135399c4d40ee8d5b455db5e91f2a1f65b6dd`; arbitrum `0xab9e67eaa99d6d69778a3af7c7120684df6d5611` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (293)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x195b6d264423e15e78b97e6cbdb5ae87df0ab3ad) | unknown | base | n/a | 3 deployments: base `0x1637b2878261250aeef782630bc32eea70b5e770`; base `0x195b6d264423e15e78b97e6cbdb5ae87df0ab3ad`; base `0xa0e951f403ef3fe51b363bbbd13b7afae5c8f5a0` | ❓ Unverified |
| Proxy (impl: 0x2f8b239bf22cb3cee3f635711166a58b7af3d446) | unknown | base | n/a | 2 deployments: base `0x0848444514e39f31de0abfbab0c2c6ec37dfb340`; base `0x2f8b239bf22cb3cee3f635711166a58b7af3d446` | ❓ Unverified |
| Proxy (impl: 0x38ece7863f07b5fbc5db188b9ca6ad36ca5359df) | unknown | base | n/a | 2 deployments: base `0x0e71a35ec632613c25fe3a9d106d215dc75cd6ef`; base `0x38ece7863f07b5fbc5db188b9ca6ad36ca5359df` | ❓ Unverified |
| Proxy (impl: 0x3c0113dd18bf2ccdc8f0b70e298d48a2f51f780f) | unknown | base | n/a | 2 deployments: base `0x2d9d909de45c530bd5e16b062be8c7199910eda0`; base `0x3c0113dd18bf2ccdc8f0b70e298d48a2f51f780f` | ❓ Unverified |
| Proxy (impl: 0x3eede7feba1338754508c373d0f63758aca5b38a) | unknown | base | n/a | 2 deployments: base `0x150b65c93b1233bfa7e1d9a1a6d3be74920b026f`; base `0x3eede7feba1338754508c373d0f63758aca5b38a` | ❓ Unverified |
| Proxy (impl: 0x463643bd73d80c4b745186cea5374404106d12e9) | unknown | base | n/a | 2 deployments: base `0x185d50d01d8ccca372334295490e5e590ffcb786`; base `0x463643bd73d80c4b745186cea5374404106d12e9` | ❓ Unverified |
| Proxy (impl: 0x4ade4a390bbb5d216b4e024cd4426b600e8cb618) | unknown | base | n/a | 3 deployments: base `0x3e07f2c575110be7ee787a320415170c7491b9a8`; base `0x4ade4a390bbb5d216b4e024cd4426b600e8cb618`; base `0xd55b5229f553107774ad1c182b2ca6401873a564` | ❓ Unverified |
| Proxy (impl: 0x56678c0872b40acd1c327694656b8d6998dec986) | unknown | base | n/a | 2 deployments: base `0x1df3bd2809c0dd89b746e813ecba5194281cd3fc`; base `0x56678c0872b40acd1c327694656b8d6998dec986` | ❓ Unverified |
| Proxy (impl: 0x58fc8b5d4096224f2f768afd6c7465ee501b7819) | unknown | base | n/a | 2 deployments: base `0x02853d832ef90b428dd9ae554a29f795df12b9bb`; base `0x58fc8b5d4096224f2f768afd6c7465ee501b7819` | ❓ Unverified |
| Proxy (impl: 0x5d712af6ab8d67133e6cb8010b5d17cbb32fcd97) | unknown | base | n/a | 2 deployments: base `0x00b77814e11df9f007a6ce5c423c063e80c71db3`; base `0x5d712af6ab8d67133e6cb8010b5d17cbb32fcd97` | ❓ Unverified |
| Proxy (impl: 0x63d177f4292d40afc11474de061142a3931ce1bc) | unknown | base | n/a | 2 deployments: base `0x52602dbfe48bc3981b893a159474c502f4994d66`; base `0x63d177f4292d40afc11474de061142a3931ce1bc` | ❓ Unverified |
| Proxy (impl: 0x7f23824a1e4fc26f351a7cc3bb330937fb58d4d2) | unknown | base | n/a | 2 deployments: base `0x1a61a91a3aac28a2fb2a5f3b563c4ca6d773c52d`; base `0x7f23824a1e4fc26f351a7cc3bb330937fb58d4d2` | ❓ Unverified |
| Proxy (impl: 0x80745781dc7a364f2ae24e7c8629ac184fa220b9) | unknown | base | n/a | 2 deployments: base `0x4befa34cd46d8d174ae96f46c8485a62c99acb9e`; base `0x80745781dc7a364f2ae24e7c8629ac184fa220b9` | ❓ Unverified |
| Proxy (impl: 0x80eda70dab20d6d5db08b7e342810eee22c71b99) | unknown | base | n/a | 2 deployments: base `0x551e0f49e027ccf6c72e057abed6947191f25ed7`; base `0x80eda70dab20d6d5db08b7e342810eee22c71b99` | ❓ Unverified |
| Proxy (impl: 0x8e9bfe6143246c12c097e208cf0b6f88e00ca874) | unknown | base | n/a | 2 deployments: base `0x3c56c8bfde420c1cf9739b0ac4f8008167cca5f3`; base `0x8e9bfe6143246c12c097e208cf0b6f88e00ca874` | ❓ Unverified |
| Proxy (impl: 0x95eeddf3727c6799b777115aefb10c62c6b93223) | unknown | base | n/a | 3 deployments: base `0x094f7fb60b5c9a252911d81e0b6d7cb516f28e4e`; base `0x468ed742c35954196f3f2feda30558492e7feceb`; base `0x95eeddf3727c6799b777115aefb10c62c6b93223` | ❓ Unverified |
| Proxy (impl: 0x97cca6b265c2868229c3e46d32f7ed64d8075c71) | unknown | base | n/a | 2 deployments: base `0x6b52515832d183dfab02f1d3a18182d94e2e3f96`; base `0x97cca6b265c2868229c3e46d32f7ed64d8075c71` | ❓ Unverified |
| Proxy (impl: 0x980e2bd25001c9d11659173cd9c87510bd03da4f) | unknown | base | n/a | 2 deployments: base `0x2e01efc54480750e4217c0f1452ae4478ac351bf`; base `0x980e2bd25001c9d11659173cd9c87510bd03da4f` | ❓ Unverified |
| Proxy (impl: 0x98ea5c83f05c0dd3f17e5597f965b28ccbd73432) | unknown | base | n/a | 2 deployments: base `0x8f067df3de1f1d34c74b28bb2a949565299a7372`; base `0x98ea5c83f05c0dd3f17e5597f965b28ccbd73432` | ❓ Unverified |
| Proxy (impl: 0x9a5289b88f3554e68d3a57df1a9747de4f2a3fcc) | unknown | base | n/a | 2 deployments: base `0x33a0062f23cde01cb0b16ea6a37a139f492de56d`; base `0x9a5289b88f3554e68d3a57df1a9747de4f2a3fcc` | ❓ Unverified |
| Proxy (impl: 0x9cbd8339df5f4a788e06fa9556235fb853f7ee89) | unknown | base | n/a | 3 deployments: base `0x259ec3e5043d8a2c81fcdfa51abd0924a187c3a4`; base `0x9cbd8339df5f4a788e06fa9556235fb853f7ee89`; base `0xe0914b5b7dba9b31a44955bacff13358f3249bb7` | ❓ Unverified |
| Proxy (impl: 0xa588854cc802fe98c6dee1f59d02654c96aa839f) | unknown | base | n/a | 2 deployments: base `0x191aeaaede6805b7e81e05bd2dbd828185713348`; base `0xa588854cc802fe98c6dee1f59d02654c96aa839f` | ❓ Unverified |
| Proxy (impl: 0xa5b793f95efb611ffb1dc53dab05dad8bbd2c959) | unknown | base | n/a | 2 deployments: base `0x0ca3127b2484d9fea32c04da191edefc185e5e77`; base `0xa5b793f95efb611ffb1dc53dab05dad8bbd2c959` | ❓ Unverified |
| Proxy (impl: 0xa88f43bc51365aa5801463ed087bee3de1065c9f) | unknown | base | n/a | 2 deployments: base `0x4ca29fcf0b6f48462b0b57e28f1b616c9e8cd0d9`; base `0xa88f43bc51365aa5801463ed087bee3de1065c9f` | ❓ Unverified |
| Proxy (impl: 0xaceacc6af46732fb37df86c39777c2e796a490cc) | unknown | base | n/a | 2 deployments: base `0x1b1fdc5e0039db182b5bd76932ef89f42db5719c`; base `0xaceacc6af46732fb37df86c39777c2e796a490cc` | ❓ Unverified |
| Proxy (impl: 0xb0e6d64f9bb8623089300f77a7b2f1f136c6b6f3) | unknown | base | n/a | 2 deployments: base `0x182c432b7f864256f44d483f26085e185893c9cc`; base `0xb0e6d64f9bb8623089300f77a7b2f1f136c6b6f3` | ❓ Unverified |
| Proxy (impl: 0xb1f7c646f9b952095b1fcd5f0540420db61ecd7f) | unknown | base | n/a | 2 deployments: base `0x93c51dca902dd6f5f32ad669bfd4c6e113892f91`; base `0xb1f7c646f9b952095b1fcd5f0540420db61ecd7f` | ❓ Unverified |
| Proxy (impl: 0xb20fd1821e3b7a91902950304dfc68b6c7cf0247) | unknown | base | n/a | 2 deployments: base `0x52ee652a0970da0c56d404fec5c82f95f9329c3c`; base `0xb20fd1821e3b7a91902950304dfc68b6c7cf0247` | ❓ Unverified |
| Proxy (impl: 0xb417b25a18d165fc4c9e97cc19cd0335c7e4ade2) | unknown | base | n/a | 2 deployments: base `0x52fb7e809442bef9821455bbbb74e980a0e2a1a9`; base `0xb417b25a18d165fc4c9e97cc19cd0335c7e4ade2` | ❓ Unverified |
| Proxy (impl: 0xb70896a6437d3888ef28b12081f50c89af498ca4) | unknown | base | n/a | 2 deployments: base `0x88ed58ff9f9e706b03f669a1d698aadc46079ef0`; base `0xb70896a6437d3888ef28b12081f50c89af498ca4` | ❓ Unverified |
| Proxy (impl: 0xb767d4f4de2ea5fa35fb42230a9dec7e0cc32f37) | unknown | base | n/a | 2 deployments: base `0x517eb931965daf5bb8244eddc7c01f5e80e21f34`; base `0xb767d4f4de2ea5fa35fb42230a9dec7e0cc32f37` | ❓ Unverified |
| Proxy (impl: 0xbac00ab336982a2129d4d10cf1e01292a3970a53) | unknown | base | n/a | 2 deployments: base `0xb545c1aa66c9a39cda656efdc91cb6052855f172`; base `0xbac00ab336982a2129d4d10cf1e01292a3970a53` | ❓ Unverified |
| Proxy (impl: 0xbf74c6b3f5633182da9e7687c8caaf774159eed7) | unknown | base | n/a | 2 deployments: base `0x2a3b87812fa5d090d5147766a894cbbed5784590`; base `0xbf74c6b3f5633182da9e7687c8caaf774159eed7` | ❓ Unverified |
| Proxy (impl: 0xbfbb3c814f276e9c35f22784ab3d24b8dcfcaaa0) | unknown | base | n/a | 2 deployments: base `0x6fd8823114ba83cd0776a2a743772be50af7a025`; base `0xbfbb3c814f276e9c35f22784ab3d24b8dcfcaaa0` | ❓ Unverified |
| Proxy (impl: 0xc20e4b932de069ca20307f46de43dbeee23a71f2) | unknown | base | n/a | 2 deployments: base `0x8ae8a524d6680a8e25be4ed34ef9dea744b10847`; base `0xc20e4b932de069ca20307f46de43dbeee23a71f2` | ❓ Unverified |
| Proxy (impl: 0xc2f9183d19caa6e8c2c88a1908449cb2f9fc477b) | unknown | base | n/a | 2 deployments: base `0x0b92f8e0ec91173acd1857553582fc1a1a384a71`; base `0xc2f9183d19caa6e8c2c88a1908449cb2f9fc477b` | ❓ Unverified |
| Proxy (impl: 0xc32a4cb892d773131f88d3dda00cf181873c1a5a) | unknown | base | n/a | 2 deployments: base `0x5538ac61b45d734356ba7fdf520a45efb96f39bb`; base `0xc32a4cb892d773131f88d3dda00cf181873c1a5a` | ❓ Unverified |
| Proxy (impl: 0xcc23e29a1c4a8b83ee5d0c961394698e15db1f62) | unknown | base | n/a | 2 deployments: base `0x9c6a6de0b693f47711dfb0f92c0576d1b988a528`; base `0xcc23e29a1c4a8b83ee5d0c961394698e15db1f62` | ❓ Unverified |
| Proxy (impl: 0xced03d02d7311100e9ffc337d5fd5a42cd28e998) | unknown | base | n/a | 2 deployments: base `0xb8a949efa78d551d29c8329286791d0d9597397a`; base `0xced03d02d7311100e9ffc337d5fd5a42cd28e998` | ❓ Unverified |
| Proxy (impl: 0xd24a0cf01853eb91148629ddf5d88ce93e357f18) | unknown | base | n/a | 3 deployments: base `0x3112f6961b0b8689201f635eef9339228956fa28`; base `0xac1e53015f6b83e23a5bda4da9da387d8ba5a678`; base `0xd24a0cf01853eb91148629ddf5d88ce93e357f18` | ❓ Unverified |
| Proxy (impl: 0xd308debf4654b51ee0f86eb125d0478b0e4429d2) | unknown | base | n/a | 2 deployments: base `0xb20c66b13d33749c59c5d6e9cf5c59423c1403cb`; base `0xd308debf4654b51ee0f86eb125d0478b0e4429d2` | ❓ Unverified |
| Proxy (impl: 0xd3f5f4c601e3db0addfa81486df20ac8d6a4a247) | unknown | base | n/a | 2 deployments: base `0x3c2e4c6475b614659ef1b5aeab98e86718142581`; base `0xd3f5f4c601e3db0addfa81486df20ac8d6a4a247` | ❓ Unverified |
| Proxy (impl: 0xd4d15e5407b40c977f9f0b1316a5ea051fdc0cff) | unknown | base | n/a | 3 deployments: base `0x4fc01f5dd342eb494d885b8cda88f2f07805067e`; base `0xd4d15e5407b40c977f9f0b1316a5ea051fdc0cff`; base `0xe4f54f961d400e71c8bfeb034b6ba132d9381b5f` | ❓ Unverified |
| Proxy (impl: 0xe07f6b8d67179bcc496b77642466cf934dfae603) | unknown | base | n/a | 2 deployments: base `0x9d06618a6a8bc4b8c94fee75a7f23e2492a8c168`; base `0xe07f6b8d67179bcc496b77642466cf934dfae603` | ❓ Unverified |
| Proxy (impl: 0xe08ed179891d5869483c81b35123ec29ef192434) | unknown | base | n/a | 2 deployments: base `0xb04e0632f7d534438836d83275f8e592bbf35ab1`; base `0xe08ed179891d5869483c81b35123ec29ef192434` | ❓ Unverified |
| Proxy (impl: 0xe360336a76a183a14f509dc87f4984b8db494cee) | unknown | base | n/a | 2 deployments: base `0x2f00a22e18d07da6fcacfa6f7c27f253a31521c6`; base `0xe360336a76a183a14f509dc87f4984b8db494cee` | ❓ Unverified |
| Proxy (impl: 0xe6793b1b6c004ec8630673e77c178f79749537e8) | unknown | base | n/a | 2 deployments: base `0x0aee3550eea90785c7e7bb382a36c3e87aafac78`; base `0xe6793b1b6c004ec8630673e77c178f79749537e8` | ❓ Unverified |
| Proxy (impl: 0xeaf4a3636b2102b72b1b6036f09820399b47643a) | unknown | base | n/a | 2 deployments: base `0xbda8683efce6ffbff15a4346c29ddbe2377084b7`; base `0xeaf4a3636b2102b72b1b6036f09820399b47643a` | ❓ Unverified |
| Proxy (impl: 0xf0fcf9f777f842024bb60a6439595b3b10a1e929) | unknown | base | n/a | 2 deployments: base `0x9631b387bc4c8028cbe241b6b07f4f874370c998`; base `0xf0fcf9f777f842024bb60a6439595b3b10a1e929` | ❓ Unverified |
| Proxy (impl: 0xfcfb918dff6a66be1491c0551cd4fb3e653ae533) | unknown | base | n/a | 2 deployments: base `0xdfd673d77b7800a57c8b3e49227d5ad14f1eed4c`; base `0xfcfb918dff6a66be1491c0551cd4fb3e653ae533` | ❓ Unverified |
| Proxy (impl: 0xfe16935c4fb04741ca76933fbf01e70970d1d770) | unknown | base | n/a | 2 deployments: base `0xb12877e2b97eaecd829c42d2f4af841a5484d6d8`; base `0xfe16935c4fb04741ca76933fbf01e70970d1d770` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c22e5eee1e0604b7dd9a4d5859885eff63b8658` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10178b3daadb121077c356b2e24cea67a8a9e15f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e1318d3b72d47abf80c9a3a47df140669839a9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad5b7ecb88a9acfc89e636ee131e5a27a5b5c413` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb36d9f3915d70bc81e90e8d61c4582472775f307` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2932308142e3f9e7b4ac7a3b9c5067f808cfcf64` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x332eddfad474b4cfeb3dab8b437ecec21e4ae0f9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x44ab6d4e14af5568265fee9a55fe73b7d81468ae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x971e07e5b3d7d8179aa3dd309121e3c391002a32` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc319cfd796251f510b8c3e74bff93bef79b6a1c3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc3edd9ee957f9858d21ea0afdf5ab5a3f37ff3af` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xec6a12eb5593f450fc238dd269fcff3de8166098` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x03421c4598f9b1e20195b3abf0bdf6297e38d325`; base `0x953b248f203d57e65dcb2e132fe679cbee06b278` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03dcf3121f46d8e40c8ad5cc54e31eca31e00782` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04599b491ee50495eebc6e077ccb755c69e95a78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0518ea893ffc77d29d9dbee77176eaa526439e02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x056e2ecf01156fc0ac3e4c1433e25410b3045ba6`; base `0xa8e4ca07d21ad578bbd85aad1b88b8488b479d90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 3 deployments: base `0x058d5228eb99b793ee4d30f33ec57448bc0f77cb`; base `0x6f40f484c1238f6f0d4408f79b9e17bde3f24d4f`; base `0x96c092232b8d7e03e04eb623337fbda5893ec264` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x05c74da56fe42b9918947a3687e72e6bb3d6f9c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07010862d5e8f17ab712aff99c9998ec49ac1775` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x07b5f96dc19ecb46b1d7a40e41ba872f304b77b7`; base `0x4c4bca4188f44040c17bb113ebb18b6fe0e0fe13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c7523a9a4ad9f9f50538926c5361141d357ba30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x10178b3daadb121077c356b2e24cea67a8a9e15f`; base `0xa4d86babf755695eeb815f1b47ec61b100c5d666` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10cc4eb3ae1a5ff942b4860da1245964236e2f3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x118d94376adc1ad081d43b81988e888fcdd89c89`; base `0x2c75d4d8cb1448228067ed96451118de9111f191` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x125903045704f0911a4f2714bb256b0e59a8025d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1553cca8e8b04e445bd6c6ca6192e9591070f984` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x15f1fcb0ca589086fd0b84184bd6a375699bb2d9`; base `0xbd86ef4a231a2fb3324ea653b355dce2b239e6f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x16187f78785af2fdfef78bf725024f95602744c1`; base `0xcd2e4270a422ed634628da8b63d14b3af56928bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x170188aac3057e90c15d7fbbc5e9a251ade4a940` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x18411a37a124c3a6eac9fc01ced8097d29e18f30`; base `0x8da57b0d36f89c828aa3503385f2ad05206fdbb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18d34896eb3ec65153eca19b224e5d1ad3e41d71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x197e5aedd6c441711f766d4607d3cf1b5d3e72ef`; base `0xd20c74308ec2aa69bb00568aeac21006f6aeff70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19b15bd9dd5c97f110702e2496c9b651919a2d01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a3cd4d4be5cbae1f16e552ea87505a6c3098b48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x1b508a55a3cf4ee9d4aa994f6c21bc933b73584a`; base `0xc8eaad19308b3ca8fdeebd42b64b30a2aed30801` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x1b6c0d6c35f1b566494fdab8793723cb0c99fe5a`; base `0x364eea8cbb0817aecd269311bf1f820963ead173` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c85ed9361328a205c26183b9b521a9bd947944f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 3 deployments: base `0x1cf61932ce1de265422794081c471f6cbdb26002`; base `0x94932970b09a80cad20987706812acd903afa0ef`; base `0xfda508dbb19975caf945c18b225b41491fff5274` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20ef14653225c81decbe5129ba348c1bd6f9451d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21448ec05d0c56ce6f27015dedca5bc254e1fc49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x256c2e32d99cc8f0960efa0ef4192ccbcabd19c2`; base `0x915708beeebacfbe08550fd114b36b9cf49eee17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x2734bb4bffbf8c78e135a5a2b18c23a61c798368`; base `0xee65f2fd639985675ab92d73078f7a0525c11b16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27b4d7e5aa903ae1ca1a71376687d0f550083685` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28b139d1efa858b0901b3ba856a777c5981b6fa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x2a7764567609a62b6398602041dfffd3c0e7b837`; base `0x72021d813f5f876c62d22c70c402d7fa14a26c8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x2b29cc5c6d559c281e9e42e29650ee0b9eff83be`; base `0xd90e5b26ac12e2e84c03d1ce1668638729523c12` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x2c56afebb9f0d588cbfd6cd434b906a31d5103ce`; base `0xba4b5ae8af0da8421349e20bfc1c049d0b531ddc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d00fa26b7df307e55c8ebc1b51968986b77b904` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32d2346501f94bfdef3f3cb8c41fb3d168a6ffd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x337e56047745c9d33b3cef445944ad955ba87525` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x365d61ad703df85e40be6b2651f8e01c270fccba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x3731438b213d89e97e55c1b259c9a62fb5b4f085`; base `0xdca771b6896c0b0fed0115c4c181ec76167f5316` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38020035ce2df8af86ba8b2bed357de41d4c037e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38de5bd4e7a6fdb66a25329b23a7a7f9726f5323` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 3 deployments: base `0x3986aeff88ee8b558f93ba0501b391262be49022`; base `0x45591a338d7b8d057c632ae0d1d2ba7ac4b08b24`; base `0xfd8de925890572341ce4453921506302beb99e14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x39fc1761e258e60f1232590651e3b9f6452d73d9`; base `0xcd6d3a41952d88085bcadf13817a02b93fc1919f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3afb0b063a0a961eff334538da3a84a3c4754702` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b878b66318dbadfe106071c53941c4b1ca5d4ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e1de6c1014ce5fbb6ff508df5579bff9a9e9f83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e7f74e08b2d3adeb507bca44e8506d19f74342a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ec3c898ce539869fd9eb2bbec73f06064f7df4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f1055384d743246006160386197166cf7e904c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x4117473373636425818720753a233faf89b0b9c5`; base `0xfae04c3feffe5a2c4af2bf81975518cb5fe3a471` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x432a0d5b1dc4aacadfb7dcf19ac57db54dfb7dd1`; base `0xa72bda4eb4aed02b94e8f3b18b3de880a5e54f49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x433dbaba0b3dbf024f81cb984b4bc42136642e25`; base `0x7bdb659f06d06cb04bb81aca0240535d1e37ffe6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x43f901adc27e274c9165dcaaf6a06bcd111d15ff`; base `0xeef8cf629746dad8c82e41f3d06a2e6bb9e265ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x4563998e5aebd31cc0a0c70bc977d44e7304233e`; base `0x8cb1c0130fafd2f178677b8710279ea9843e0f2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47052ca079ca55972653c199f5e48c30d9e27b3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x47b6098069fd0301bc9ee48cefdde6826a23a1e1`; base `0x95b5f3b5e3b72b3671409be735f0075c09b0c753` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x489e4e995b09a076c95a206858e36bb6d2f45fa9`; base `0xc076fb6988bc98737df8e5c65e1a549ae77cee8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48ebf6ac337cbd028379531abb6e1d64b1d3aec3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x49a550158efedf625be4669f06bed010a422f35c`; base `0xf59f7c4c48d1674390d1743263210cf35eb7bf80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4df2e72d017b893e95e34e8abfcb6ea27faeee62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x500bf55c5ff4bf190091c8a36378f24fd60b9714` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x50edf4660ec6cad68d27e9cda0cc3d51f9e3ae28`; base `0x66143550bb478720f7cd35a0a1cb8b3a6fa6b4fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x510627c770ae242e0ff74eda9fef707ad1e3317e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x524c02ab879825daa11ee05bf31815c808a72998`; base `0x576aec2bb5e2fc65af3598cc5d03dd383af1925c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x537b674e8c4c0aaeb95973bc5b16a67a77a789fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x5652acb6830044e61fa9cab101402f5c70d06423`; base `0xc9077674bfd1c42acd58121a4319c48d931e0594` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x573af95451d6e2d5f2074fb64c64a3795471d060` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579021f5068db600ac081c08522d47f5b3a9a842` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x5920c1015f11d915a3143e4fb11a4fc9c014596d`; base `0xb59ccd1beb9df80817749fa5ed7204b2dd8ef51f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a8d50ac916d1ccc6c28932d4a834881bb3d6735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x5bb60443fdfff786ca31cc6640517677b62c3410`; base `0xad2ef6a002cdadbee67d9fe4ac8a83a84b0e9c2b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c4b53d010914ff18d89f64390750b24df835bb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x5e5b346bcabf9442633465ed9bcf5541211ad640`; base `0xdc685d5c9cccb40223362340af1766d897a40fd9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ea8fbd2b40c89a76151f23f4f6930b5a88985e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x5f5b32c6e4d3a5451854ab5b071d0d0f4e4e96d9`; base `0x96615e9118c934047c8eae8d4d9de6446284cc30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f75c65a8608d3f78fd9f46c271df3964324d4cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 3 deployments: base `0x633cf9badf70795aa6820ecca8c4f3bb7ea88aad`; base `0x704153824c4b66ea889692689650a201e2f81b76`; base `0x77338291c576e0a92f04455e26a30bf9ce75cecc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x634ff00750a8bb6abadb3d086320ff1811773d97`; base `0x9a60e843d5d778afa0e2f3c6167ae0eda8ed918e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x641239feefe13506871a2817283881c8c7e453c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x64704eedfba86290abfd5ccc35f93050f9754cbd`; base `0xa94c518f5785bf158705bf7b0c27cc4e41f93da7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6477be7378dcc9336e7fc2502985d4376bfc74c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x659566e73ee8c685f8d355098d0ca56b9828274a`; base `0xdd0f348c1286196ec56c4ad10414a3264d43685d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65e64be825f84a133e45b960258fcc26d20cde09` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x65fd48db24b7e064b64860111d1f3ebf81fd590f`; base `0x788407e4a3c172f2cb42f74c0f9f575347501f3c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x665d86c3be6c29d78f6ecb80d61f72d659ab17dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67a515789163d7faa1227bf0f0df565f7694e46e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67aa031e4f8609524de4f3878257a79998ce088e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x685fcc40082e68c7fcdbb16fded407b250c48519`; base `0xa075aef94816779a1989f59d77f5a4a4217d060c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x719029a642f57175812649ab29abf0c2832b0af8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73bd647ae5345fa482a485dc580a1cf50aa61ca6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73fa944e687fdf1d254391dd25cc3d7033d2fb4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x744347b69286bdd3917e3ec0a4d0bcfdfbb01b95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x74b5b0aac7929832044e5cee30b3ed2ee52f2cab`; base `0x914ebf0f0f1e70f556b9019929cb736daf4bb762` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7582787d3ebdf53ec863e30e930bb49c8aadeb37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76fda9f40254eeee2b14bc6ba4ec7afa71d1dd89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78533c8196c0570f2eb99d630bacb368cbcc4186` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7863491e5118bcdbb859ef580e2dd83bb31d9a6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79cf8e6880a07e5f4bd8cf805e59c22cec89935e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x7bf7049569f0df92f2a9a1eef2cd7495b406b820`; base `0x9486094f658c61e00aae30c385488ea18bfcc46c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7da54c59c657ba7862b2e929b0778370d3825713` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7dc80b76b1632e32c76c1fba2b3f83bfc2297d66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x7f205e4ac18366403e3510a39659a568c82bd425`; base `0xad5b7ecb88a9acfc89e636ee131e5a27a5b5c413` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x807fe596fe8059d08d8104aca10aac6348a9cb07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x81bdff42a66be3c0834203c7f090e23224f8de0e`; base `0xd7f77750bed58015b24a4a061f24d45836604f1f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82acfdf38a003d92bd18d171877e897cc74f0e5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84ff6013e88a9414205f8ea9de8427fe91815fc2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8af7a3276b482474c3194fc76554c7b6637f7262` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d45e1b1f3706e05b7f4df53b38a0cdb486f180a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x8fefff56e3887147828ff2ad8a39f887c6e2eb03`; base `0xc4aafef081445fd6fcc794f9b47e686b3d30e05c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9074fe16b67a1149f459bed9668fb11d5992c445` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9153892418550b2391fa66a61024b3825471c21f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91a768325c170e0ef4273b46e10d4785571ed525` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91b69a798ed2bbacbfb134efdbf1b54f11a13df4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9230b0881db099b2cbcea8513066aba7ecc285be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93a34634de381b60024d6e7994ce0bcec0b79dee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x944b75667dac9cdeb02f6c7525268f81498db80a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96145cfff4bd758b3d08257db78ac88b06bc555a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x968cf28b7a23d55efff8afc958c31686371e17c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x96e524269f7e388db12478929bb769784af3f192`; base `0xdf845e7f47c09d5cb3dccc42f212794612f3ba1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99953975e5945e2c558323648d4805aef4376a94` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bc4b2680b24bff7abe714d367f41d31f6b9c802` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x9bd5f5c561e716cf349fc53eda039f32103282e4`; base `0xb2ae39da6b66e1db6da5846643e96fadbc49bb49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e784dfd71aa4798adf3eb43fe99fb819731790b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f2613b75317b4c291e1edb87898727d7136dd23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa09063d8eda6ed02ad389f135c8a555af103bed2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0f65c128e6eeb274d349894bbfd3b68ebf5b075` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2ca3ea18f83120b1eb1a5069a1b0db0aa615a9e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3235741fcdff3957ac1fb9f577b169846a43160` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa44ae01b744bd310414e0f92acb66fd716d2a208` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4c89ffcfefe2d89d45a31eff5f7a034850489b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5cd7ac86bef3b036ebce435d5f83eafc686f4f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa638b43f05a59d095efb9e37b967e7cc8be57a97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac2ac0c71457f57946336a6dad64205ac5f1cf79` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xadbd1705c341b325fbec6d62fccae12ebf40983e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeb6426df30190db4905a5511674942771b59a7f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb11d4f4cf16e487eec7369a0576b3cc7998a893c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb66b859a5f79543df0231c0e5e86691d40537d3b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0xb7d6a573916f2a84c70097ea069caa9cb264beae`; base `0xf7916341290a7e0631b30fabc0531a3adcf4dbcd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbcb7bb43213be51a8cfeecd651534461c39df7af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf81f6ccf4d6579a52e9341900a7e7fba0346ad8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0c6588a35b6ef7d4cf3c52daa3e102fac8399fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc41a992d6526b79418599590aaf6aa3245b6ed08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc446756762d90ff1884ad7efca64e8b0b0a2b94b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5534795514d94a96f8a4455760721528914610f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5cf6bc5db058b4330ab3687bdafc575f800cc0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7f1a1b62cabe65fa5474c4d63e2c791f24b81f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0xc98e75ee3f4278e78c7a87babccb3a4e27ee9da1`; base `0xee36f911e0c632818e82d7a1c13723c0eb918986` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca5bf1aae884932d4444a52f1cb9194da0f3bf82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca974950489d55d09709aaf2b8335b6c6ca175d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcad830475291e09727a30d413a872788de46cce4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbf5626bedc7f4fbf216823d6dfc5862ce9dda27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd4163f21752839a7203db7275a496478da87ca6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf83f7a7fb51da22c29e4728849a12b296048585` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd07173a34b795ecc0e6897b0d1623577a4b229b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0xd3781dce6654d3434d493cb66852ed5d703052a3`; base `0xe248358495c075ea4a8037a933430a1d07d93d8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd512bfc58dded88e9340c0e809bd5307cfa7551e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd62610c249422faa92b6a0308f2619e0070a90cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0xd8e561599ee62feca2548b68d37c9707961561ea`; base `0xf31466d944a02ff4d3e191ddd752da6f97ca672f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdae75fd63661e509cfc7bee40edd9432e3ceacbd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc205efc25e0555f1be609ef735b4eb386bfc885` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf35e8af3cdcdc3fd97a5b47ad94ecc7eea26aee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe13bbce3fb47d76cfdb26327a76ce38b3c52d1b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe53a48c5c7ebbdb53d8db223467a6a5c87a40cc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe71e46776763263e2a5c4086410b6dc11559acfa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe76d3b569d1317424b7aaffa70ced02f8ea1a514` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8d795950068cd2fdf725b31af12bbee22ed4683` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe933a8190f6cdf8f9e18156d0673c0d8dad560f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed053883b2dfc4a8ab8371bd9e60adcb0dac4f19` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee3810e1c8347370cb97ed18b0d5ce91f86aada8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeecf67fc10d9d5de89fcbcd94792265ab2d4f879` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef6b45533dcf15f1b595ce2f943296102ff60c0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf026b1bb9d9033b25e12b26803eb5359c940c42e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf04330cf9a47dc4093b816b0656db4e148195bd5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2352fcb05a442049e39bf808dc4cc16b49857b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3c3f26c26a0b9fbfb7ae5d3d2d5342e744b02d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf40f57fd90aad52d5639620a3f93bdade96059ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf502e95ddb90d85b0f3625a4c87bddcf122d72d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5b5dd2696e1ba79ff6937ef4b8b31479020c54d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7978c54b3fdf727c2decdca03f97a73c225bd3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7b3fb9613543b8b7354d4a0aa1642e63704f22f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7babaa960400c35fe83c943c970ed503847b205` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb305b1259aa990a17dfb30da371ecba0fd09574` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfbbd2c20fc2736c8d3c2bc1b70c2c82e5a441187` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd90289267e033da96d84f56d85c9f5e6cd9ff2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0xfe0215c4f9cf7ba9ae5fdda870fda32153625078`; base `0xff390994863644247877e31d02bdb0499c2eff1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe4d3c0b083874ae5654da4f8fd85242ea10ebf5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x144b7e3af60a2f6a6ee3aa86d7cbcb090b021b59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1546a55fe5de0be78aaf2a258d348924ac319574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2281b6fd7ef90e4e84bdae209fa8b93ae1ebc023` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23f7001f9cb0df6095e5e3811970abf92bbdeba7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fa64b593fd0afe3077b7b295da72f2ab33f48e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x426a8848c140f150f2e5b4effead43da7dd6433b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4353719ccaba7b29dc1270af0476e38b35ef6180` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43f901adc27e274c9165dcaaf6a06bcd111d15ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49e4d4021b624f5cabe8e3dc8eaa6a52261c7a58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x56d142db21d1f6761c2b45373bdff5eb51d0b00e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5811b59849cdfcf99c099a44c0e3855dd70274b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5afebf92e99ccb0b13215bebe85dabc63f8ec338` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f75c65a8608d3f78fd9f46c271df3964324d4cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f8468852a135bb6de154392401f4d42fc4f5c35` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60190c5581985a8689ea9e5bd245b42d526b345b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60e7194c1325ced60ba2666e7398127162313a0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x738db78bf64dcf2d9b6d9d9a5708083d946727e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84ff6013e88a9414205f8ea9de8427fe91815fc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898ec6efce764eccdc2f4b5923dfc1e882772650` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c65122c46caabaa6f34fc363765ad2f83f09564` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x936f7755e057a6e36f28dcadc374a85a47f2dfae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x976ce6205d3a95e638090d870cbc915a32683721` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x979522a1eae58854108c7f74c118f6c3a7277d95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98b378844f5c61039890aaabf111e3467b9c965a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dc30a26736be6778aa72bda2dace953388b500a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa33471bd66cf2a25cdc7f13a8bec09e532f9c96f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa6093857b0c3eb28b3cd0b78477c88d583598df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb588343809b1729abebc0f4fc63a7022a77cd55f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9e0ffeb3591525de05cfd32c81c57ec23459111` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba4b5ae8af0da8421349e20bfc1c049d0b531ddc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3f045feff7b2f2414c0c234bbefa41508baebc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8022f981b82745e61f6e44a89792d85fa025d71` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca0bfe4e35ea9631a67c25be939721436997976c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbabbaf845bda3546c98c3e8af367d1b0bc2440f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcfb7207d83a613e130eb26476b87cd35b47ebd63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd62610c249422faa92b6a0308f2619e0070a90cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd62c1f884e2d266fd0cf80bd5518f9afdc5eaf23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0bf5d367aac520f171f561c2bc49993ea32a02e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3c3f26c26a0b9fbfb7ae5d3d2d5342e744b02d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9e4f75e589703f152146aa5efcde5e9440f9a22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9f2ad9ef513059c0c3391a73f77e0bc72f872e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe4d3c0b083874ae5654da4f8fd85242ea10ebf5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ezmanager/audit.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 7 | n/a |
| [Valves_v1_5.pdf](https://github.com/EZManagerCL/EZManagerContracts/blob/master/audits/Valves_v1_5.pdf) | Valves | Audit | 2026-05 | fresh | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1d741af84c01513564d838c7461218c685a64a69`](./contracts/base-8453/0x1d741af84c01513564d838c7461218c685a64a69/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc5cf6bc5db058b4330ab3687bdafc575f800cc0d`](./contracts/hyperliquid-999/0xc5cf6bc5db058b4330ab3687bdafc575f800cc0d/) | ProjectXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 293 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Fork inheritance lineage and inherited audits are included when available.
