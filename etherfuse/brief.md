# Agentic Audit Brief: Etherfuse

## Project Overview

- Project: Etherfuse (`etherfuse`)
- Website: [https://www.etherfuse.com/](https://www.etherfuse.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.914Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base, polygon
- Contract surface: 76 unique implementations (162 raw deployments)
- DeFi Llama TVL: $1,187,788.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 6 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (oftupgradeable, oftcoreupgradeable, oappupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 162; live-surface contracts included: 110 (88 live, 22 unknown).
- Excluded by liveness: 52 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/67 (0.0%)
- Deployed-live implementations: 68 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/69
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 76
- Raw deployments: 162
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12`](./contracts/base-8453/0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12/); base `0x058c2926a064f052a14c1a66b6601853cd4a60e5` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x02c6a918cb2053f010e6cf02dc5c00e0738cb594`](./contracts/base-8453/0x02c6a918cb2053f010e6cf02dc5c00e0738cb594/); base `0x56efabb1fba628cdf073061abc2430a433b2e5ad` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x08c5c61e1d259663d11e1442c094d7016d5f3458`](./contracts/base-8453/0x08c5c61e1d259663d11e1442c094d7016d5f3458/); base `0xef1c4735aea3b96365f05d9f866d83b276ef4b58` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x0d02e2e2a7adaf2372ca0c69845c8b159a24a595`](./contracts/base-8453/0x0d02e2e2a7adaf2372ca0c69845c8b159a24a595/); base `0x2a0eaf7e528faa1304bd94ecd8fa943598b5da17` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x0dd5fc9ada7ddd7f854d65dc3c5037764b864043`](./contracts/base-8453/0x0dd5fc9ada7ddd7f854d65dc3c5037764b864043/); base `0x675fdb7e00e5eae13b0b0c8e6b6c62b7f772ae5f` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x0df8c792e595df8082144b3b7f36aa73f6d85f92`](./contracts/base-8453/0x0df8c792e595df8082144b3b7f36aa73f6d85f92/); base `0xcdc1cdec7374aeebfe3490c9c2d5aabcc5acf27d` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x11a4e65d8c8e2fe853fb61e1c11a04d5c3a821e6`](./contracts/base-8453/0x11a4e65d8c8e2fe853fb61e1c11a04d5c3a821e6/); base `0x131409b31bf446737dd04353d43dacada544b6fa` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x16c8b5a6f79dbdda8e103b7c0d766b55440a8d26`](./contracts/base-8453/0x16c8b5a6f79dbdda8e103b7c0d766b55440a8d26/); base `0x97198857281750980678189b8a2d99bd65d06a71` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x18eb3363e0a73f2e46463df6e88af7f3486ead59`](./contracts/base-8453/0x18eb3363e0a73f2e46463df6e88af7f3486ead59/); base `0xf1bdf64c4be8e363c0fff533b09178c42e836460` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x23b12f2d770dbfc21eae860b62185fb92e314455`](./contracts/base-8453/0x23b12f2d770dbfc21eae860b62185fb92e314455/); base `0x7af68b2855e9590ab4483f28f6f460a81bbbdf96` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x2456490b46c2428cec4989842416d202461a6cfc`](./contracts/base-8453/0x2456490b46c2428cec4989842416d202461a6cfc/); base `0x3197a5cd583eb0ec45fe3af415b3636589e218cd` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x261252ac89d5031e199dbdee4306da9e6fa3dc13`](./contracts/base-8453/0x261252ac89d5031e199dbdee4306da9e6fa3dc13/); base `0x31bc2baa782e5180e9efa32261d2bb33ce8918bc` | ⚠️ Unaudited |
| BraleToken | token | base | n/a | 2 deployments: base [`0x269cae7dc59803e5c596c95756faeebb6030e0af`](./contracts/base-8453/0x269cae7dc59803e5c596c95756faeebb6030e0af/); base `0x2a6c613bd6288b1f7e1c02393f1cf92444eadee5` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x293d36b129f1e6538a036318499d83bd06eb17e9`](./contracts/base-8453/0x293d36b129f1e6538a036318499d83bd06eb17e9/); base `0x6dd75d3b83a8ac056266bd6d876e0c790c1ae055` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x2b40fac9171b5b1bc868e3b3cdc1894021d4cd28`](./contracts/base-8453/0x2b40fac9171b5b1bc868e3b3cdc1894021d4cd28/); base `0xcc59201b18ca9a939c5f6ebcf948e40a1cd0dfcb` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x2c39fe491e01cfaf2b083446d79d38afe6b68138`](./contracts/base-8453/0x2c39fe491e01cfaf2b083446d79d38afe6b68138/); base `0x8a88b6373b755104d3d747aadb888a827ea48616` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x34fa1aed9f275451747f3e9b5377608ccf96a458`](./contracts/base-8453/0x34fa1aed9f275451747f3e9b5377608ccf96a458/); base `0x8bf1108b320bf2459f8b0de2ed960c55c8783a53` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x35b581bf1d478f81b358dc9d5369aaf8eac52b27`](./contracts/base-8453/0x35b581bf1d478f81b358dc9d5369aaf8eac52b27/); base `0xf463c2b5ec3c3b410eec1ae9f8865a7cf3d1f553` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x39b5c39150567fd6e19ee5d97bd76016cdfcb0f5`](./contracts/base-8453/0x39b5c39150567fd6e19ee5d97bd76016cdfcb0f5/); base `0xda8756b335cc9f978a703b22c1e1b4e1e1e5a43f` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x3b5f2810fb2168ffa9c73160f97bf9f2461ffa5c`](./contracts/base-8453/0x3b5f2810fb2168ffa9c73160f97bf9f2461ffa5c/); base `0x589826c2c6255b12df8c804d3da62a1c6b2646df` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x3cbea89ae7b9813e9a0b4ecb8c5fe12c8a4290c2`](./contracts/base-8453/0x3cbea89ae7b9813e9a0b4ecb8c5fe12c8a4290c2/); base `0x6122c5964d39416c3f34475d00ceb37f50700314` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x44e246cda5ee67ac20a155869c0876c20c308f38`](./contracts/base-8453/0x44e246cda5ee67ac20a155869c0876c20c308f38/); base `0xa4a4fcb23ffcd964346d2e4ecdf5a8c15c69b219` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x48fdf7ff8ca634699690833892db939952b419ca`](./contracts/base-8453/0x48fdf7ff8ca634699690833892db939952b419ca/); base `0xb07847a00a1cf7d0866a08178139a45dd8280813` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x4b7eaea49c58b9e7d41502c817a6055fff90944e`](./contracts/base-8453/0x4b7eaea49c58b9e7d41502c817a6055fff90944e/); base `0x6e07140e4d49f5cf799ffdee3e7625202ce252c3` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x4eccc5c66f3d582e3b851e282000d4faf2df295c`](./contracts/base-8453/0x4eccc5c66f3d582e3b851e282000d4faf2df295c/); base `0xdb79dc6caeef6ff3f6fc48f9770be4b8ea251428` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x562f9e7bf2a04b959bee849c533cf02d100a3383`](./contracts/base-8453/0x562f9e7bf2a04b959bee849c533cf02d100a3383/); base `0xd899c2254c1f4b11fff038571d6cb02ab8860ec8` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x5c2fc1d13657195e657e701651717c48e42039fe`](./contracts/base-8453/0x5c2fc1d13657195e657e701651717c48e42039fe/); base `0xe157e631b0dd8321b535383800f7ab18914cc0b5` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x5dbe3ff971090450dbe4eac90b1e5580206522f5`](./contracts/base-8453/0x5dbe3ff971090450dbe4eac90b1e5580206522f5/); base `0x7acf9aadc88338b91245d1149417894a9a8515e7` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x615c2f42919c7fed56a44a5c62d5ef73f748fd0f`](./contracts/base-8453/0x615c2f42919c7fed56a44a5c62d5ef73f748fd0f/); base `0xa671585e898e5bc15dce4d59a11c8f8fbfdb3d43` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x6268212c72916ec0aa8f63e6d7bd8b034532e3a9`](./contracts/base-8453/0x6268212c72916ec0aa8f63e6d7bd8b034532e3a9/); base `0xb77a86d6b2512f3c9af5425bafce02e66ede291a` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x63ee4b77d3912dc7bce711c3be7bf12d532f1853`](./contracts/base-8453/0x63ee4b77d3912dc7bce711c3be7bf12d532f1853/); base `0x95409079cd149e33141ec350dd17ddeb4c523259` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x648c292f0ea8ed76d645625a797b92bca957e400`](./contracts/base-8453/0x648c292f0ea8ed76d645625a797b92bca957e400/); base `0xf48a8d08a017781f1f0788d20954b49d38385d96` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x6c68da07f1c806e4fce2880ffc14cd765e4cc5bb`](./contracts/base-8453/0x6c68da07f1c806e4fce2880ffc14cd765e4cc5bb/); base `0xea8cb87b27cef8b356005abdcddd4d9c0ae3e660` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x6f3386971ec5361bb36f84c37a953dc8cf15954e`](./contracts/base-8453/0x6f3386971ec5361bb36f84c37a953dc8cf15954e/); base `0xc1e1a376db662064d6a2b3e8f2c0d2b5ecdbbd32` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x7ce3c393b07d5766c8da751f794391b5be55d1d1`](./contracts/base-8453/0x7ce3c393b07d5766c8da751f794391b5be55d1d1/); base `0xd4393783422b2ffffbf46beb609fe4aa410c6b92` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x86cc1214e5e41e96e91d4d8944e99f218f300299`](./contracts/base-8453/0x86cc1214e5e41e96e91d4d8944e99f218f300299/); base `0x894ec073e9e616a5aa394eae8752b35ad0da1942` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x88fa272fe8685b4e73d4590bdca70a5b901f7ebc`](./contracts/base-8453/0x88fa272fe8685b4e73d4590bdca70a5b901f7ebc/); base `0xccfcfde94888380d7413e3e144d0f453f98cc6d5` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x89cfc67ecd75fc036122d486abdc3bf0a06373cc`](./contracts/base-8453/0x89cfc67ecd75fc036122d486abdc3bf0a06373cc/); base `0xbd54e7c7ff816c31224cd7bc2fd679324f853b71` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x935eda0060ba40ea409bb05fa2300abb4e215ac1`](./contracts/base-8453/0x935eda0060ba40ea409bb05fa2300abb4e215ac1/); base `0xf9fb20b8e097904f0ab7d12e9dbee88f2dcd0f16` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x949e7b96c3946a0a035d33094fcb58418d50c505`](./contracts/base-8453/0x949e7b96c3946a0a035d33094fcb58418d50c505/); base `0x95faffa7bf18506f0e5a646eb0536b1189f55d01` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0x9623dfb044d5612ce0c0f1606973ccaefd03cd05`](./contracts/base-8453/0x9623dfb044d5612ce0c0f1606973ccaefd03cd05/); base `0xaf099a92108aa07291c9502cde2454dab0820d45` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xa1d5897cb1195ab45463d0b6ea3c6dfa438ff182`](./contracts/base-8453/0xa1d5897cb1195ab45463d0b6ea3c6dfa438ff182/); base `0xf82d720200c3265c1e0fc2bd0cdbb8d278acd7ba` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xa21658b5702c838fad4aa840a07023ccdeaa1a85`](./contracts/base-8453/0xa21658b5702c838fad4aa840a07023ccdeaa1a85/); base `0xb82ddd579cf647c1b2b92d0ff116821f2e6704fc` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xa8719f9f4c23266a214112aaf4902c1000c02e7c`](./contracts/base-8453/0xa8719f9f4c23266a214112aaf4902c1000c02e7c/); base `0xd6263fdc62d4109a929f5c9ce0e8566378e6d47f` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xb616626fb78c7d64ded1b368358af7d1c14a2033`](./contracts/base-8453/0xb616626fb78c7d64ded1b368358af7d1c14a2033/); base `0xbff711ecb663985bb4c7e3892fa771c550cde7d4` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xc005a992e5c47bb6d1a086f6f5ec7cba27dd0d4f`](./contracts/base-8453/0xc005a992e5c47bb6d1a086f6f5ec7cba27dd0d4f/); base `0xd8d2f788313be12a5170b6248ab033e6a3674142` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xc1bc0450f8bb1386ffd5150cbb3ad38da1f0dd12`](./contracts/base-8453/0xc1bc0450f8bb1386ffd5150cbb3ad38da1f0dd12/); base `0xfdcc3dd6671eab0709a4c0f3f53de9a333d80798` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xcc18b41a0f63c67f17f23388c848aec67b583422`](./contracts/base-8453/0xcc18b41a0f63c67f17f23388c848aec67b583422/); base `0xf76d2d751c6fa5da8b5838f0acaa8d86ce20b3e6` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xdb8648aeda3226c4dfeeefba59d4ed320791da83`](./contracts/base-8453/0xdb8648aeda3226c4dfeeefba59d4ed320791da83/); base `0xff982a94ddca99d461d2edfd5b8bdb3609efa88a` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xde093684c796204224bc081f937aa059d903c52a`](./contracts/base-8453/0xde093684c796204224bc081f937aa059d903c52a/); base `0xe856714d339ac62cb71242d25e30867a6358778a` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xdeebcaa4aa6b5b81f3066a92d21c978f753a564c`](./contracts/base-8453/0xdeebcaa4aa6b5b81f3066a92d21c978f753a564c/); base `0xe20b30dee41f87382d0af50350d30a5beaa745d7` | ⚠️ Unaudited |
| BraleToken | unknown | base | n/a | 2 deployments: base [`0xeaa244fb99ab019aeafaa13ea6f63464907bd921`](./contracts/base-8453/0xeaa244fb99ab019aeafaa13ea6f63464907bd921/); base `0xf08eb3d6e480cdfc57582e1a1dd9878b7d2e27aa` | ⚠️ Unaudited |
| CbBTCOFTUpgradeable | unknown | base | n/a | [`0x9ad50946f11e5e315c71abba2742c23b302020e8`](./contracts/base-8453/0x9ad50946f11e5e315c71abba2742c23b302020e8/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x9b307d0e58efd268052994904a4e3f192afb6838`](./contracts/polygon-137/0x9b307d0e58efd268052994904a4e3f192afb6838/); polygon `0xc2c1f8eb98c0468be0232dd4166705d0dea3fe31` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xbc5c4978f05f5d7b1faee776c913c861a9c4598d`](./contracts/polygon-137/0xbc5c4978f05f5d7b1faee776c913c861a9c4598d/); polygon `0xe56cee16b76903b3c8eb4af3c06d1d2fab320f95` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x009f16d6f5cce4721ae74aae8ee0a601be3eb5b8`](./contracts/base-8453/0x009f16d6f5cce4721ae74aae8ee0a601be3eb5b8/); base `0x0f9b0468391cfa83160dae6b693df87df379bd06` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x0ff2cbafccae23a704d954b43910e864291fd03a`](./contracts/base-8453/0x0ff2cbafccae23a704d954b43910e864291fd03a/); base `0xb6a3b6859a999f47dd821511318afca1fc29f0b0` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x464cd6c6c3a2252720940e1472464196520a1f44`](./contracts/base-8453/0x464cd6c6c3a2252720940e1472464196520a1f44/); base `0x79b3c8d1020b71904f721e77433db92702f089bc` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0xc2c1f8eb98c0468be0232dd4166705d0dea3fe31`](./contracts/base-8453/0xc2c1f8eb98c0468be0232dd4166705d0dea3fe31/); base `0xf14d949bc9f5d6875975869eb8c1cd8f9fa53e18` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | n/a | 18 deployments: polygon [`0x0f9b0468391cfa83160dae6b693df87df379bd06`](./contracts/polygon-137/0x0f9b0468391cfa83160dae6b693df87df379bd06/); polygon `0x322922f0e1675a8e7be2a38b0636a7c184082ca8`; polygon `0x46802bdbb7e83cbfbe7bea13b42a9db56f13e63b`; polygon `0x48ead7df8e4df7d9caf49268032784ee5abb17e1`; polygon `0x7cee47e7b7cd04cf984e8dd86c42595b5771a9b2`; polygon `0xb43c950f4913f9a2d4b771e9c3fc051e63544b3d`; polygon `0xc75dfe1fe6520d5bc4f6b98db08fc5b3f872bf08`; polygon `0xed27d51b42744139afebb319340255362306eec5`; base `0x322922f0e1675a8e7be2a38b0636a7c184082ca8`; base `0x3de700b2e7178b3fcf201d061aeafed2fdf27424`; base `0x46802bdbb7e83cbfbe7bea13b42a9db56f13e63b`; base `0x48ead7df8e4df7d9caf49268032784ee5abb17e1`; base `0x699908834493f4d3c5602df2fefe45e5e66c7cbc`; base `0xb43c950f4913f9a2d4b771e9c3fc051e63544b3d`; base `0xbd60970a4c25080d1d66c1ab6176953b8ce10c2f`; base `0xd660bb3aaca8668e674b2c7d248feb39b15acfcb`; base `0xed27d51b42744139afebb319340255362306eec5`; base `0xfbb5be3723ce52b5116e22a401ea00ef0b381d2b` | ⚠️ Unaudited |
| StablebondOFTUpgradeable | unknown | polygon | n/a | 4 deployments: polygon [`0x43d59d6d5a88787822c233b6f34db81eaca4aa1d`](./contracts/polygon-137/0x43d59d6d5a88787822c233b6f34db81eaca4aa1d/); polygon `0x7fe752c0697d75cb5805c11480210892148dbd35`; polygon `0x9ad50946f11e5e315c71abba2742c23b302020e8`; polygon `0xd660bb3aaca8668e674b2c7d248feb39b15acfcb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x46080f31351a6568f44575e3effde7f0c86867f9`](./contracts/polygon-137/0x46080f31351a6568f44575e3effde7f0c86867f9/); polygon `0xfbb5be3723ce52b5116e22a401ea00ef0b381d2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x834df4c1d8f51be24322e39e4766697be015512f`](./contracts/polygon-137/0x834df4c1d8f51be24322e39e4766697be015512f/); polygon `0x8643d478e074b211b3c8d50f08a417e0c6e2490a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x9ee996c02ccfcd087d21d50cd0a64e8d6287b256`](./contracts/polygon-137/0x9ee996c02ccfcd087d21d50cd0a64e8d6287b256/); polygon `0xd574b191b5a00262ff19953d3ce25543ab7c8098` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xc6221856e45ed806f8325a084bed3d69d32c526d`](./contracts/polygon-137/0xc6221856e45ed806f8325a084bed3d69d32c526d/); polygon `0xd274dccfd495ab8d5eaa06588552218dd766fe32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x46080f31351a6568f44575e3effde7f0c86867f9`](./contracts/base-8453/0x46080f31351a6568f44575e3effde7f0c86867f9/); base `0x7fe752c0697d75cb5805c11480210892148dbd35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x7108b2f72273a7cc15398fedc1a142c3a74e5d95`](./contracts/base-8453/0x7108b2f72273a7cc15398fedc1a142c3a74e5d95/); base `0x7cee47e7b7cd04cf984e8dd86c42595b5771a9b2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x834df4c1d8f51be24322e39e4766697be015512f`](./contracts/base-8453/0x834df4c1d8f51be24322e39e4766697be015512f/); base `0xd2acc459fd2a8f2ef7a42bff1e61b8d9dc71b678` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0xc36adeff2a9021af6610ed5bf49693c3adaf4ea9`](./contracts/base-8453/0xc36adeff2a9021af6610ed5bf49693c3adaf4ea9/); base `0xc6221856e45ed806f8325a084bed3d69d32c526d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x067fd82265f375570e1c6b3c75734f4f8dd64874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52f044061514fa20064f0298cb8c12d8aebfe706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43d59d6d5a88787822c233b6f34db81eaca4aa1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52f044061514fa20064f0298cb8c12d8aebfe706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8596dad0f571a8d00e14de9dee94f6f0922febc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0a154e6f2904a5a5404015d6492ec085175c8e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc75dfe1fe6520d5bc4f6b98db08fc5b3f872bf08` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [app.etherfuse.com/legal/compliance-and-audits](https://app.etherfuse.com/legal/compliance-and-audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [app.etherfuse.com/legal/proof-of-reserves](https://app.etherfuse.com/legal/proof-of-reserves) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Etherfuse+Opinion+PLD+Sin+Anexos+en.pdf](https://stablebonds.s3.us-west-2.amazonaws.com/Etherfuse+Opinion+PLD+Sin+Anexos+en.pdf) | BHR ENW México Group, S. C. | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [OtterSec_Etherfuse_Stablebond_Audit_2024-10-22.pdf](https://stablebonds.s3.us-west-2.amazonaws.com/OtterSec_Etherfuse_Stablebond_Audit_2024-10-22.pdf) | OtterSec | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12`](./contracts/base-8453/0x00adc449afb35bf56e9d72b8d4e66a07bf4f0c12/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c6a918cb2053f010e6cf02dc5c00e0738cb594`](./contracts/base-8453/0x02c6a918cb2053f010e6cf02dc5c00e0738cb594/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08c5c61e1d259663d11e1442c094d7016d5f3458`](./contracts/base-8453/0x08c5c61e1d259663d11e1442c094d7016d5f3458/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d02e2e2a7adaf2372ca0c69845c8b159a24a595`](./contracts/base-8453/0x0d02e2e2a7adaf2372ca0c69845c8b159a24a595/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0dd5fc9ada7ddd7f854d65dc3c5037764b864043`](./contracts/base-8453/0x0dd5fc9ada7ddd7f854d65dc3c5037764b864043/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0df8c792e595df8082144b3b7f36aa73f6d85f92`](./contracts/base-8453/0x0df8c792e595df8082144b3b7f36aa73f6d85f92/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11a4e65d8c8e2fe853fb61e1c11a04d5c3a821e6`](./contracts/base-8453/0x11a4e65d8c8e2fe853fb61e1c11a04d5c3a821e6/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16c8b5a6f79dbdda8e103b7c0d766b55440a8d26`](./contracts/base-8453/0x16c8b5a6f79dbdda8e103b7c0d766b55440a8d26/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18eb3363e0a73f2e46463df6e88af7f3486ead59`](./contracts/base-8453/0x18eb3363e0a73f2e46463df6e88af7f3486ead59/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x23b12f2d770dbfc21eae860b62185fb92e314455`](./contracts/base-8453/0x23b12f2d770dbfc21eae860b62185fb92e314455/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2456490b46c2428cec4989842416d202461a6cfc`](./contracts/base-8453/0x2456490b46c2428cec4989842416d202461a6cfc/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x261252ac89d5031e199dbdee4306da9e6fa3dc13`](./contracts/base-8453/0x261252ac89d5031e199dbdee4306da9e6fa3dc13/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x269cae7dc59803e5c596c95756faeebb6030e0af`](./contracts/base-8453/0x269cae7dc59803e5c596c95756faeebb6030e0af/) | BraleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x293d36b129f1e6538a036318499d83bd06eb17e9`](./contracts/base-8453/0x293d36b129f1e6538a036318499d83bd06eb17e9/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b40fac9171b5b1bc868e3b3cdc1894021d4cd28`](./contracts/base-8453/0x2b40fac9171b5b1bc868e3b3cdc1894021d4cd28/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2c39fe491e01cfaf2b083446d79d38afe6b68138`](./contracts/base-8453/0x2c39fe491e01cfaf2b083446d79d38afe6b68138/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x34fa1aed9f275451747f3e9b5377608ccf96a458`](./contracts/base-8453/0x34fa1aed9f275451747f3e9b5377608ccf96a458/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35b581bf1d478f81b358dc9d5369aaf8eac52b27`](./contracts/base-8453/0x35b581bf1d478f81b358dc9d5369aaf8eac52b27/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x39b5c39150567fd6e19ee5d97bd76016cdfcb0f5`](./contracts/base-8453/0x39b5c39150567fd6e19ee5d97bd76016cdfcb0f5/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b5f2810fb2168ffa9c73160f97bf9f2461ffa5c`](./contracts/base-8453/0x3b5f2810fb2168ffa9c73160f97bf9f2461ffa5c/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3cbea89ae7b9813e9a0b4ecb8c5fe12c8a4290c2`](./contracts/base-8453/0x3cbea89ae7b9813e9a0b4ecb8c5fe12c8a4290c2/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44e246cda5ee67ac20a155869c0876c20c308f38`](./contracts/base-8453/0x44e246cda5ee67ac20a155869c0876c20c308f38/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x48fdf7ff8ca634699690833892db939952b419ca`](./contracts/base-8453/0x48fdf7ff8ca634699690833892db939952b419ca/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4b7eaea49c58b9e7d41502c817a6055fff90944e`](./contracts/base-8453/0x4b7eaea49c58b9e7d41502c817a6055fff90944e/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4eccc5c66f3d582e3b851e282000d4faf2df295c`](./contracts/base-8453/0x4eccc5c66f3d582e3b851e282000d4faf2df295c/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x562f9e7bf2a04b959bee849c533cf02d100a3383`](./contracts/base-8453/0x562f9e7bf2a04b959bee849c533cf02d100a3383/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c2fc1d13657195e657e701651717c48e42039fe`](./contracts/base-8453/0x5c2fc1d13657195e657e701651717c48e42039fe/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5dbe3ff971090450dbe4eac90b1e5580206522f5`](./contracts/base-8453/0x5dbe3ff971090450dbe4eac90b1e5580206522f5/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x615c2f42919c7fed56a44a5c62d5ef73f748fd0f`](./contracts/base-8453/0x615c2f42919c7fed56a44a5c62d5ef73f748fd0f/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6268212c72916ec0aa8f63e6d7bd8b034532e3a9`](./contracts/base-8453/0x6268212c72916ec0aa8f63e6d7bd8b034532e3a9/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x63ee4b77d3912dc7bce711c3be7bf12d532f1853`](./contracts/base-8453/0x63ee4b77d3912dc7bce711c3be7bf12d532f1853/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x648c292f0ea8ed76d645625a797b92bca957e400`](./contracts/base-8453/0x648c292f0ea8ed76d645625a797b92bca957e400/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6c68da07f1c806e4fce2880ffc14cd765e4cc5bb`](./contracts/base-8453/0x6c68da07f1c806e4fce2880ffc14cd765e4cc5bb/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f3386971ec5361bb36f84c37a953dc8cf15954e`](./contracts/base-8453/0x6f3386971ec5361bb36f84c37a953dc8cf15954e/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7ce3c393b07d5766c8da751f794391b5be55d1d1`](./contracts/base-8453/0x7ce3c393b07d5766c8da751f794391b5be55d1d1/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x86cc1214e5e41e96e91d4d8944e99f218f300299`](./contracts/base-8453/0x86cc1214e5e41e96e91d4d8944e99f218f300299/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88fa272fe8685b4e73d4590bdca70a5b901f7ebc`](./contracts/base-8453/0x88fa272fe8685b4e73d4590bdca70a5b901f7ebc/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x89cfc67ecd75fc036122d486abdc3bf0a06373cc`](./contracts/base-8453/0x89cfc67ecd75fc036122d486abdc3bf0a06373cc/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x935eda0060ba40ea409bb05fa2300abb4e215ac1`](./contracts/base-8453/0x935eda0060ba40ea409bb05fa2300abb4e215ac1/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x949e7b96c3946a0a035d33094fcb58418d50c505`](./contracts/base-8453/0x949e7b96c3946a0a035d33094fcb58418d50c505/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9623dfb044d5612ce0c0f1606973ccaefd03cd05`](./contracts/base-8453/0x9623dfb044d5612ce0c0f1606973ccaefd03cd05/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa1d5897cb1195ab45463d0b6ea3c6dfa438ff182`](./contracts/base-8453/0xa1d5897cb1195ab45463d0b6ea3c6dfa438ff182/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa21658b5702c838fad4aa840a07023ccdeaa1a85`](./contracts/base-8453/0xa21658b5702c838fad4aa840a07023ccdeaa1a85/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa8719f9f4c23266a214112aaf4902c1000c02e7c`](./contracts/base-8453/0xa8719f9f4c23266a214112aaf4902c1000c02e7c/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb616626fb78c7d64ded1b368358af7d1c14a2033`](./contracts/base-8453/0xb616626fb78c7d64ded1b368358af7d1c14a2033/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc005a992e5c47bb6d1a086f6f5ec7cba27dd0d4f`](./contracts/base-8453/0xc005a992e5c47bb6d1a086f6f5ec7cba27dd0d4f/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc1bc0450f8bb1386ffd5150cbb3ad38da1f0dd12`](./contracts/base-8453/0xc1bc0450f8bb1386ffd5150cbb3ad38da1f0dd12/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcc18b41a0f63c67f17f23388c848aec67b583422`](./contracts/base-8453/0xcc18b41a0f63c67f17f23388c848aec67b583422/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdb8648aeda3226c4dfeeefba59d4ed320791da83`](./contracts/base-8453/0xdb8648aeda3226c4dfeeefba59d4ed320791da83/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xde093684c796204224bc081f937aa059d903c52a`](./contracts/base-8453/0xde093684c796204224bc081f937aa059d903c52a/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdeebcaa4aa6b5b81f3066a92d21c978f753a564c`](./contracts/base-8453/0xdeebcaa4aa6b5b81f3066a92d21c978f753a564c/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeaa244fb99ab019aeafaa13ea6f63464907bd921`](./contracts/base-8453/0xeaa244fb99ab019aeafaa13ea6f63464907bd921/) | BraleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9ad50946f11e5e315c71abba2742c23b302020e8`](./contracts/base-8453/0x9ad50946f11e5e315c71abba2742c23b302020e8/) | CbBTCOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ff2cbafccae23a704d954b43910e864291fd03a`](./contracts/base-8453/0x0ff2cbafccae23a704d954b43910e864291fd03a/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc2c1f8eb98c0468be0232dd4166705d0dea3fe31`](./contracts/base-8453/0xc2c1f8eb98c0468be0232dd4166705d0dea3fe31/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x43d59d6d5a88787822c233b6f34db81eaca4aa1d`](./contracts/polygon-137/0x43d59d6d5a88787822c233b6f34db81eaca4aa1d/) | StablebondOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20711] app.etherfuse.com/legal/compliance-and-audits
- [20712] app.etherfuse.com/legal/proof-of-reserves
- [20713] Etherfuse+Opinion+PLD+Sin+Anexos+en.pdf
- [20714] OtterSec_Etherfuse_Stablebond_Audit_2024-10-22.pdf

Fork inheritance lineage and inherited audits are included when available.
