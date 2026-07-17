# Agentic Audit Brief: Bundie

## Project Overview

- Project: Bundie (`bundie`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.957Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, avalanche, base, optimism, scroll
- Contract surface: 84 unique implementations (176 raw deployments)
- DeFi Llama TVL: $41.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 12 project-authored contract(s) across 4 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 8 common project-authored base contract(s) (ownable2step, timelockupgrade, vault). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 176; live-surface contracts included: 172 (94 live, 78 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/14 (57.1%)
- Deployed-live implementations: 14 of 84 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/15
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 84
- Raw deployments: 176
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 53.3% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountManager | governance | arbitrum | n/a | 5 deployments: optimism `0x95ceccd40d98de57f0d93e659e1c966b11a1fb06`; base `0x69c01ed80d5949e222d5638ba44373d3dcf0a4e7`; arbitrum [`0x0e9aa7015773785c1a9db9d2a8756c952be096cf`](./contracts/arbitrum-42161/0x0e9aa7015773785c1a9db9d2a8756c952be096cf/); avalanche `0x9673fcfedbb6c83c4a76f81bcadf0fc8535ea9c5`; scroll `0x2e70d2778d143412d66edf835be82db29cb1ecfb` | ✅ Audited |
| BridgeManager | operational_periphery | arbitrum | n/a | 4 deployments: optimism `0xb4b991fe4aa691a366a08936da582be38edfa690`; base `0x55c30aec0b8274347c76265373dcdeb04711bcd2`; arbitrum [`0x51b7112651867c7d6bc3d9e928f1b0e1839ae936`](./contracts/arbitrum-42161/0x51b7112651867c7d6bc3d9e928f1b0e1839ae936/); avalanche `0xf203f6261d58ea2d3294a552657890f76f37c9b5` | ✅ Audited |
| ERC4626 | unknown | optimism | n/a | 5 deployments: optimism [`0x426c010123a6301a3ba4b874d4b2127c10515af9`](./contracts/optimism-10/0x426c010123a6301a3ba4b874d4b2127c10515af9/); base `0x7a668c7f4d7e1056362d76097a41f2e0e30f9d3c`; base `0xb3eec12bb10a89d83d042b51ae8c4c8938e2a842`; arbitrum `0x788f48a133ad9504a17ed6e5e3c1451905e02614`; avalanche `0x53e970dc380615fa2a750cdff2ae5b99c1809b04` | ✅ Audited |
| ERC7540 | unknown | avalanche | n/a | 4 deployments: optimism `0xf9e1248c7159f99ce1095977ecb5816c44327ecf`; base `0x74f191c6280532971c1055df94e681de04c403c4`; arbitrum `0xa330d1d04a604f40fb01fda35d01554f151ce705`; avalanche [`0x48b51c3be76b05bfd94621d857c29ff4eeff821e`](./contracts/avalanche-43114/0x48b51c3be76b05bfd94621d857c29ff4eeff821e/) | ✅ Audited |
| FeeManager | governance | base | n/a | 4 deployments: optimism `0xcf1ecc674b09d1fb2dec98ca91f2a963141ec42e`; base [`0x66cf76f346dd051849028bbef61a8f5c33bdf16a`](./contracts/base-8453/0x66cf76f346dd051849028bbef61a8f5c33bdf16a/); arbitrum `0x8f71752c791911a5375cb6a5c5bc42e6abacabc7`; avalanche `0x7cdd1e8a65d24c1e07ddc9b599864cf054e40c2f` | ✅ Audited |
| FeeManagerFactory | registry | base | n/a | 4 deployments: optimism `0x4add05f6f75411f6b1648d8c2ff1f57448cd28fc`; base [`0x47565e3fcd37a2cee1401adda7c2d05df8751b0e`](./contracts/base-8453/0x47565e3fcd37a2cee1401adda7c2d05df8751b0e/); arbitrum `0x56c5ffa751c0455f79abe09f3465af7800feb6b4`; avalanche `0x8f1e79038842d0d9cdd325898bafcc0515c5842a` | ✅ Audited |
| RouterManager | adapter | optimism | n/a | 5 deployments: optimism [`0x38ba8ba3002a1d1984de2ec511d3c9ffb3f4ce26`](./contracts/optimism-10/0x38ba8ba3002a1d1984de2ec511d3c9ffb3f4ce26/); base `0x7b8af9525f0183909ea985798d415422d875d93d`; arbitrum `0x92bf97347ea2037ec8e4b3762b7cceb8017c255d`; avalanche `0x4793281c20966e39df90de21624ff7c3bb88ddb3`; scroll `0xfc309ed1facd18e942e3a245964d4f94fb4953f9` | ✅ Audited |
| VaultManager | core_logic | arbitrum | n/a | 4 deployments: optimism `0xd158c69828b4ba5ad9fcf5c04d67cf7641e4f938`; base `0x40d67f50c5f1efe784f4b21a09e23ecdf11b1bd9`; arbitrum [`0x101ac7546e60401e52450e4af291a7396d137996`](./contracts/arbitrum-42161/0x101ac7546e60401e52450e4af291a7396d137996/); avalanche `0x59e6b4d5b5438d68ebcc25431a041eed660357c7` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MyOVaultComposer | core_logic | arbitrum | n/a | 25 deployments: arbitrum [`0x04427241a1d5bff7d9bd2446dfe55a07d6ef49b1`](./contracts/arbitrum-42161/0x04427241a1d5bff7d9bd2446dfe55a07d6ef49b1/); arbitrum `0x0cded330081b6d4623e74a9dd484e916eb0b9d25`; arbitrum `0x11908432aeae8f98d3824cf9e5c5e424c4759a41`; arbitrum `0x296d9fbf12a29dad4f6e06931e77bbda6a7cc49b`; arbitrum `0x3329b33d2d62a0fb4bf4f77b3695ebc32ab43a09`; arbitrum `0x382908d7f0efe215341694c169f98a5a67c4da5a`; arbitrum `0x3925e5c838609b267225a797b7215c4a3cc14f17`; arbitrum `0x3f7996e944e49d7c038834601dcc383163bf26f7`; arbitrum `0x43f95021eaecb4c1a36f2d1b2c23f3a6c15474c9`; arbitrum `0x508ae76af441f9456fc393fb1319ebac0c03c11c`; arbitrum `0x534ad6eb04d8e68870e0f014dc7a9a7e84dc2a4c`; arbitrum `0x569631bdd3af6ad9326bee636b22c8218bd4200f`; arbitrum `0x5dd777bf7a7475e983f6cbc36f1ea60c41d769d0`; arbitrum `0x61dcd284fb7f740ed1ed66a1f33413d1e59a7e7d`; arbitrum `0x69a848e5e73eb5b57487103c23adf1cca70ac94c`; arbitrum `0x6f094e5c14bafb0fde7beafc36c77af953b01925`; arbitrum `0x7cb66255d765e5ed0f9bfc18b675c58bd6c8bbbb`; arbitrum `0x954a3dafd44e7d50d297c828831a03965dd265d7`; arbitrum `0x9736a1f7f1b32814a344968fea4360728799a0f4`; arbitrum `0xbdda295404407c4f6af222b42c76815862049ede`; arbitrum `0xc5725cac025468ea9114e8252adb91e7142089b1`; arbitrum `0xc5f998c41de454b16245947bbf4ebdd2db2f4b67`; arbitrum `0xcaac5995586041860c92d26d099c82bfaa4cbcfb`; arbitrum `0xe010466cf6fe2f0e39de33e34a46df805b542044`; arbitrum `0xef44264976f7af569a8c5eae1e501427d93eeb4c` | ⚠️ Unaudited |
| Relayer | unknown | optimism | n/a | 2 deployments: optimism [`0x9964411e45d8a47d6907dc2daa0a78644af3c7aa`](./contracts/optimism-10/0x9964411e45d8a47d6907dc2daa0a78644af3c7aa/); optimism `0xd23f238baf436b2836ea6ce3c419cd7ee439f37b` | ⚠️ Unaudited |
| Relayer | unknown | base | n/a | 2 deployments: base [`0x0d0a61b76a8b893aaa58405669d85b3ee6755018`](./contracts/base-8453/0x0d0a61b76a8b893aaa58405669d85b3ee6755018/); base `0x26e550dbfa31362559d5f392d4dce31ef321ae87` | ⚠️ Unaudited |
| Relayer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8c03ef8d41ea5f2fdd7b1890c36ea69832926075`](./contracts/arbitrum-42161/0x8c03ef8d41ea5f2fdd7b1890c36ea69832926075/); arbitrum `0xc42969b0f0414f6183839f4f6f31b5fd02dad4e8` | ⚠️ Unaudited |
| Relayer | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0e256d69c288f7459f0309abbf1d950c5b441335`](./contracts/avalanche-43114/0x0e256d69c288f7459f0309abbf1d950c5b441335/); avalanche `0xa9ffe99202bf2903e9405fdb304f4ced7207473e` | ⚠️ Unaudited |
| USDtzOFTAdapter | unknown | base | n/a | 6 deployments: base [`0x0b56ba36a80e43dd73e53f3e18296f8b6904b31f`](./contracts/base-8453/0x0b56ba36a80e43dd73e53f3e18296f8b6904b31f/); base `0x0b994b5a182c5d0433a0584c8e27bce850cb5400`; base `0x2fa26493d38c471b0c978fec19919f78ed0b155c`; base `0x897450a28cbb0c0e20321345f7c7fa0d702dea27`; base `0x8f1e79038842d0d9cdd325898bafcc0515c5842a`; base `0xd158c69828b4ba5ad9fcf5c04d67cf7641e4f938` | ⚠️ Unaudited |
| wstUSRComposer | unknown | base | n/a | 33 deployments: optimism `0x0cded330081b6d4623e74a9dd484e916eb0b9d25`; optimism `0x382908d7f0efe215341694c169f98a5a67c4da5a`; base [`0x007077340cef49d914ae5f799659299f7f33af4f`](./contracts/base-8453/0x007077340cef49d914ae5f799659299f7f33af4f/); base `0x0ba2ded53642c2ca7fd05f862012cf4c633a4f8d`; base `0x0c61463d4f8b0dab518d3dd2d3dee8fa32c8ee33`; base `0x0fa46666d2921c011b51adb097747fb238f0945b`; base `0x11908432aeae8f98d3824cf9e5c5e424c4759a41`; base `0x2b0b1fda500a66b8bc6f84c7bbba7bf75c80ecfb`; base `0x2b33dd65b9dc3c1c5d4237152748ff8e3fcf0de1`; base `0x30ed8f40922786ccc16c306b85ab58d248d4f92e`; base `0x343f8a316d1e2b760ec6ab141c0f08b0a877789e`; base `0x387ea216a7326d48c9c356a6bde63bd271a0f11f`; base `0x426c010123a6301a3ba4b874d4b2127c10515af9`; base `0x443de1c8be24b2f5530ad072dcfb92c6efacf409`; base `0x4494ad8ff58e9097e306c5c3308dce35e70468a1`; base `0x49d7cdda47d07cf5ab2fcc528f006291ab802a27`; base `0x5029fa86708360f410b2271ee2b6df1b506404e7`; base `0x7971ff286bd8edd9f86ca01a234172e23c516505`; base `0x7e2858a1e1306ed265a2f1782bffff3f29a99559`; base `0x84474938701736fa0f1f37d029d7368446e5219f`; base `0x8507b412a3ac49c138439a02e60c6064ba8ce10f`; base `0x8d55c1fc7827ae411fa9d1da1c0d354dcf724dff`; base `0x97560d34ac07ae3275632eb6c9bea6cd5ca9ff86`; base `0x9bae8065ed58be88100094d3195a2301ccb52116`; base `0x9c9220781f5dbdb2d78c4ae597985c20c86c0d24`; base `0xb7e710609d36708326d737ce714825cd97d1a4b4`; base `0xba09a59fd6738be63a2a42dfd7c6efb2ad5a6132`; base `0xcc06073725f429cb1897fb2fcbb5de88cae33a80`; base `0xd4d4525521d20562c096b7373f7066d6594739ad`; base `0xd5a2d431584f6c11abdac3b5a58f4d97acef3ffb`; base `0xdb487795d243933a31652b1581d52a1bcb97de2a`; base `0xf706dce8befed20037ed929964a60a9d5a775c49`; avalanche `0x382908d7f0efe215341694c169f98a5a67c4da5a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0xd4b09e5dd92e7eea699237c897d3be9d0108eaa4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfc82e1f4488fb7b86b68b317ede1976f99ac7990` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x003c9380383dd0e4d1ae5ef140a3ada0f552f949` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13359b6d935bbe181ed4ed5643d8c20615aeca78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1758351a8c078ade5fc5fb8b0995fb078f1acb6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ae953d47f56a2403692d52de08f938c552f3e89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f2c9ebcde3d429091caacc10951bde69dbaf9e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20ca2655fb0c3b8597597c25d9d68e90d9bb5549` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x372dd34cf157c80c0fc96bfac6b24df81dcc7a44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x548a8b6c1f8e2456880fabb55282da9a8f533bbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x569631bdd3af6ad9326bee636b22c8218bd4200f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c93034570480a38a220477df8c3c904bd811c07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62bfa62792737e23620b6f190414ef21c568d191` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6537e5fc1992ba96a3493a8f5b2fdbb19cbeb18b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d4a894ed277ef24f81098a330c9dd1b49386ed9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x776aebb932d29a4ba39fd04042a67214b45869ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78939c178f546a0f8cb7cecf39e08c6b250f3f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7cdd1e8a65d24c1e07ddc9b599864cf054e40c2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x851e9158404ad8975d3517651774f3f0ecc32be7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x856e6f320b2c39d711e0ede2ea384a3113fb8d8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89da779a7e40751a91c900b8afefacffa50e3795` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x928cc7d40b4f07df69d43650eb1ebf3d47f0dd33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa248927347154a0ed8b6a2934e8ec4179d6b52c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xabcf532a730015afa9186903f1489b092f4c51b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac287c7b7890fab489f620078ad838de8b7a74b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf8a3cfbb0987730dddb99da08f273b1f5307d4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9615a8f886308abc4363de2eadc31512834bb4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9621a4cb72bb31fbd593f0aef4341820052311a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc1a3b8660069c603a3a9299dde1cc45803a259be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc45a3255407d89a615f313fab20ef1ba36d93ce9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0a682823df243566567b9b563c870544e969784` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf12f7a214338a04af6d4a5e880fb7d0a9081655e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc744f8f8cdeff53f84b3fd8e810c880d5f61d5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b994b5a182c5d0433a0584c8e27bce850cb5400` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20a9c563af18bc43ba1a085ff8d1427803becd09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20f54adfcbe87b22c78389650c259e7a7460f874` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2440dcb6fd5f8381f0a50678b446512a161a1fa9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x311444f37b0cd918afbe01f6e70316c7429b4838` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3164218648bddfb204bd4b4bbcd8bdc8a9529c4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45750011fb4155fb2e448d2c9c26ecbabd587e3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53e970dc380615fa2a750cdff2ae5b99c1809b04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59e6b4d5b5438d68ebcc25431a041eed660357c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6453ec8e132f0023a670b33d76bd37a4e681fa63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9049e328cc7b9b000ded1efe6c175d2605af6017` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x928cc7d40b4f07df69d43650eb1ebf3d47f0dd33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95ceccd40d98de57f0d93e659e1c966b11a1fb06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x979076326a7688e4da619508b9bfcae83ce44573` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99e65be5df3d58aa41dba6a23dbe329738cf7622` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f70780f7237660254c6fbc95ffde20ccbbfdc6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xada327fbd080358143f8965a855275df0048723a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3c8c48465acf3e19caa85684a9ae3033d4b2f8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8f56fe639844dd421497fbb0f82c8531f77928c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9eea07707b26a7a76e8ad7ef4ba416658f79ac6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4b09e5dd92e7eea699237c897d3be9d0108eaa4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd752153698c1d10dde56cb79c4c2691904769aef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde16cf0b44dc4d56bbb5a25cec463ef24c535e88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef8a222634e49410a5f114462c44b997d8a3ed45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2ace08fc76d727cf861c45f500a7e76eb615cf5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5458de76f966adcdeb7640ca52602f5ad1e3539` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc82e1f4488fb7b86b68b317ede1976f99ac7990` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcc92b3a83f53ced80d411775a13f4c1b1a09ff1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b56ba36a80e43dd73e53f3e18296f8b6904b31f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cded330081b6d4623e74a9dd484e916eb0b9d25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2fa26493d38c471b0c978fec19919f78ed0b155c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3132fedd6666cd513706e008f127d01c899d60fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x569631bdd3af6ad9326bee636b22c8218bd4200f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x928cc7d40b4f07df69d43650eb1ebf3d47f0dd33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4b09e5dd92e7eea699237c897d3be9d0108eaa4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc82e1f4488fb7b86b68b317ede1976f99ac7990` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026.04.09 - Final - Bundie Collaborative Audit Report 1775738963.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.04.09%20-%20Final%20-%20Bundie%20Collaborative%20Audit%20Report%201775738963.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | 8 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x04427241a1d5bff7d9bd2446dfe55a07d6ef49b1`](./contracts/arbitrum-42161/0x04427241a1d5bff7d9bd2446dfe55a07d6ef49b1/) | MyOVaultComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9964411e45d8a47d6907dc2daa0a78644af3c7aa`](./contracts/optimism-10/0x9964411e45d8a47d6907dc2daa0a78644af3c7aa/) | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d0a61b76a8b893aaa58405669d85b3ee6755018`](./contracts/base-8453/0x0d0a61b76a8b893aaa58405669d85b3ee6755018/) | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c03ef8d41ea5f2fdd7b1890c36ea69832926075`](./contracts/arbitrum-42161/0x8c03ef8d41ea5f2fdd7b1890c36ea69832926075/) | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0e256d69c288f7459f0309abbf1d950c5b441335`](./contracts/avalanche-43114/0x0e256d69c288f7459f0309abbf1d950c5b441335/) | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b56ba36a80e43dd73e53f3e18296f8b6904b31f`](./contracts/base-8453/0x0b56ba36a80e43dd73e53f3e18296f8b6904b31f/) | USDtzOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x007077340cef49d914ae5f799659299f7f33af4f`](./contracts/base-8453/0x007077340cef49d914ae5f799659299f7f33af4f/) | wstUSRComposer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Fork inheritance lineage and inherited audits are included when available.
