# Agentic Audit Brief: xWin Finance

## Project Overview

- Project: xWin Finance (`xwin-finance`)
- Website: [https://xwin.finance](https://xwin.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:16.580Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, bsc, polygon
- Contract surface: 123 unique implementations (277 raw deployments)
- DeFi Llama TVL: $4,565,346.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 23 project-authored contract(s) across 3 chain(s); 12 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 4 common project-authored base contract(s) (bep20, xwinstrategywithfee, xwinstrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 297; live-surface contracts included: 248 (176 live, 72 unknown).
- Excluded by liveness: 49 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/88 (6.8%)
- Deployed-live implementations: 88 of 123 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/88
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 123
- Raw deployments: 277
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 6 | 6.8% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FundV2 | unknown | bsc | n/a | 8 deployments: bsc [`0x0a0817...f495e5`](./contracts/bsc-56/0x0a0817454710102f2bcb2215d616cbe3aff495e5/); bsc `0x284b4a...5d0b48`; bsc `0x3809f2...be1563`; bsc `0x4d4f94...c64e4a`; bsc `0x61d572...837f37`; bsc `0xaaff5e...22aabe`; bsc `0xe949d2...b63f02`; bsc `0xfa4d4b...70635c` | ✅ Audited |
| FundV2 | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x00cc95...3c74a8`](./contracts/arbitrum-42161/0x00cc95c352f783438c0a95515b79620d8c3c74a8/); arbitrum `0x03d6fe...9a6988`; arbitrum `0x5b0d58...ac47d2`; arbitrum `0x70223e...33a1b5`; arbitrum `0xc9f555...3a0221`; arbitrum `0xed83fd...eeeed7` | ✅ Audited |
| FundV2 | unknown | arbitrum | n/a | 5 deployments: bsc `0x31518c...60ba38`; bsc `0x76d6cc...edc447`; arbitrum [`0x263e48...a5b5ae`](./contracts/arbitrum-42161/0x263e488747f48b7839d14ccc263a571712a5b5ae/); arbitrum `0x813b16...a58415`; arbitrum `0x8ec9c0...802b8e` | ✅ Audited |
| xWinBBMA | unknown | bsc | n/a | 2 deployments: bsc [`0x5efaab...f57d55`](./contracts/bsc-56/0x5efaabc34a3ba66f1fd02f056ac457aebaf57d55/); bsc `0xbeac35...8db739` | ✅ Audited |
| xWinBBMA | unknown | bsc | n/a | [`0x91faf1...21421c`](./contracts/bsc-56/0x91faf1bc82b3d333d2e73bffc7579210f621421c/) | ✅ Audited |
| xWinBuddyChef | unknown | bsc | n/a | 2 deployments: bsc [`0x4b87a6...c2e903`](./contracts/bsc-56/0x4b87a60fc5a94e5ac886867977e29c9711c2e903/); bsc `0xda728c...899092` | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FundV2Factory | unknown | bsc | n/a | 2 deployments: bsc [`0x91d881...89db25`](./contracts/bsc-56/0x91d8816beafe8256f75b0f2156c741d76489db25/); bsc `0x9ab3c5...bc60a0` | ⚠️ Unaudited |
| FundV2Factory | registry | polygon | n/a | [`0x9ebc52...628a68`](./contracts/polygon-137/0x9ebc52d849f961b43289d6da55663f3b9f628a68/) | ⚠️ Unaudited |
| FundV2Factory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x22c0fa...707eeb`](./contracts/arbitrum-42161/0x22c0fa31871adbb005a18b12d6339544ba707eeb/); arbitrum `0x6cc1ca...1dfc03` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xd4a3dc...0e5fb4`](./contracts/bsc-56/0xd4a3dcf47887636b19ed1b54aab722bd620e5fb4/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 3 deployments: bsc [`0x44195a...748edb`](./contracts/bsc-56/0x44195aa5f3116d99373c080c49732c4bb6748edb/); bsc `0xfbcddb...b369e7`; arbitrum `0x7e2177...e2f137` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x02c727...f0efb6`](./contracts/bsc-56/0x02c7276516fe7d7ea97bac6f205cc30be5f0efb6/); bsc `0xed302c...935b46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x06cabf...c4e248`](./contracts/bsc-56/0x06cabf4a2ff704827295a1daefc00d0dc6c4e248/); bsc `0x4aaff5...1ced31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x080330...bd096b`](./contracts/bsc-56/0x0803309830d5949939222f64e479d7c7afbd096b/); bsc `0xaf91db...8535f9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 5 deployments: bsc [`0x0f0414...95e46a`](./contracts/bsc-56/0x0f0414c6ec3e132301eff1b0d343a71a5595e46a/); bsc `0x30f77a...8d9146`; bsc `0x74f33a...10a2ae`; bsc `0xdcd5d7...2d4884`; bsc `0xeb0228...890010` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x15e58d...b8ffb1`](./contracts/bsc-56/0x15e58d79de97dae7e1b3b47d2e83843919b8ffb1/); bsc `0xe4cc29...bbae86` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x178063...4183d1`](./contracts/bsc-56/0x178063ba8e1616579391373111190391d34183d1/); bsc `0x278b82...0f0871` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 4 deployments: bsc [`0x1aa2c6...bbaf94`](./contracts/bsc-56/0x1aa2c649dc580b5df546c8a7690c1f7fb3bbaf94/); bsc `0x5747de...0f1b2c`; bsc `0x5f3348...2117be`; bsc `0xef4995...20fe71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2088a8...522678`](./contracts/bsc-56/0x2088a8aaf5c5bfc6d0b801683fa78fe6c0522678/); bsc `0xc82d14...15dcbe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x21ad7a...e151c8`](./contracts/bsc-56/0x21ad7ab671fa02b3b9906130e268710528e151c8/); bsc `0x64b117...d8e569` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 4 deployments: bsc [`0x27f30d...7a8611`](./contracts/bsc-56/0x27f30d83554e2ae856ffb50187f565e54a7a8611/); bsc `0x8961f2...fa6008`; bsc `0xa9c087...208463`; bsc `0xab731d...ead19d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x3bb0ae...d09cb5`](./contracts/bsc-56/0x3bb0aed80a82f7482d99f76736e25d8057d09cb5/); bsc `0x516316...9796e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 6 deployments: bsc [`0x41b744...6d124e`](./contracts/bsc-56/0x41b74417e869918fd89574014fd0d303526d124e/); bsc `0x52d40e...b7c8ab`; bsc `0x77d2ff...134b0b`; bsc `0x88c026...271304`; bsc `0x9006ae...dde617`; bsc `0xb0bc79...081d6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x42e58f...60a1d2`](./contracts/bsc-56/0x42e58ff070e3a88e840ea3c788a961c49e60a1d2/); bsc `0xa09e6e...678c78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x4601fa...0e95e3`](./contracts/bsc-56/0x4601fa376816d4d6f797f08605110fb4b20e95e3/); bsc `0xc1bc33...8a0c15`; bsc `0xe1f3c7...01267b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x475b0d...b62d52`](./contracts/bsc-56/0x475b0d12123daa402fe80d374ed0817b43b62d52/); bsc `0x61469e...1b534c`; bsc `0xef3ca7...262626` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x513a2e...8cce5b`](./contracts/bsc-56/0x513a2ecc09205be2cad68104364d1c71938cce5b/); bsc `0x59fade...ccb69d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x519b63...1cba69`](./contracts/bsc-56/0x519b6333e06a01a2ec300c658d5e2ebb4c1cba69/); bsc `0xc50a87...6960e3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x51c6d9...48f15b`](./contracts/bsc-56/0x51c6d9b7724ad8694de67ad3c7e18c5e0448f15b/); bsc `0x63c603...0ad1d2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x593a50...21fac8`](./contracts/bsc-56/0x593a506e5877ca165bc4013943361d71ca21fac8/); bsc `0xcde959...0470d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6079ce...e86acd`](./contracts/bsc-56/0x6079ceae730ed70923fb14637a697ea74de86acd/); bsc `0xcf5900...71c56d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x659f88...1dd5d4`](./contracts/bsc-56/0x659f88eabd9608346e65c176edb3538b8a1dd5d4/); bsc `0xd2ff6d...fd45a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x66c88c...3bac62`](./contracts/bsc-56/0x66c88cbfedbeeb621b389ce308ca4e742d3bac62/); bsc `0xcd009b...0b9edc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x82be05...02d285`](./contracts/bsc-56/0x82be05c0ad016f9c5d114296d5ae2d434602d285/); bsc `0xc9145e...bee46a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x87fbe9...249b90`](./contracts/bsc-56/0x87fbe91cfebb88553702a296538dcde868249b90/); bsc `0x9a5471...4cc78f`; bsc `0xb26012...845944` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x8987f3...e9952f`](./contracts/bsc-56/0x8987f3282ae26c5029bd6c8ce6f5ede450e9952f/); bsc `0x9a9b49...38e3da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x9031de...661221`](./contracts/bsc-56/0x9031dee43b8697985fbc0c603f891ff7a8661221/); bsc `0x9dc471...90aaa2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 4 deployments: bsc [`0x9dfba2...0058c0`](./contracts/bsc-56/0x9dfba2f32816d540ad2f883bfe98fc93660058c0/); bsc `0xc733d2...d37447`; bsc `0xd560f9...e9864d`; bsc `0xef8605...d27e63` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xa95228...30ef07`](./contracts/bsc-56/0xa95228111d4092407154acab120f82c79330ef07/); bsc `0xfdf5eb...83fd62` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xac01d1...f3d390`](./contracts/bsc-56/0xac01d131c04546c8db2eace57e323046caf3d390/); bsc `0xe1a24f...8daf17` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xae6522...345c6a`](./contracts/bsc-56/0xae65220661f27164313131f33d9c775f59345c6a/); bsc `0xb80504...2bd505` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xc79d64...cb3c8e`](./contracts/bsc-56/0xc79d647090ecd8fd4481014b3e951171e2cb3c8e/); bsc `0xf15a03...02f186` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xc9471c...c94cb8`](./contracts/bsc-56/0xc9471c28dbb275400d6721d74598d40964c94cb8/); bsc `0xdd3e73...64c5ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xdc5be5...f1e99e`](./contracts/bsc-56/0xdc5be5626ad9995d8e380e61539e16f612f1e99e/); bsc `0xf209df...3cb575` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xf3a926...bc0222`](./contracts/bsc-56/0xf3a926d6b6d34018d2a3434894b52a1acabc0222/); bsc `0xf9390d...29320a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x107c86...bbb428`](./contracts/arbitrum-42161/0x107c86796d5f76c7319e2e3e913220a2f0bbb428/); arbitrum `0x2adac8...62cab3`; arbitrum `0x438c6f...a95250`; arbitrum `0x827a3e...fb3083`; arbitrum `0xa5de4f...42ce65`; arbitrum `0xee5693...df7c79`; arbitrum `0xffd330...eff011` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x190d05...5912b2`](./contracts/arbitrum-42161/0x190d055eb4ad2b50908ee8178492fa4dd35912b2/); arbitrum `0x92fa5d...1b34e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2070f6...c77026`](./contracts/arbitrum-42161/0x2070f6b27a8338303bb0abad3d0367d1f0c77026/); arbitrum `0xb65fce...4e07cd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5aacdb...75de8a`](./contracts/arbitrum-42161/0x5aacdb8328901e459d6f7fc8c0465d0bd075de8a/); arbitrum `0xe77dc6...2bdd2e` | ⚠️ Unaudited |
| UniSwapV2TWAPOracle | operational_periphery | bsc | n/a | [`0x7a8aa0...1299ac`](./contracts/bsc-56/0x7a8aa080eada0b670fb719d7e53f87898a1299ac/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | bsc | n/a | 4 deployments: bsc [`0x072f09...b08462`](./contracts/bsc-56/0x072f09c9adbe49cc16d9eec37d3d5727d5b08462/); bsc `0x5f1adc...c654e2`; bsc `0xbf694d...aac9b4`; bsc `0xc54a8d...97e62c` | ⚠️ Unaudited |
| xWinAllocations | unknown | bsc | n/a | 3 deployments: bsc [`0x24cfbb...6ae62a`](./contracts/bsc-56/0x24cfbb02c24eeb0bef09031c737964832e6ae62a/); bsc `0x60baf2...42f4f4`; bsc `0xde6a27...9558e1` | ⚠️ Unaudited |
| xWinAllocations | unknown | bsc | n/a | 9 deployments: bsc [`0x396d75...ba106c`](./contracts/bsc-56/0x396d759cb982bc5f7a9b714a97ab66d135ba106c/); bsc `0x3b62af...496f4b`; bsc `0x57951b...201a37`; bsc `0x5c85e5...24c9f6`; bsc `0x6559fb...69c57a`; bsc `0x92befe...5d06a5`; bsc `0xc9fa9b...6e398e`; bsc `0xda9814...66785f`; bsc `0xfc560c...4af0fb` | ⚠️ Unaudited |
| xWinAllocations | unknown | polygon | n/a | 3 deployments: polygon [`0x75dab5...252a5a`](./contracts/polygon-137/0x75dab5000af15e7a9dd9c2365ae69e394c252a5a/); polygon `0xb4319e...440f69`; polygon `0xc1c53b...d422ac` | ⚠️ Unaudited |
| xWinDCA | unknown | bsc | n/a | 2 deployments: bsc [`0x482ae9...b8602a`](./contracts/bsc-56/0x482ae949e4a70953fca090717b68359b73b8602a/); bsc `0xcd5919...ae7705` | ⚠️ Unaudited |
| xWinDCAArb | unknown | bsc | n/a | 9 deployments: bsc [`0x268001...0ed7eb`](./contracts/bsc-56/0x2680012956191349f2be7d3a2b27e5a2d30ed7eb/); bsc `0x3914a8...86f166`; bsc `0x5a20bd...91f479`; bsc `0x5b36a6...74f1a3`; bsc `0x8d77d4...5ef474`; bsc `0xa0c558...5782d1`; bsc `0xc224cd...964608`; bsc `0xfb1072...0e06d1`; bsc `0xfe641d...8f9beb` | ⚠️ Unaudited |
| xWinDCAArb | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x48334e...1f6ce4`](./contracts/arbitrum-42161/0x48334ec0cfeaef6bb6b857a32c5ce3323b1f6ce4/); arbitrum `0x4917b1...e99184`; arbitrum `0x583454...8ec8ba`; arbitrum `0x72d24b...170534`; arbitrum `0x9ccd1d...ad8c80`; arbitrum `0xc9471c...c94cb8` | ⚠️ Unaudited |
| xWinDefi | unknown | bsc | n/a | [`0x1bf7fe...fe8092`](./contracts/bsc-56/0x1bf7fe7568211ecff68b6bc7ccad31ecd8fe8092/) | ⚠️ Unaudited |
| xWinEmitEvent | unknown | bsc | n/a | 2 deployments: bsc [`0x05542f...202ed2`](./contracts/bsc-56/0x05542f7f07574848c222b50df298037bf7202ed2/); bsc `0xc4c017...703cc6` | ⚠️ Unaudited |
| xWinEmitEvent | unknown | polygon | n/a | [`0x3f2bef...25c062`](./contracts/polygon-137/0x3f2bef656821fac3a969d6a1f831e5f3ce25c062/) | ⚠️ Unaudited |
| xWinEmitEvent | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x87b340...7b8e5a`](./contracts/arbitrum-42161/0x87b34058a5d38bf6cabd0a1ac497183a1f7b8e5a/); arbitrum `0xdb0b5e...68533d` | ⚠️ Unaudited |
| xWinERC20Alpha | token | bsc | n/a | 3 deployments: bsc [`0x0a6527...5c5b24`](./contracts/bsc-56/0x0a652784df3f8abde85daeeee77d1ea97f5c5b24/); bsc `0x396231...b2882b`; bsc `0xb97f61...55ecb5` | ⚠️ Unaudited |
| xWinERC20Alpha | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x07f42f...bfb537`](./contracts/arbitrum-42161/0x07f42f4972cf2b8d59ab9543741f21f772bfb537/); arbitrum `0x4c4cbc...61fa71`; arbitrum `0xa3960c...64d552` | ⚠️ Unaudited |
| xWinFarm | unknown | bsc | n/a | 3 deployments: bsc [`0x4fdca7...d0bc18`](./contracts/bsc-56/0x4fdca7b4c19c70ad1f275934160400f9ded0bc18/); bsc `0x8f52e0...e56088`; bsc `0x9236a0...269b22` | ⚠️ Unaudited |
| xWinFeeCollectionWallet | unknown | bsc | n/a | 2 deployments: bsc [`0x1cf446...6be53b`](./contracts/bsc-56/0x1cf446839b95a21211f79871f8cd344b056be53b/); bsc `0x212569...76d35c` | ⚠️ Unaudited |
| xWinFeeCollectionWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x83202e...2717c9`](./contracts/arbitrum-42161/0x83202e0505c192e49a9383c39feac509ba2717c9/); arbitrum `0xc6c06e...0ad65e` | ⚠️ Unaudited |
| xWinFund | unknown | bsc | n/a | 2 deployments: bsc [`0x548c42...3c7488`](./contracts/bsc-56/0x548c42fe3d1a44496491d09db2457d671f3c7488/); bsc `0x963039...4b9dc5` | ⚠️ Unaudited |
| xWinIRT | unknown | bsc | n/a | 2 deployments: bsc [`0x5a8a66...208e08`](./contracts/bsc-56/0x5a8a66df53df88844c60829967b88d00ed208e08/); bsc `0xf995f6...403395` | ⚠️ Unaudited |
| xWinLiquidStaking | unknown | bsc | n/a | 2 deployments: bsc [`0x051dcb...361fe1`](./contracts/bsc-56/0x051dcb25cd999f88d0bc43eedeee27c605361fe1/); bsc `0x9fd5bf...fc1099` | ⚠️ Unaudited |
| xWinLockedStake | unknown | bsc | n/a | 2 deployments: bsc [`0xa4ae0d...25a9fc`](./contracts/bsc-56/0xa4ae0dcc89af9855946c0b2ad4a10ff27125a9fc/); bsc `0xd6f854...61b810` | ⚠️ Unaudited |
| xWinMasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x367712...d979e7`](./contracts/bsc-56/0x367712b4be88d71cc82dd9b18640d3718ed979e7/); bsc `0xd09774...900a60` | ⚠️ Unaudited |
| xWinPriceMaster | operational_periphery | bsc | n/a | 2 deployments: bsc [`0xb12337...5e48e2`](./contracts/bsc-56/0xb1233713fea0984fff84c7456d2cced43e5e48e2/); bsc `0xd712df...90c77a` | ⚠️ Unaudited |
| xWinPriceMaster | operational_periphery | polygon | n/a | [`0x4259ed...e3feed`](./contracts/polygon-137/0x4259ed91681159e455629a35d81c0b0020e3feed/) | ⚠️ Unaudited |
| xWinPriceMaster | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x631b0f...aabd52`](./contracts/arbitrum-42161/0x631b0f08fa93fbbcf78dfd8224efd5ab5aaabd52/); arbitrum `0x8a3c24...83c667` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | bsc | n/a | 8 deployments: bsc [`0x0c34aa...7a9ae7`](./contracts/bsc-56/0x0c34aa4e36983ab6ec11bc557a3b8cf79a7a9ae7/); bsc `0x1d2430...f23de9`; bsc `0x605926...6ba83f`; bsc `0x7348be...4da53e`; bsc `0x7a0dec...42116c`; bsc `0x8b7fca...77bdb2`; bsc `0x911ba5...314a5e`; bsc `0xcbca44...8a2742` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | bsc | n/a | 3 deployments: bsc [`0x9e0039...6a8803`](./contracts/bsc-56/0x9e0039feb55f00d4183b150f48d205242e6a8803/); bsc `0xf4979c...886395`; bsc `0xf538ab...4de84a` | ⚠️ Unaudited |
| xWinSingleAssetAave | unknown | polygon | n/a | [`0x1db49d...34af2c`](./contracts/polygon-137/0x1db49d9871a61101275ea72d9b9498948434af2c/) | ⚠️ Unaudited |
| xWinSingleAssetAave | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x093d04...4125d5`](./contracts/arbitrum-42161/0x093d0496303de127806aefd8050ebb3ea44125d5/); arbitrum `0x1602d4...b4d763`; arbitrum `0x69fa36...93b0f0`; arbitrum `0x6ae475...aebda6`; arbitrum `0x8a0fa3...90ff62`; arbitrum `0xc41f7e...2f688e` | ⚠️ Unaudited |
| xWinSingleAssetOla | unknown | bsc | n/a | 2 deployments: bsc [`0x431de8...848291`](./contracts/bsc-56/0x431de8a6e3c1cdc850a69cb576226cd58a848291/); bsc `0x9446be...60c7f2` | ⚠️ Unaudited |
| xWinSingleAssetOla | unknown | bsc | n/a | 3 deployments: bsc [`0x664160...dc43b1`](./contracts/bsc-56/0x6641609d8e2574d2d4f66739677d070052dc43b1/); bsc `0x697648...12d7d6`; bsc `0xcebd36...95f956` | ⚠️ Unaudited |
| xWinSplitFeeWallet | unknown | bsc | n/a | 6 deployments: bsc [`0x16c486...bfa29e`](./contracts/bsc-56/0x16c4866ea0d5f690f2149faea9e661fafcbfa29e/); bsc `0x50c0e1...8211d1`; bsc `0x7ae229...791329`; bsc `0x915017...cac3dc`; bsc `0xba37d8...7cdf7f`; bsc `0xd66b0f...0097c2` | ⚠️ Unaudited |
| xWinSplitFeeWallet | unknown | bsc | n/a | 2 deployments: bsc [`0x721115...2241de`](./contracts/bsc-56/0x72111518fc8973b9e334fcbb81d85cd8a92241de/); bsc `0x949b90...9d1c24` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | polygon | n/a | [`0x549388...800707`](./contracts/polygon-137/0x5493881d5fc68be3519cb25f2a4717d192800707/) | ⚠️ Unaudited |
| xWinSwapV3 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x667b40...2978a1`](./contracts/arbitrum-42161/0x667b40645f9b2ea7b369548585a240d8f52978a1/); arbitrum `0x800b49...70406a` | ⚠️ Unaudited |
| xWinSwapV3Pancake | unknown | bsc | n/a | 2 deployments: bsc [`0x9ce3fc...93d8d1`](./contracts/bsc-56/0x9ce3fcffaeb4b7fbdf39e9313f845d977393d8d1/); bsc `0xcd839b...cbf578` | ⚠️ Unaudited |
| xWinSystemExecutor | unknown | bsc | n/a | 2 deployments: bsc [`0x1ed789...86b73f`](./contracts/bsc-56/0x1ed78999ae4f0d3411df8cac348e83016e86b73f/); bsc `0x96160d...1c948c` | ⚠️ Unaudited |
| xWinSystemExecutor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa26e81...bdad8c`](./contracts/arbitrum-42161/0xa26e810850ce282217b3c251b99299725bbdad8c/); arbitrum `0xba083e...b46d3d` | ⚠️ Unaudited |
| XWINToken | token | bsc | n/a | [`0xd88ca0...bb5d28`](./contracts/bsc-56/0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x018bac...3d38ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a0088...600948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24478c...860489` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24745c...1fed3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b4b73...d3366a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d119a...58f6b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x321c78...c8c511` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32ad48...d036f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35ff1d...093ea5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36ccae...5726b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x373a8a...c68bca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4259ed...e3feed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x436769...7094c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44e5c1...d129d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x476ae5...8e0e78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x532096...dd3023` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x584f58...0c84a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d969a...0cb568` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x637cce...11e585` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6384f4...292888` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f4ac4...9886da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x935b12...d3deaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d7371...247f42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa26e81...bdad8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab1ec2...1c067a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9ea91...6b5350` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc624a...d5ef20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf8244...9b88af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd43b0a...22710b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2d8b2...cca8c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7d831...385d35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8786d...fdb95c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4ed0b...0fc43e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5c65b...89f405` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6a925...15a119` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/xwinfinance](https://skynet.certik.com/projects/xwinfinance) | CertiK | Audit | 2023-06 | stale | Direct | contract_name | 24 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=24

Fork inheritance lineage and inherited audits are included when available.
