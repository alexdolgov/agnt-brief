# Agentic Audit Brief: ODOS

## Project Overview

- Project: ODOS (`odos`)
- Website: [https://app.odos.xyz](https://app.odos.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.902Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, fraxtal, linea, mantle, mode, optimism, polygon, scroll, sonic, unichain, zksync-era
- Contract surface: 567 unique implementations (597 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 5 project-authored contract(s) across 4 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (ownable2step). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 601; live-surface contracts included: 597 (26 live, 571 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/4 (50.0%)
- Deployed-live implementations: 4 of 567 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 563
- Unique implementations: 567
- Raw deployments: 597
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 2 | 50.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OdosRouterV2 | adapter | base | n/a | 15 deployments: ethereum `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559`; optimism `0xca423977156bb05b13a2ba3b76bc5419e2fe9680`; bsc `0x89b8aa89fdd0507a99d334cbe3c808fafc7d850e`; unichain `0x6409722f3a1c4486a3b1fe566cbdd5e9d946a1f3`; polygon `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf`; sonic `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d`; fraxtal `0x56c85a254dd12ee8d9c04049a4ab62769ce98210`; mantle `0xd9f4e85489adcd0baf0cd63b4231c6af58c26745`; base [`0x19ceead7105607cd444f5ad10dd51356436095a1`](./contracts/base-8453/0x19ceead7105607cd444f5ad10dd51356436095a1/); mode `0x654677554c9b81263b638c2d6d78d6b7322944c1`; mode `0x7e15eb462cdc67cf92af1f7102465a8f8c784874`; arbitrum `0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13`; avalanche `0x88de50b233052e4fb783d4f6db78cc34fea3e9fc`; linea `0x2d8879046f1559e53eb052e949e9544bcb72f414`; scroll `0xbfe03c9e20a9fc0b37de01a172f207004935e0b1` | ✅ Audited |
| OdosRouterV3 | adapter | ethereum | n/a | [`0x0d05a7d3448512b78fa8a9e46c4872c88c4a0d05`](./contracts/ethereum-1/0x0d05a7d3448512b78fa8a9e46c4872c88c4a0d05/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OdosLimitOrderRouter | adapter | bsc | n/a | 14 deployments: ethereum `0x5f79636fa7bc622ea48802e6cf80a5dae814dae1`; optimism `0xcbf3822a63b7867cd602317fb4ae3ca864826ef8`; bsc [`0x0d4ab12e62d17f037d43f018da18ff623e1af3b2`](./contracts/bsc-56/0x0d4ab12e62d17f037d43f018da18ff623e1af3b2/); unichain `0x372d96eda72bea64dfca3577d04382e4dbe2ff2b`; polygon `0x93052961c75c92fd5d6362655936c239ef2d5336`; sonic `0xb9cbd870916e9ffc52076caa714f85a022b7f330`; fraxtal `0x5e0afad0f658f9689806296e0509affc191d9a09`; mantle `0xa05a88037402d869b7ca69f5bec098e19bedafbb`; base `0xedeafdef0901ef74ee28c207be8424d3b353d97a`; mode `0x8073e286dadc6d92befc8f436c5bcdfce213e681`; arbitrum `0x7432657cdda02226ac2aac9d8f552ee9613b064e`; avalanche `0xcc0126349d1bd892d1c53381e68dbf0c8f0e045e`; linea `0xb3a9b56056a5c93f468df62579b9a5bea1741069`; scroll `0x468633515c46effcc77caa949ce8775505e5deda` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xca73ed1815e5915489570014e024b7ebe65de679`](./contracts/base-8453/0xca73ed1815e5915489570014e024b7ebe65de679/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (563)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cb9612fb90da03c3bba8f79ee02f9f7fbacc521` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0df90ffee4bcc4b9b1c9847b7dc9b1c648d23340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f32a1597b43a8cb2f20e8d3023a39c532ff6978` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x107d4f2131fb64bbcdad1622ee1523e90797688b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13b1f8ee1722ba781d6de75ff0d166608367162a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14adf53c57aeb3bb4a665f37ba0b80eac428f495` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18a9d605b98b726725adaa2f53f83b5b7d4d0025` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a22c1886196101babcac1bf4223294ab04c1d66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 3 deployments: ethereum `0x1c4404a6401a02e61f153a7fed1aedddbd1476ff`; ethereum `0x365084b05fa7d5028346bd21d842ed0601bab5b8`; ethereum `0x7882570840a97a490a37bd8db9e1ae39165bfbd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2087e7fc5c7241eb1bcadb847017460b8126229c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x221a4c9e54baebd678ff1823e4fca2ac3685ca64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x227dfd9fa88bfe186682f3a45597bac051742e5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28104d4f703ee5b5011cefe106f54efd56f33f95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d872d304876ee25f44d3d00e910aaab63e0ba69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33022c728791d4056bca6fc93bd3ff344b6633af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38e9fc5905c59338e37b9ef528e05e04391aa9ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad1e95e1bb50370774fd9d07fd7aa317d0bb11e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f1aba670a0234109be0222a805f3207117c2531` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x452064f70387d545621936019bb5e6721e1ee6c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b8d3292c21a91f7e53a43bd0066970a41b280f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d346a44b5148b230437b085b25d4556425dbf1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d8285b6e0ca4bc2360bd2932caec45a10868cb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x525f9194eadcf05b588061746937aa0abcd6bf20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56c85a254dd12ee8d9c04049a4ab62769ce98210` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61178775c2239117745ae76c8ab9fcde737c275d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6166bd61e8eca7ae942046fb6251a998a2d7c687` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62b3e98afa30f94f382856a71d811ac41f5211a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f31b5e51eb7de8cb760bbe2e372cfc929207805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x716c55c2d9d9fc1e38465e9301db167ba1483ab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76edf8c155a1e0d9b2ad11b04d9671cbc25fee99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e15eb462cdc67cf92af1f7102465a8f8c784874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c5ee215d665fc2cc8e2b96a22b9d44912af58ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e2aa26ba3cfd8fa9b5fbc7ba0f497ba4a20c11c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x911c697f5a54a98ebce0b19d687cde747e0f490a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fdc82cfe97c6cb8fe89e23625b4746cbe8cabaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa556028445a61760e2fd596a55ab66cdb44383db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8376f53391a041c8236a232f7f019ea76eed86d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb094d94ecc3c23692f341376b34491674d23a380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb28ca7e465c452ce4252598e0bc96aeba553cf82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb44612c09b3940bc3f748cfbcd82c129be8201bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8fc6bf89e16e66b5fa9aa44b8393a588cf1e77c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdff6f2290b2c9b373e9d90f1ebf67e9653da051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfe03c9e20a9fc0b37de01a172f207004935e0b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc867d2676b1bbf4e56b478d1dbcd926f22a5b394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcefcc8fd00d874522edbe25a2cdc9178f4ca9159` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3cc1eaa8e2da09b0702f351cd8f1480a4e3c2f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd52abafd35289749cb1587b53cdd35ebe718d583` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd554c0cce779d64b7e6d18d7c5c7c95d28b5ab54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd768d1fe6ef1449a54f9409400fe9d0e4954ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda87da411bb717e5bb97623a02b52f6f18fad046` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe224147a9e228e598bd20b63593e2f54048ee5b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe41512eac00ce2193cc8137ec73527404e72b6b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebe9bfa5c0da3627a7f24cf20d6e5e3ef4a445fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf037402567030dae4a9bb78e66de92f13ad5237b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf052cee512c696e91625b07ecc9484fdb6d45629` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3cf2d79a3db7fa0f0bfd8192603333ce2ce00e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb2139331532e3ee59777fbbcb14af674f3fd671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe81c675c06f8dd40d0d345505dc4592ccfa89c0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0cb9612fb90da03c3bba8f79ee02f9f7fbacc521` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x14adf53c57aeb3bb4a665f37ba0b80eac428f495` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x15606261568446ce3a859f2596266ae60edf1d38` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x18a9d605b98b726725adaa2f53f83b5b7d4d0025` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2b6bb9f77268cc7853b68219cf5654a86cbbbe9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x33022c728791d4056bca6fc93bd3ff344b6633af` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x37a2bd16c398d2879681f17a4f5684d741be506f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x388084ac72eb81a0fff296892c6fd5f629d6513e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x38e9fc5905c59338e37b9ef528e05e04391aa9ef` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4612ead0410b61b9878e292c28241789e3f87dfe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x47b8d3292c21a91f7e53a43bd0066970a41b280f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x525f9194eadcf05b588061746937aa0abcd6bf20` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x56c85a254dd12ee8d9c04049a4ab62769ce98210` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x62b3e98afa30f94f382856a71d811ac41f5211a7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x654677554c9b81263b638c2d6d78d6b7322944c1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x69bac3c72f2b3c8fd484a31aa02424ec40f092e6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x765149e27660068ae2e6c837a59e22c09f261714` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x82155e93dd29ee103bbc1b5a7a158731bd9639bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x911c697f5a54a98ebce0b19d687cde747e0f490a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9b99e9c620b2e2f09e0b9fced8f679eecf2653fe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9fdc82cfe97c6cb8fe89e23625b4746cbe8cabaf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa565bb71a42639e3ca89a3beaeed821bc1ab9e63` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa77f627a717271d38ea1c80495427b6cdf3cc8f7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa8376f53391a041c8236a232f7f019ea76eed86d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xac02245ca7d481b25ff8acc48d5149dde8fc134d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb44612c09b3940bc3f748cfbcd82c129be8201bc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb76599cd426c8811b29772cb46ff08293fd98804` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb8fc6bf89e16e66b5fa9aa44b8393a588cf1e77c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbdff6f2290b2c9b373e9d90f1ebf67e9653da051` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc231fce68896fac20854de88fb01d8892d2660da` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd768d1fe6ef1449a54f9409400fe9d0e4954ea3f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xda87da411bb717e5bb97623a02b52f6f18fad046` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe224147a9e228e598bd20b63593e2f54048ee5b1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xecdfcb1dd81d07c3551cba94023ee443450353e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf037402567030dae4a9bb78e66de92f13ad5237b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb2139331532e3ee59777fbbcb14af674f3fd671` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xffbc8e220b644e51bc4f526f9a00e798da44e19a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c5362690e4519a78fe62592d01df5eb91b9547a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13b1f8ee1722ba781d6de75ff0d166608367162a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15606261568446ce3a859f2596266ae60edf1d38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2108641461fc7663175733c725f83647fc124699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x221a4c9e54baebd678ff1823e4fca2ac3685ca64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2485057d234be2a5afd0646cfa803c97faf5768e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x261ffdee8558efcd531dacca5771f025feb71a96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28104d4f703ee5b5011cefe106f54efd56f33f95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d872d304876ee25f44d3d00e910aaab63e0ba69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33022c728791d4056bca6fc93bd3ff344b6633af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a2bd16c398d2879681f17a4f5684d741be506f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x388084ac72eb81a0fff296892c6fd5f629d6513e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f1aba670a0234109be0222a805f3207117c2531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47b8d3292c21a91f7e53a43bd0066970a41b280f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53abf4fd73667187d738adaf6da93dc9f9550d40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f3454fa53e5866a4f69bbc2e6b9a041092d9ad7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6166bd61e8eca7ae942046fb6251a998a2d7c687` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62b3e98afa30f94f382856a71d811ac41f5211a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69bac3c72f2b3c8fd484a31aa02424ec40f092e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e15eb462cdc67cf92af1f7102465a8f8c784874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82155e93dd29ee103bbc1b5a7a158731bd9639bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88548c02db0b34a55fd14e0502a0ad60761ded18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c5ee215d665fc2cc8e2b96a22b9d44912af58ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e2aa26ba3cfd8fa9b5fbc7ba0f497ba4a20c11c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e7591e2919157a6bbe9e3defe0f1ff793e65ec1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa556028445a61760e2fd596a55ab66cdb44383db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa77f627a717271d38ea1c80495427b6cdf3cc8f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8376f53391a041c8236a232f7f019ea76eed86d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb094d94ecc3c23692f341376b34491674d23a380` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbef11cff5495ef0b98adc841579fd73c33769a98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3f3a07ae7d2a125ef81a5950c4d0dd54c740251` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc46785891bc0dc3a1b88a6ba39a78ab7f5850846` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6315d6290afccd9df0327655df085aeceae59df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf4234b88f74aed8004245a2b382c35ad61ead74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf44f87b3299a297a62e4bd0d386d0b181ae469f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda4f2e8041aa91a93b1d46cf224bbd4e9134a9ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea49166a27c1796cd2b226d211d70edeed0ae397` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecdfcb1dd81d07c3551cba94023ee443450353e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb66e944021bf915cfb4dac2b20653930bf7d35a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x88de50b233052e4fb783d4f6db78cc34fea3e9fc` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c5362690e4519a78fe62592d01df5eb91b9547a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cb9612fb90da03c3bba8f79ee02f9f7fbacc521` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13b1f8ee1722ba781d6de75ff0d166608367162a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x15606261568446ce3a859f2596266ae60edf1d38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a22c1886196101babcac1bf4223294ab04c1d66` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2087e7fc5c7241eb1bcadb847017460b8126229c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x221a4c9e54baebd678ff1823e4fca2ac3685ca64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2485057d234be2a5afd0646cfa803c97faf5768e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x261ffdee8558efcd531dacca5771f025feb71a96` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33022c728791d4056bca6fc93bd3ff344b6633af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ad1e95e1bb50370774fd9d07fd7aa317d0bb11e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x413c266e0d035efae04151cd2a9a277869506f42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47b8d3292c21a91f7e53a43bd0066970a41b280f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53abf4fd73667187d738adaf6da93dc9f9550d40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6166bd61e8eca7ae942046fb6251a998a2d7c687` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62b3e98afa30f94f382856a71d811ac41f5211a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65280598e66151b10def5c05e05d68748ce72bc0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x69bac3c72f2b3c8fd484a31aa02424ec40f092e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x716c55c2d9d9fc1e38465e9301db167ba1483ab9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x765149e27660068ae2e6c837a59e22c09f261714` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e15eb462cdc67cf92af1f7102465a8f8c784874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82155e93dd29ee103bbc1b5a7a158731bd9639bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e2aa26ba3cfd8fa9b5fbc7ba0f497ba4a20c11c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e7591e2919157a6bbe9e3defe0f1ff793e65ec1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b99e9c620b2e2f09e0b9fced8f679eecf2653fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa77f627a717271d38ea1c80495427b6cdf3cc8f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8376f53391a041c8236a232f7f019ea76eed86d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac02245ca7d481b25ff8acc48d5149dde8fc134d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb094d94ecc3c23692f341376b34491674d23a380` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb28ca7e465c452ce4252598e0bc96aeba553cf82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfe03c9e20a9fc0b37de01a172f207004935e0b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3f3a07ae7d2a125ef81a5950c4d0dd54c740251` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea49166a27c1796cd2b226d211d70edeed0ae397` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecdfcb1dd81d07c3551cba94023ee443450353e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf82ab7d84f27d8d2e7a6b2859b3f7835550e14f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb66e944021bf915cfb4dac2b20653930bf7d35a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x12b6bc28fb2885927eac6b9445db47c0632a7167` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x14adf53c57aeb3bb4a665f37ba0b80eac428f495` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x19ceead7105607cd444f5ad10dd51356436095a1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a40daba82481081cbb73ded8896621dee71e330` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x221a4c9e54baebd678ff1823e4fca2ac3685ca64` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2b8b3f0949dfb616602109d2aabba11311ec7aec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3a5d6a7aab7c1b681892bdc3667c76a5e4116ba3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x452064f70387d545621936019bb5e6721e1ee6c7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4612ead0410b61b9878e292c28241789e3f87dfe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x46a405160258f071b5db777e0965c98133ea03a3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4d8285b6e0ca4bc2360bd2932caec45a10868cb2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x535b5c374c03e1a569dae156f4e813af843d2de1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x53f11eef3732d6d66cac6be90934fe129349e409` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6166bd61e8eca7ae942046fb6251a998a2d7c687` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b66316dbdbc67115fefc89edbd0bf3658e6836f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x76edf8c155a1e0d9b2ad11b04d9671cbc25fee99` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7882570840a97a490a37bd8db9e1ae39165bfbd6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8842a81a22cd72c2caffafadc8f1d5182e3b64f7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e2aa26ba3cfd8fa9b5fbc7ba0f497ba4a20c11c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e7591e2919157a6bbe9e3defe0f1ff793e65ec1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x97c16ea96bdd3f3217ce41663538a7cba3b74805` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9b99e9c620b2e2f09e0b9fced8f679eecf2653fe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9fdc82cfe97c6cb8fe89e23625b4746cbe8cabaf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb28ca7e465c452ce4252598e0bc96aeba553cf82` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbdff6f2290b2c9b373e9d90f1ebf67e9653da051` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc7080e3117cc4bbded91c060d163f80d7771499e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd0c22a5435f4e8e5770c1fafb5374015fc12f7cd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd554c0cce779d64b7e6d18d7c5c7c95d28b5ab54` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea2c459749efe8fb5fca0a748e3d869a76ae5e23` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xecdfcb1dd81d07c3551cba94023ee443450353e1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf052cee512c696e91625b07ecc9484fdb6d45629` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf3cf2d79a3db7fa0f0bfd8192603333ce2ce00e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfdf03f9b84babb7d8bf2fd583a85ba3858abd4c4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xffbc8e220b644e51bc4f526f9a00e798da44e19a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x5e0afad0f658f9689806296e0509affc191d9a09`; fantom `0xd0c22a5435f4e8e5770c1fafb5374015fc12f7cd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x2108641461fc7663175733c725f83647fc124699` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x221a4c9e54baebd678ff1823e4fca2ac3685ca64` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x261ffdee8558efcd531dacca5771f025feb71a96` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x413c266e0d035efae04151cd2a9a277869506f42` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4d346a44b5148b230437b085b25d4556425dbf1a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x6166bd61e8eca7ae942046fb6251a998a2d7c687` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x765149e27660068ae2e6c837a59e22c09f261714` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe41512eac00ce2193cc8137ec73527404e72b6b1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf82ab7d84f27d8d2e7a6b2859b3f7835550e14f0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1c4404a6401a02e61f153a7fed1aedddbd1476ff` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3f0f8a28ac15b95e7d9d3b6e9422d3d0ae64197f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bba932e9792a2b917d47830c93a9bc79320e4f7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x52300526323daf935cb535b70075491144f00b59` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x74ab8c1247ae3c5fffd9f85781f31751bdd98e73` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x866bd6a27c773c9894434fca584ff2064ffb8c37` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x8c042b7779b4d261b5d85e36632dbab9dcd170d0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd768d1fe6ef1449a54f9409400fe9d0e4954ea3f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe224147a9e228e598bd20b63593e2f54048ee5b1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x227dfd9fa88bfe186682f3a45597bac051742e5f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x28104d4f703ee5b5011cefe106f54efd56f33f95` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x654677554c9b81263b638c2d6d78d6b7322944c1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x88de50b233052e4fb783d4f6db78cc34fea3e9fc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8c5ee215d665fc2cc8e2b96a22b9d44912af58ab` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcefcc8fd00d874522edbe25a2cdc9178f4ca9159` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcfe3d300a9f9c7e3dd74007f8a46055efc493e5e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03222a2b261a12091bbe271e763a7e26b64e25e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x12b6bc28fb2885927eac6b9445db47c0632a7167` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13cfdb2eb19fbf62305c7f5e9c7fcf33e9d41b49` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14adf53c57aeb3bb4a665f37ba0b80eac428f495` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a22c1886196101babcac1bf4223294ab04c1d66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2087e7fc5c7241eb1bcadb847017460b8126229c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2108641461fc7663175733c725f83647fc124699` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22026089fad7753d93e53a89a4c5e743ccea799d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x221a4c9e54baebd678ff1823e4fca2ac3685ca64` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x227dfd9fa88bfe186682f3a45597bac051742e5f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2485057d234be2a5afd0646cfa803c97faf5768e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x261ffdee8558efcd531dacca5771f025feb71a96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28104d4f703ee5b5011cefe106f54efd56f33f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b6bb9f77268cc7853b68219cf5654a86cbbbe9e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d872d304876ee25f44d3d00e910aaab63e0ba69` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x322139c1befa9eb32776cc39316101d3d640cad4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x388084ac72eb81a0fff296892c6fd5f629d6513e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a5d6a7aab7c1b681892bdc3667c76a5e4116ba3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d08491c4b4048d387c238c231c11cbb6a83fa0c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f1aba670a0234109be0222a805f3207117c2531` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ffeb50095190f7df64aaafcf1e424b570825c22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4011109d803f8e223f031e59e139cac7c7b68ec5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x413c266e0d035efae04151cd2a9a277869506f42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43a14c5b8114f3e53af8f6da6d7dc81b180ae5e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x452064f70387d545621936019bb5e6721e1ee6c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47b8d3292c21a91f7e53a43bd0066970a41b280f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49cb722e3b80c7013e9ffb7d289576bdae549d89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cc90b23ca0c9d5b8dc0dabee9a9cf0118f6da43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x525f9194eadcf05b588061746937aa0abcd6bf20` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52bb904473e0adc699c7b103962d35a0f53d9e1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56c85a254dd12ee8d9c04049a4ab62769ce98210` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e7375318cbc4466d15582096ee7208a4d49815f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60a52d46d421d6fce99c2d475d651176d65b35d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61178775c2239117745ae76c8ab9fcde737c275d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6166bd61e8eca7ae942046fb6251a998a2d7c687` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62b3e98afa30f94f382856a71d811ac41f5211a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6409722f3a1c4486a3b1fe566cbdd5e9d946a1f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6877b1b0c6267e0ad9aa4c0df18a547aa2f6b08d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f31b5e51eb7de8cb760bbe2e372cfc929207805` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fed6e71d811a4c90fe52e22ca3c324f4e6a3513` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x716c55c2d9d9fc1e38465e9301db167ba1483ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76edf8c155a1e0d9b2ad11b04d9671cbc25fee99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7882570840a97a490a37bd8db9e1ae39165bfbd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7a21f4e395f406229780e78a9780c2f4364c30c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d0d88ba173213bcdb93273a67abd30c9bd39ed8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e15eb462cdc67cf92af1f7102465a8f8c784874` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eb6e41917e1af6622f5e61fe9b8548abef570dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x866bd6a27c773c9894434fca584ff2064ffb8c37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87eb967e7d9e1ccef96a20b0012fccb94f79e2e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e2aa26ba3cfd8fa9b5fbc7ba0f497ba4a20c11c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x911c697f5a54a98ebce0b19d687cde747e0f490a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9562cbd309c466cff835126f246be479308df72b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97c16ea96bdd3f3217ce41663538a7cba3b74805` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bc12a76fb5fbd3e9006b4d076fe82d173145704` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa556028445a61760e2fd596a55ab66cdb44383db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa8376f53391a041c8236a232f7f019ea76eed86d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac02245ca7d481b25ff8acc48d5149dde8fc134d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb094d94ecc3c23692f341376b34491674d23a380` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1572bc4cfb112d2eefc88b1259bb651a9d4ad1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb28ca7e465c452ce4252598e0bc96aeba553cf82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb44612c09b3940bc3f748cfbcd82c129be8201bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb701cf164190086652110173f7d6e2867e94a4d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb76599cd426c8811b29772cb46ff08293fd98804` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba96c15e30708b0d26117d84465adfd6424530f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf44de8fc9eeeed8615b0b3bc095cb0ddef35e09` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbfe03c9e20a9fc0b37de01a172f207004935e0b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc231fce68896fac20854de88fb01d8892d2660da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2764a33351e1ccb5323cc9301c114caa02a2010` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc46785891bc0dc3a1b88a6ba39a78ab7f5850846` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc634c04a5b3d52be932386ce657ef992cfa6adcb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc867d2676b1bbf4e56b478d1dbcd926f22a5b394` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcfe3d300a9f9c7e3dd74007f8a46055efc493e5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4f8ac288db2b8c13de21f9f09b1f25c461514e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd554c0cce779d64b7e6d18d7c5c7c95d28b5ab54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf8da0fd0a36970b86a7eef46b6218a1b91d9ae2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe41512eac00ce2193cc8137ec73527404e72b6b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea2c459749efe8fb5fca0a748e3d869a76ae5e23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xebd371872fd81a21de6a36f3bb8150b5073bb6df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef79d706b9d77f39da9f8f9bd8121d80c47fb9fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf052cee512c696e91625b07ecc9484fdb6d45629` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3cf2d79a3db7fa0f0bfd8192603333ce2ce00e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf73f77f9466da712590ae432a80f07fd50a7de60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf813420825fe4906a4d6e780ed5127f7f0e4e50c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf829872d3ff567c0e332249b438154f08fa0619e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb0027f79a4aef1095ad11dc2a6b373103993d5a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb2139331532e3ee59777fbbcb14af674f3fd671` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb66e944021bf915cfb4dac2b20653930bf7d35a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdf03f9b84babb7d8bf2fd583a85ba3858abd4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe7e70ddd31ad1f6f7570e5b787b1231d6bf1435` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe81c675c06f8dd40d0d345505dc4592ccfa89c0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2087e7fc5c7241eb1bcadb847017460b8126229c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x261ffdee8558efcd531dacca5771f025feb71a96` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3ad1e95e1bb50370774fd9d07fd7aa317d0bb11e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x56c85a254dd12ee8d9c04049a4ab62769ce98210` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x62b3e98afa30f94f382856a71d811ac41f5211a7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xea49166a27c1796cd2b226d211d70edeed0ae397` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfb66e944021bf915cfb4dac2b20653930bf7d35a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01eb9b7282842ccf8467e05767edcb7044c4c84b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03222a2b261a12091bbe271e763a7e26b64e25e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05e3d7e96d7df6bd89d1febbe6b5316aea0af74a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cb9612fb90da03c3bba8f79ee02f9f7fbacc521` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f32a1597b43a8cb2f20e8d3023a39c532ff6978` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10c1849592068ba800a414dc82df0b807e1033d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12b6bc28fb2885927eac6b9445db47c0632a7167` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14adf53c57aeb3bb4a665f37ba0b80eac428f495` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x18a9d605b98b726725adaa2f53f83b5b7d4d0025` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19ceead7105607cd444f5ad10dd51356436095a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a22c1886196101babcac1bf4223294ab04c1d66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2087e7fc5c7241eb1bcadb847017460b8126229c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22026089fad7753d93e53a89a4c5e743ccea799d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x227dfd9fa88bfe186682f3a45597bac051742e5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2485057d234be2a5afd0646cfa803c97faf5768e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b6bb9f77268cc7853b68219cf5654a86cbbbe9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33022c728791d4056bca6fc93bd3ff344b6633af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d346a44b5148b230437b085b25d4556425dbf1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x525f9194eadcf05b588061746937aa0abcd6bf20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53abf4fd73667187d738adaf6da93dc9f9550d40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x56c85a254dd12ee8d9c04049a4ab62769ce98210` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x56e59e8103f3a33b1d210447e75278ec8a5628b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61178775c2239117745ae76c8ab9fcde737c275d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62b3e98afa30f94f382856a71d811ac41f5211a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6409722f3a1c4486a3b1fe566cbdd5e9d946a1f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x699bb4a1153d1f54b70fa79762b05b15d9b94f01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fed6e71d811a4c90fe52e22ca3c324f4e6a3513` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x716c55c2d9d9fc1e38465e9301db167ba1483ab9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x765149e27660068ae2e6c837a59e22c09f261714` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a21f4e395f406229780e78a9780c2f4364c30c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e15eb462cdc67cf92af1f7102465a8f8c784874` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84ff2ddf2bc84e37ed3bd2d0192e8534d12574f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x911c697f5a54a98ebce0b19d687cde747e0f490a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b99e9c620b2e2f09e0b9fced8f679eecf2653fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa565bb71a42639e3ca89a3beaeed821bc1ab9e63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa77f627a717271d38ea1c80495427b6cdf3cc8f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8376f53391a041c8236a232f7f019ea76eed86d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb45fd0e0b47a817af23df768063e531f556265b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8fc6bf89e16e66b5fa9aa44b8393a588cf1e77c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdb9e776660c478c3b7509ac3a607ae41e831827` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdff6f2290b2c9b373e9d90f1ebf67e9653da051` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfe03c9e20a9fc0b37de01a172f207004935e0b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc231fce68896fac20854de88fb01d8892d2660da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc34dfb6b31849bdd3c0cca2a612b78937a520f90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3f3a07ae7d2a125ef81a5950c4d0dd54c740251` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc46785891bc0dc3a1b88a6ba39a78ab7f5850846` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc867d2676b1bbf4e56b478d1dbcd926f22a5b394` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3cc1eaa8e2da09b0702f351cd8f1480a4e3c2f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd52abafd35289749cb1587b53cdd35ebe718d583` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd768d1fe6ef1449a54f9409400fe9d0e4954ea3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9f4e85489adcd0baf0cd63b4231c6af58c26745` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe224147a9e228e598bd20b63593e2f54048ee5b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe41512eac00ce2193cc8137ec73527404e72b6b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf813420825fe4906a4d6e780ed5127f7f0e4e50c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf82ab7d84f27d8d2e7a6b2859b3f7835550e14f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb2139331532e3ee59777fbbcb14af674f3fd671` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c5362690e4519a78fe62592d01df5eb91b9547a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cb9612fb90da03c3bba8f79ee02f9f7fbacc521` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0df90ffee4bcc4b9b1c9847b7dc9b1c648d23340` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a22c1886196101babcac1bf4223294ab04c1d66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2087e7fc5c7241eb1bcadb847017460b8126229c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2485057d234be2a5afd0646cfa803c97faf5768e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28104d4f703ee5b5011cefe106f54efd56f33f95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b6bb9f77268cc7853b68219cf5654a86cbbbe9e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33022c728791d4056bca6fc93bd3ff344b6633af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38e9fc5905c59338e37b9ef528e05e04391aa9ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ad1e95e1bb50370774fd9d07fd7aa317d0bb11e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f0f8a28ac15b95e7d9d3b6e9422d3d0ae64197f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x413c266e0d035efae04151cd2a9a277869506f42` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x452064f70387d545621936019bb5e6721e1ee6c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4d8285b6e0ca4bc2360bd2932caec45a10868cb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52300526323daf935cb535b70075491144f00b59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56c85a254dd12ee8d9c04049a4ab62769ce98210` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f3454fa53e5866a4f69bbc2e6b9a041092d9ad7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6409722f3a1c4486a3b1fe566cbdd5e9d946a1f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65280598e66151b10def5c05e05d68748ce72bc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x654677554c9b81263b638c2d6d78d6b7322944c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f31b5e51eb7de8cb760bbe2e372cfc929207805` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x716c55c2d9d9fc1e38465e9301db167ba1483ab9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e15eb462cdc67cf92af1f7102465a8f8c784874` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f137d1d8d20ba54004ba358e9c229da26fa3fa9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x866bd6a27c773c9894434fca584ff2064ffb8c37` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c5ee215d665fc2cc8e2b96a22b9d44912af58ab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b57dca972db5d8866c630554acdbdfe58b2659c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa156b1e28873bcac30c941f3891f3d6c6fa2f473` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa77f627a717271d38ea1c80495427b6cdf3cc8f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa8376f53391a041c8236a232f7f019ea76eed86d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac02245ca7d481b25ff8acc48d5149dde8fc134d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb094d94ecc3c23692f341376b34491674d23a380` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb44612c09b3940bc3f748cfbcd82c129be8201bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb76599cd426c8811b29772cb46ff08293fd98804` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbef11cff5495ef0b98adc841579fd73c33769a98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbfe03c9e20a9fc0b37de01a172f207004935e0b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc231fce68896fac20854de88fb01d8892d2660da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3f3a07ae7d2a125ef81a5950c4d0dd54c740251` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6315d6290afccd9df0327655df085aeceae59df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcefcc8fd00d874522edbe25a2cdc9178f4ca9159` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf4234b88f74aed8004245a2b382c35ad61ead74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xea49166a27c1796cd2b226d211d70edeed0ae397` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecdfcb1dd81d07c3551cba94023ee443450353e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf052cee512c696e91625b07ecc9484fdb6d45629` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf73f77f9466da712590ae432a80f07fd50a7de60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf82ab7d84f27d8d2e7a6b2859b3f7835550e14f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe81c675c06f8dd40d0d345505dc4592ccfa89c0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0f32a1597b43a8cb2f20e8d3023a39c532ff6978` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2108641461fc7663175733c725f83647fc124699` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2b8b3f0949dfb616602109d2aabba11311ec7aec` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x33022c728791d4056bca6fc93bd3ff344b6633af` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x56c85a254dd12ee8d9c04049a4ab62769ce98210` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x61178775c2239117745ae76c8ab9fcde737c275d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x716c55c2d9d9fc1e38465e9301db167ba1483ab9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x765149e27660068ae2e6c837a59e22c09f261714` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7e15eb462cdc67cf92af1f7102465a8f8c784874` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x88de50b233052e4fb783d4f6db78cc34fea3e9fc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8e7591e2919157a6bbe9e3defe0f1ff793e65ec1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9b99e9c620b2e2f09e0b9fced8f679eecf2653fe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb094d94ecc3c23692f341376b34491674d23a380` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcfe3d300a9f9c7e3dd74007f8a46055efc493e5e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd0c22a5435f4e8e5770c1fafb5374015fc12f7cd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xea49166a27c1796cd2b226d211d70edeed0ae397` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfb66e944021bf915cfb4dac2b20653930bf7d35a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/odos](https://skynet.certik.com/projects/odos) | CertiK | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Odos - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Odos%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [Odos Cross-Chain Contracts - Zellic Audit Report-de98534d548ea64a891b1d9ecba51aee.pdf](https://docs.odos.xyz/assets/files/Odos%20Cross-Chain%20Contracts%20-%20Zellic%20Audit%20Report-de98534d548ea64a891b1d9ecba51aee.pdf) | Zellic | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Odos Router V3 - Zellic Audit Report-0e74f369988309bbd589267e44357d06.pdf](https://docs.odos.xyz/assets/files/Odos%20Router%20V3%20-%20Zellic%20Audit%20Report-0e74f369988309bbd589267e44357d06.pdf) | Zellic | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |
| [www.halborn.com/audits/odos/limit-orders](https://www.halborn.com/audits/odos/limit-orders) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Odos Cross-Chain Contracts - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Odos%20Cross-Chain%20Contracts%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Odos Router V3 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Odos%20Router%20V3%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0d4ab12e62d17f037d43f018da18ff623e1af3b2`](./contracts/bsc-56/0x0d4ab12e62d17f037d43f018da18ff623e1af3b2/) | OdosLimitOrderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xca73ed1815e5915489570014e024b7ebe65de679`](./contracts/base-8453/0xca73ed1815e5915489570014e024b7ebe65de679/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 563 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [13603] skynet.certik.com/projects/odos
- [13605] Odos Cross-Chain Contracts - Zellic Audit Report-de98534d548ea64a891b1d9ecba51aee.pdf
- [13607] www.halborn.com/audits/odos/limit-orders
- [13608] Odos Cross-Chain Contracts - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
