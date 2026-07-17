# Agentic Audit Brief: Pangolin

## Project Overview

- Project: Pangolin (`pangolin`)
- Website: [https://pangolin.exchange](https://pangolin.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.933Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: avalanche
- Contract surface: 152 unique implementations (193 raw deployments)
- DeFi Llama TVL: $2,337,252.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 32 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 198; live-surface contracts included: 193 (55 live, 138 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/15 (53.3%)
- Deployed-live implementations: 15 of 152 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/15
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 137
- Unique implementations: 152
- Raw deployments: 193
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 40.0% | 2022-04 |
| Omniscia | Tier 2 | 1 | 6.7% | 2022-08 |
| Paladin | Tier 2 | 1 | 6.7% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeCollector | unknown | avalanche | n/a | [`0xac61fd938e762357eee739eb30938783366f43a7`](./contracts/avalanche-43114/0xac61fd938e762357eee739eb30938783366f43a7/) | ✅ Audited |
| GovernorAlpha | governance | avalanche | n/a | [`0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | ✅ Audited |
| MiniChefV2 | unknown | avalanche | n/a | [`0x1f806f7c8ded893fd3cae279191ad7aa3798e928`](./contracts/avalanche-43114/0x1f806f7c8ded893fd3cae279191ad7aa3798e928/) | ✅ Audited |
| PangolinRouterSupportingFees | unknown | avalanche | n/a | [`0xefd958c7c68b7e6a88300e039cae275ca741007f`](./contracts/avalanche-43114/0xefd958c7c68b7e6a88300e039cae275ca741007f/) | ✅ Audited |
| PangolinV3Pool | core_logic | avalanche | n/a | 5 deployments: avalanche [`0x11476e10eb79ddffa6f2585be526d2bd840c3e20`](./contracts/avalanche-43114/0x11476e10eb79ddffa6f2585be526d2bd840c3e20/); avalanche `0x1150403b19315615aad1638d9dd86cd866b2f456`; avalanche `0x6dd86cfbd864647dc10703342dd5ea8643c2a2d4`; avalanche `0xb1c039631628f4bacc57a6f8af878ed6136c0872`; avalanche `0xfc2bb1598def8283ee36718f9adc0a721fb2e722` | ✅ Audited |
| Png | unknown | avalanche | n/a | [`0x60781c2586d68229fde47564546784ab3faca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ✅ Audited |
| RewarderViaMultiplier | unknown | avalanche | n/a | 34 deployments: avalanche [`0x13b58aae6bc4196e7dc4315472fdfe9957fd0b65`](./contracts/avalanche-43114/0x13b58aae6bc4196e7dc4315472fdfe9957fd0b65/); avalanche `0x13e349bd7e110effe113b38c879a2a6c5a73c738`; avalanche `0x16ca5886edeeb1e3287332feede25ad1d5e03d87`; avalanche `0x26aaabee13e341ad8219bcf42288b4ec0ab0a34b`; avalanche `0x309f3d81ec57ea9ce10fd3a93b948a1dd9ab1d8c`; avalanche `0x344c5a70b03dea147d3c28c153180fe6358ea0b8`; avalanche `0x34595b8dc66beaa639f7b714bd6b2858167b2158`; avalanche `0x39ccafe11906dc2ed4ddee7b2367e279520a280b`; avalanche `0x4b94cca7b31101c5b65d52ca39d12a3a5d6eaa78`; avalanche `0x4e11b9e0c97995adcba7256174ef264b939aa3d8`; avalanche `0x4f7301de376f66b97ac29bc039024695ff996775`; avalanche `0x510bb2fe06696f45f0010789116ebde9792677f9`; avalanche `0x621c32b8b559d88290f05dac26a667d682c626ed`; avalanche `0x68ed5841521173263aa40062138f36935dbfa4d5`; avalanche `0x6b5f9c8285540475c7187f62ab21f54cd19e08f4`; avalanche `0x6e2b032c6d802153ddec9db63336325bdefebf77`; avalanche `0x6e7eb7516beb6a4f0a65012d6e730976c204365b`; avalanche `0x7a5962291cca5c0963a708b927878efb2356d791`; avalanche `0x87bc67510af6b972f7c55e510aca8a1401644e59`; avalanche `0x8a0a934b2517e6f70b26c254dff6fc70d900e6a0`; avalanche `0x8fc464eac7775cd1d7e7a80364d36223d69fee38`; avalanche `0x95850d5b07ec1b6aaa528d078464d952c4cfc5de`; avalanche `0x99b9af66ac7ae76398f05c251b4c66bab8da1867`; avalanche `0x9e88573afcba43d5e0863e9ed992d8f3135d269d`; avalanche `0xb0f89ff3d43ca34d746d66eee8784afb73d134fa`; avalanche `0xb3e913b6b65d9db7a83d4409a0d1b56257fae25f`; avalanche `0xb9d42d82c485e6d39db2b9957a7b197624d3d632`; avalanche `0xbe09356ce0d549329dbb4bb67dad034b884c3cd8`; avalanche `0xce6726b5b3cf266ccc81639108571d9f6bfa185c`; avalanche `0xdf6e2ca39faad5feb3336d60ed9aab1404f2d36d`; avalanche `0xe13eec4c05d5b964536ab36272f6f5dbd4c6d4cf`; avalanche `0xea4ee2405f18facd7626f5773ea33881fc4060a0`; avalanche `0xeaa3adad7d201577806954b46880cbcc675cdd18`; avalanche `0xeb037024dc060100191a46e404e03f363d8e6281` | ✅ Audited |
| StakingRewards | unknown | avalanche | n/a | [`0x88afdae1a9f58da3e68584421937e5f564a0135b`](./contracts/avalanche-43114/0x88afdae1a9f58da3e68584421937e5f564a0135b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ForwarderLogic | unknown | avalanche | n/a | [`0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642`](./contracts/avalanche-43114/0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642/) | ⚠️ Unaudited |
| PangolinFactory | registry | avalanche | n/a | [`0xefa94de7a4656d787667c749f7e1223d71e9fd88`](./contracts/avalanche-43114/0xefa94de7a4656d787667c749f7e1223d71e9fd88/) | ⚠️ Unaudited |
| PangolinPair | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0e0100ab771e9288e0aa97e11557e6654c3a9665`](./contracts/avalanche-43114/0x0e0100ab771e9288e0aa97e11557e6654c3a9665/); avalanche `0xbd918ed441767fe7924e99f6a0e0b568ac1970d9` | ⚠️ Unaudited |
| PangolinRouter | adapter | avalanche | n/a | [`0xe54ca86531e17ef3616d22ca28b0d458b6c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | ⚠️ Unaudited |
| PangolinV3Rewarder | unknown | avalanche | n/a | 3 deployments: avalanche [`0x4e8b940c5ce75945f75d892524c88985b2bd0427`](./contracts/avalanche-43114/0x4e8b940c5ce75945f75d892524c88985b2bd0427/); avalanche `0x4fdf9a3a6a9fa93938478f5b2769cfcc5c7ba14a`; avalanche `0xba19af51023b02aec7e0c81499a2a2654aac2f1c` | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0x757121c9a8259c4d6b6956c283355b2902a6baa2`](./contracts/avalanche-43114/0x757121c9a8259c4d6b6956c283355b2902a6baa2/) | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f`](./contracts/avalanche-43114/0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f/); avalanche `0x7bca9241994bdeb7414d771bb49ee6eeeac52b02` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (137)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PGLCollector | unknown | avalanche | n/a | `0xdfb836fc13024f7ca860c096966d95330b296b28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x034e7feeafb3341da0b72315633ed504721f9b57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x069970f5705dbc64091fc35347c820eead842a25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d065c0ae86bfb9d4018cb746bd86be710eb43c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0df7c5ad59ec2095d1543c6213c9876134e9587a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e7c2ee1d16316c082dd710dca683461f7b21126` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x100b9693c40fcb361331c71243fa30971917cf98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10d3fbb3d6ea430d99ad62bfe9385ffbeecbf013` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1128f23d0bc0a8396e9fbc3c0c68f5ea228b8256` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11e9e5219d8db37c76a522810da7516a8d6d51c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1242e09dfce21581b3e125931bba1ed7fdc1f194` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1344511969271b10fba5e8886cf80006208ad953` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x148aa9315a0f62e2a6891d5c3619ff02fb07702b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19d02437688f58997e8b391b311d3a0c350567e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b1b3fcd517ecebd68fc769c052e97ce63fda672` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1defb037b7fceeb0d87453760d006928dac3a61b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x231b558cd4de587010190bcdea737a0ad63d3954` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x268c3b9cfbafbc10463c54b59774860eabc2de1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27ecb0391ad611bbd9dd5e7e8a19db3fcae41ab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2824b0cfe39e63b19c194aae266d0b3e086d0c0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28f0445a8a764bc27095a83d723c1284dd0b32b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2dc19e8324bedb31300d44a9805f94cc884ae62c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e303ba0fc6b64e47b3a6ce71b25b458d6c74e3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e9433248814182d4e521bee45028e7f8ca96efa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f62fb55b8ffb129be9e7e775e634d82327680e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x358dabacc06c316be7fb94c36e13584cafb81eef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38361582d903dcee70a7e36d87c53b1c464a024c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x39b304c7c9b699dca03dc551ee79c320e8811ced` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b5c658112f0b8b64f72eccd7f9bdaeb7cf9e73f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c4a7b72e50686897b9d4507f13d1323c0132599` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3cbcc802744d22cd16d7f746a9233bebe2a39b89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3cc5336b4974c8f45154c9c87b4f594e69d46587` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ccc877ac0dc7553260a35e1e3967b08a34d7f3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d9b0f116b9fd4b35a358ad521b3dace5197340d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x408e9b06bac4ffeea0c86f46dd05ee77c2e14cd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x415ef34ae0c2cd19f9bb1000a61c1f58b5d3b2ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x43d5fa3aa458c13291ba72b1758078646584f7b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4443cb2121003ee312da87a0295c38834200eea5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44edf588b28d21fbe9db2f646bf86f6a60698710` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4505009624bffca494cd93bc2d9e815d89422603` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x46308b8e0ca25221a7ade75c86115625882cad8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b3d0031fc6b9db1b33cb144ea874d72e6533c28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b597ec242c984c2ee365249043bfdb4ad01f28f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b6248d10f592fc35be952ea862f0f0c76b719fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5047c428724632286f37d0968cf0e6bf721c5aa3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x517312a4aad6599028abed7e9da8ecef8a1cac63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52ee57974a4e6f8c332b03373081e2c0e081d89c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x544cd71c623786a4b40bce52ba7764ad1a16cfa8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5485a0751a249225d3ba2f6f296551507e22547f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5789f56a709751febccfbd45caf176e08767c0e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58892213f0403c64a1be8e5583f651bb589d3ebf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d8265b933e9b9c6c99173f1a496b4cec88aa587` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dfe6db0f904a27a52f543afd6b690784a44cac1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e35df51bed9c6e160d8822e64ae4be17063a93c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f9bf3d12bf4fc8becd9c19b041644efcac9cdb3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61285620d2fb2876b721a1af1e5bc24eaaa7b6f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61e0e33f2e99d04fb99a6a4a74517cc853f13d2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62b18753830fea66f0491153c69da72ab4c77706` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6410f55d84edd3e6e1d4529ee93014dbc451da61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6948ac6b09b1242b9ccf12deebeeb4170ca5ddb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bfdcd9e4a29e78d8bf526154c2e3eb3f962c9d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c0a7e92f9076cc3242ebc55d97d04cc33ec665a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e53c8f07892bca4140c4317e62c24d9fd51e381` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73cd0557f6fa03bebb37591a70900aa21cddf17b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x74b8634cf6c6bfb2db5a5839e4d43242f4900927` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7528b8ae60084577b0774a4e225bc4c3dea7e315` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x760e2521ebc605e221fa71ebed6d8ee4bdb1c585` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b72ba086bc17413bbd5999ca0d1ec19e653727e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d115c1fb6152c5aed1750183ae59107160694a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e80407f9f9f49458be62aa13729e4640597baec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80c4cca2952184b2d5cf454ccb532c675598eab4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81b2b13a36087977a50ffcfab14f7b40335ef0d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x828963e1f49490fb2ad54974301f3541b7542776` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89357b3043dabe279db0e4cda1f253d8d882c8b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x896e0923db24acee647f02ad0d5e603884615b8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ae5d48f560ebb595138fcde6b1570079cd2d0f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c34cbf3a0da459a895f040eac013d1a17875850` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f28465b03bc726a7993b96fd788ec279e4d39d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x900e160d8395d7d3be50a6286253e9e1c73bc62f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x914556b16c1220e4af63084db1acbd4e6f9c65aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92f6f6e93da5bbfded5fdbc9806dfe4431bed970` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97266496978a0fe31444a987c85ad1923d6f2223` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cf0ad80edfef600de04704b66a3042863d9fc51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa05c4d434725f932436f6d7b7b7e57f1e5129d5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa159e6ae6c9e907dc7aa94d57f97c6d7f2dc30de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1d3cdc3cfe379e04b1b5f65770593cfd3f9fc6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa21fb9c9a65e116a4c85b9cd2c8cea05baddaf19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa286da4bb434ab043bc5349a431839df6d93edbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa54fdc01102a14939fe0db1564df8991ed403880` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6a5ecd90181b70d10b85e1787be1e40161631a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6d2f44a3da19bf2bb8071b1225f1ec3b56f007a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6d6eb7edff7b33e581e43d502009a95452dd2f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa73b1887054f424f967a3644ac72826a989826db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7625c9d97485e043bab9f9c6b084c8b56781828` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa86522ccc412dbc4fa10991900fe46de95983822` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9847d23fdb7bdb1c6b0bfa837f6943e6dada2f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabde60a2e32c2d224f9554e951e3dd19c2fcc214` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabf4fdc007ef3a32c5b26989515e64191f4e17c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae9d046c27a824de4b5babea75d0754132664d9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf48b215121c3aec30ed5c7256918c6e0de3c678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb0a532bc86442495705ff799a80e165a84661703` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb213bff931cd291810a13a1fe2fde9580ff1ab63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3dba8fbe3ea6dd4383ade831f886619d084fca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb444aca7c4d0e678fc95e411f50551fa01e69ae5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5191f1ffef811bacb17a8d325f3cc6c1964a6af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6142d34744a7e166cdee3559861d660194ca923` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6b2086ee9a2052e3e31e48f025eacea2a376d32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb87a8ad1c1217ec587474b348b848df564d505aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8eabc237aca9fa40287e84ce510e41d9824689e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb939000db141c303c7334f8d299e55bec4df5dc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbcb4cafe31dcc777a45569005a2b7a48a006b70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc9bb28b87b8c029e4e4fc60ac092734204f9a59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbd60c53fbf555ecad696fac1b74640404905bbd1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbdffe48f1bbbbeeee241b0608a394aee33ce7a35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf32df7146e0f9d5d9301412f8cbebb62834d28c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc155b1a2e0e06f37a4f52e1b4770cdc682bc45e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc44ca8aaa445bb2f8670812097d00ce731c186ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc74e2392eec0f5e6bbcfc32cfc961b3b2f654adf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc90dfac5590bd09a1a738d8c7439ab4c17cbb8a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd09b0788975c8172eb4073a45bcd494af20c1755` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2517d8c2cfea2181851db70ce26d1537050058e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2f89c385e1300c7d2b9971e4b7628c329e59fa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd56b827f9967a7ba9aa29e9a620ec2fa29d85fb4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf3723443939596a772c44048455b65282544273` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe338d3b96c55d9efc174f5defe6cd12179aedf48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe4a010c869e1d42b7b1b7d1eac14ea0520d377d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe54e3b24a39e32e99015deb19cc53b5ed9951ab7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5614c304d73d990b8bca8f055ec0f2685ebf60c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5d35eacdec14d2e6cf81d5e8dedcc59fd88260b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe66ddf20cf9dee9583352229a6dfb579e3d408e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3a4d020cd81204c0ba3b0e6a28e987c6ee703ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf40937279f38d0c1f97afa5919f1cb3cb7f06a7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa05ef131a97fc81f9c203b3b1b310ae066ea7fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa9a92780259a01e7daa372c4497415285668bfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfcb81f79fb69d00378faa65cca60d7a90d42fb27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfdd994ad468cd39a4a3a3c3a0c460bb2213159b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe04c4315fb1a67176bcdb2c6f10d60ca010eeb1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/pangolin](https://paladinsec.co/projects/pangolin) | Paladin | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-08 | stale | Direct | contract_name | 0 | n/a |
| [Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf) | Omniscia | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |
| [Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 0 | n/a |
| [Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | 34 | high |
| [Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-10 | stale | Direct | contract_name | 4 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642`](./contracts/avalanche-43114/0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642/) | ForwarderLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xefa94de7a4656d787667c749f7e1223d71e9fd88`](./contracts/avalanche-43114/0xefa94de7a4656d787667c749f7e1223d71e9fd88/) | PangolinFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0e0100ab771e9288e0aa97e11557e6654c3a9665`](./contracts/avalanche-43114/0x0e0100ab771e9288e0aa97e11557e6654c3a9665/) | PangolinPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe54ca86531e17ef3616d22ca28b0d458b6c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | PangolinRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e8b940c5ce75945f75d892524c88985b2bd0427`](./contracts/avalanche-43114/0x4e8b940c5ce75945f75d892524c88985b2bd0427/) | PangolinV3Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x757121c9a8259c4d6b6956c283355b2902a6baa2`](./contracts/avalanche-43114/0x757121c9a8259c4d6b6956c283355b2902a6baa2/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f`](./contracts/avalanche-43114/0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f/) | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 137 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=8, extraction_exact=42

Zero-match audit list:

- [2690] Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf
- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2697] Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf

Fork inheritance lineage and inherited audits are included when available.
