# Agentic Audit Brief: Ankr

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 93.1% below peak)
- Generated: 2026-07-04T14:53:01.641Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: avalanche, bsc, ethereum, fantom, gnosis, polygon
- Contract surface: 165 unique implementations (302 raw deployments)
- DeFi Llama TVL: $18,101,801.55
- On-chain TVL (included contracts): $33,425,847.16
- TVL by chain: Ethereum $33,425,691.43 | Polygon $122.19 | Avalanche $32.98 | Bsc $0.56

## Project Description

Liquid Staking. Structurally: 252 project-authored contract(s) across 5 chain(s); 1 ERC4626 vault, 82 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 17 common project-authored base contract(s) (multicall, lockable, erc20upgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 420; live-surface contracts included: 216 (156 live, 60 unknown).
- Excluded by liveness: 204 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/104 (0.0%)
- Deployed-live implementations: 110 of 165 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/109
- Verified + Unaudited implementations: 109
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 165
- Raw deployments: 302
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $33,425,725.04
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (109)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ANKRToken | token | ethereum | n/a | [`0x8290333cef9e6d528dd5618fb97a76f268f3edd4`](./contracts/ethereum-1/0x8290333cef9e6d528dd5618fb97a76f268f3edd4/) | ⚠️ Unaudited |
| AvalanchePool_R6 | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x7baa1e3bfe49db8361680785182b80bb420a836d`](./contracts/avalanche-43114/0x7baa1e3bfe49db8361680785182b80bb420a836d/); avalanche `0xfad2d6dc790b6a12f7117b2965755cfabbb45874` | ⚠️ Unaudited |
| SwapPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x39126e9b4b0c18ec2e60e3590d0f1f44fc5e1cb6`](./contracts/bsc-56/0x39126e9b4b0c18ec2e60e3590d0f1f44fc5e1cb6/); bsc `0x49b85a26800ab6c5432e2dc0dda82acb53d98642` | ⚠️ Unaudited |
| BNBStakingPool_R4 | core_logic | bsc | n/a | 2 deployments: bsc [`0x9e347af362059bf2e55839002c699f7a5bafe86e`](./contracts/bsc-56/0x9e347af362059bf2e55839002c699f7a5bafe86e/); bsc `0xbbbc99198f62e56c20b44d2e6e63a7ebce88a9ac` | ⚠️ Unaudited |
| SwapPool | core_logic | polygon | n/a | 2 deployments: polygon [`0x62a509ba95c75cabc7190469025e5abee4eddb2a`](./contracts/polygon-137/0x62a509ba95c75cabc7190469025e5abee4eddb2a/); polygon `0xbd00f00ed3c6805cd709998f3064fbc95460dbff` | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x84db6ee82b7cf3b47e8f19270abde5718b936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/); ethereum `0xecce8778214fd9fe37c141a00cff19853ef5bc4a` | ⚠️ Unaudited |
| aBNBb | unknown | bsc | n/a | 3 deployments: bsc [`0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc`](./contracts/bsc-56/0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc/); bsc `0xd315b7664b99e559c3e209628453de182e77e411`; bsc `0xe380b02b16e050c2801cca83461916feca652ecf` | ⚠️ Unaudited |
| aBNBb | unknown | bsc | n/a | 2 deployments: bsc [`0x2b6f9be1c144564162353e91317845f956380496`](./contracts/bsc-56/0x2b6f9be1c144564162353e91317845f956380496/); bsc `0xbacd623ffc319560e3fe901799f3bec99f456b07` | ⚠️ Unaudited |
| aBNBb_R1 | unknown | bsc | n/a | 2 deployments: bsc [`0x952398318838b4915ee5e800622a9613887759f5`](./contracts/bsc-56/0x952398318838b4915ee5e800622a9613887759f5/); bsc `0xfe39985d7eff914c50a06ba0cffcca8361e00c0e` | ⚠️ Unaudited |
| aBNBc | unknown | bsc | n/a | 3 deployments: bsc [`0x2c93bd60c7cec4c2ca84f937a2c15e035d250c9e`](./contracts/bsc-56/0x2c93bd60c7cec4c2ca84f937a2c15e035d250c9e/); bsc `0x88bc9a56db42eae31f3c18d59dd3f28cf023fe81`; bsc `0xa2d1aa68a184d6243d8da9ae885742c635c5cc8b` | ⚠️ Unaudited |
| aBNBc | unknown | bsc | n/a | 2 deployments: bsc [`0x50be7ae35c5bf838d060045f33f93449f9aff49c`](./contracts/bsc-56/0x50be7ae35c5bf838d060045f33f93449f9aff49c/); bsc `0x9645920f8e2bbb1f3a2a25bf8e1acb9592db5874` | ⚠️ Unaudited |
| aBNBc_R1 | unknown | bsc | n/a | 2 deployments: bsc [`0x2c00ce1a935ff8c9e78580533e2e17c36281c26e`](./contracts/bsc-56/0x2c00ce1a935ff8c9e78580533e2e17c36281c26e/); bsc `0x52f24a5e03aee338da5fd9df68d2b6fae1178827` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64`](./contracts/ethereum-1/0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64/); ethereum `0xe95a203b1a91a908f9b9ce46459d101078c2c3cb` | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f87f00c24f41a06d8ce81849584079c5df06d02`](./contracts/ethereum-1/0x1f87f00c24f41a06d8ce81849584079c5df06d02/); ethereum `0x32c1cdaac671126b44a0dad316614a2a48c3ffeb` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | ethereum | n/a | 5 deployments: ethereum [`0x029bfc71a0dadfa0f9de26e28312f18ba0ea4f1a`](./contracts/ethereum-1/0x029bfc71a0dadfa0f9de26e28312f18ba0ea4f1a/); ethereum `0x702ffbb6a227cdde0b908582b2ad1e3947de49e3`; ethereum `0xa274cfbd1a920a4a19c61de473ac21544a8cf06d`; ethereum `0xd315b7664b99e559c3e209628453de182e77e411`; ethereum `0xfe8189a3016cb6a3668b8ccdac520ce572d4287a` | ⚠️ Unaudited |
| BinancePool_R10 | core_logic | bsc | n/a | 3 deployments: bsc [`0x21bbff0e92f16b71baa1f93502fccdd2b7806f48`](./contracts/bsc-56/0x21bbff0e92f16b71baa1f93502fccdd2b7806f48/); bsc `0x64081eb9e28f0adb1cb544e524ab5d71422294af`; bsc `0x809ef445aef10e47ab2470b7591c5874f4dbe97a` | ⚠️ Unaudited |
| BinancePool_R10 | core_logic | bsc | n/a | 2 deployments: bsc [`0xa274cfbd1a920a4a19c61de473ac21544a8cf06d`](./contracts/bsc-56/0xa274cfbd1a920a4a19c61de473ac21544a8cf06d/); bsc `0xfe8189a3016cb6a3668b8ccdac520ce572d4287a` | ⚠️ Unaudited |
| BinancePool_R14 | core_logic | bsc | n/a | 2 deployments: bsc [`0xa0c92efdcea55ca19396e4850b8d29df6f907bcd`](./contracts/bsc-56/0xa0c92efdcea55ca19396e4850b8d29df6f907bcd/); bsc `0xe778cc0413214c746f0e6e2d2782569d5bcdfffd` | ⚠️ Unaudited |
| BNBStakingPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4`](./contracts/bsc-56/0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4/); bsc `0xe5632c1a41d9eebee4ab6183e601b5b5e29659be` | ⚠️ Unaudited |
| BNBStakingPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x2aa271353d8ead0bb10240b5a9ff69d0e835fa0e`](./contracts/bsc-56/0x2aa271353d8ead0bb10240b5a9ff69d0e835fa0e/); bsc `0xd6c4146d1106f5febbaa87bbd9e0a86a74d64664` | ⚠️ Unaudited |
| CerosRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x141105fc3b5bf9ec20e0628507ba580646be3c76`](./contracts/polygon-137/0x141105fc3b5bf9ec20e0628507ba580646be3c76/); polygon `0xe254f8cc2eec268c9153da733ae6a0eba831cbdc` | ⚠️ Unaudited |
| CerosRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x7c0e0162de86b01705f5e62a90604a3817e3fb6c`](./contracts/polygon-137/0x7c0e0162de86b01705f5e62a90604a3817e3fb6c/); polygon `0xbb4e7e69aa9e918b6ae51710cb6152e685553b1c` | ⚠️ Unaudited |
| CerosRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x8d575d202b7653fb2e076be451b006626cc31858`](./contracts/polygon-137/0x8d575d202b7653fb2e076be451b006626cc31858/); polygon `0xb5a3f3a8c3990ad817ea02ee7ebad72ab962b39e` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | polygon | n/a | 2 deployments: polygon [`0x27f97003a947f82039ccf78873b59d4a001d1fd1`](./contracts/polygon-137/0x27f97003a947f82039ccf78873b59d4a001d1fd1/); polygon `0x41ca2bbcaca9c33aba3e96791f89bc42356f10c8` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | polygon | n/a | 2 deployments: polygon [`0x29ded4c99690968562f2d067968aa72b7d46a65d`](./contracts/polygon-137/0x29ded4c99690968562f2d067968aa72b7d46a65d/); polygon `0x8855d3fbcda1dfccf44ac6079d093bcf3a833f2d` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | polygon | n/a | 2 deployments: polygon [`0x3d78f47fc07185db380ea873fe970dd096b8c922`](./contracts/polygon-137/0x3d78f47fc07185db380ea873fe970dd096b8c922/); polygon `0x55c9dd38733fd168d27f1ca68118515b2c6a29ae` | ⚠️ Unaudited |
| CeToken | unknown | polygon | n/a | 2 deployments: polygon [`0x8ec1877698acf262fe8ad8a295ad94d6ea258988`](./contracts/polygon-137/0x8ec1877698acf262fe8ad8a295ad94d6ea258988/); polygon `0xf2393eeadd67bf68a60f39992113775966f34e1e` | ⚠️ Unaudited |
| CeToken | unknown | polygon | n/a | 4 deployments: polygon [`0xa6ae8f29e0031340ea5dbe11c2da4466cde34464`](./contracts/polygon-137/0xa6ae8f29e0031340ea5dbe11c2da4466cde34464/); polygon `0xb1b374667d600a43dc11587c94d1d40b46982ff8`; polygon `0xb44a251d1c31dd32700e5f2584b4282716c43eb3`; polygon `0xd8a0451811be47cec35afcd5037da4c21e57117a` | ⚠️ Unaudited |
| CeVault | unknown | polygon | n/a | 2 deployments: polygon [`0x2bde5adb0da369e28c29b8ea7aca997197167d62`](./contracts/polygon-137/0x2bde5adb0da369e28c29b8ea7aca997197167d62/); polygon `0x5e851dc1f56a05bb6d3c053fa756304a5171c345` | ⚠️ Unaudited |
| CeVault | unknown | polygon | n/a | 2 deployments: polygon [`0x50a180635b233a08c0fe98239d05b40f96efb6aa`](./contracts/polygon-137/0x50a180635b233a08c0fe98239d05b40f96efb6aa/); polygon `0x943806defe09c5cb0662e0774390081c86a2d613` | ⚠️ Unaudited |
| CeVault | unknown | polygon | n/a | 2 deployments: polygon [`0x92e77ba6cecb46733ae482ba1d7e011aa872ad7e`](./contracts/polygon-137/0x92e77ba6cecb46733ae482ba1d7e011aa872ad7e/); polygon `0xa82644f96391c1f23ff6110a3b14041abf572342` | ⚠️ Unaudited |
| Clipper | unknown | polygon | n/a | 3 deployments: polygon [`0x3b87b26c44971fc0e7e4cead219a1fe4e2f604c4`](./contracts/polygon-137/0x3b87b26c44971fc0e7e4cead219a1fe4e2f604c4/); polygon `0xbd38b722480e2e3d540cafc44a113d92e1015faa`; polygon `0xe148c9fc6cb7e968bff86ec9a6a881662d8ed9bb` | ⚠️ Unaudited |
| Clipper | unknown | polygon | n/a | 2 deployments: polygon [`0xb563ef00c5f7d8589974fd8d9606dc8376287831`](./contracts/polygon-137/0xb563ef00c5f7d8589974fd8d9606dc8376287831/); polygon `0xc4c0162e573504a83c960dd8ea5451e886989c4b` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x85ea08796eb66820379039cab034722e69e4e16c`](./contracts/ethereum-1/0x85ea08796eb66820379039cab034722e69e4e16c/); ethereum `0xc437df90b37c1db6657339e31bfe54627f0e7181` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x31be0fa706e391a88c3a09cc13112bd55e0887f5`](./contracts/polygon-137/0x31be0fa706e391a88c3a09cc13112bd55e0887f5/); polygon `0xa0ea35d8b05f31a46937526f88a45c16db77b9be` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x31be0fa706e391a88c3a09cc13112bd55e0887f5`](./contracts/avalanche-43114/0x31be0fa706e391a88c3a09cc13112bd55e0887f5/); avalanche `0xb902b8024cab7a17500d9dbab77a4c060d5c10f2` | ⚠️ Unaudited |
| Davos | unknown | polygon | n/a | 2 deployments: polygon [`0x0fb82db5676330644acd26a21fd00c749715066d`](./contracts/polygon-137/0x0fb82db5676330644acd26a21fd00c749715066d/); polygon `0xec38621e72d86775a89c7422746de1f52bba5320` | ⚠️ Unaudited |
| DavosBridge | unknown | polygon | n/a | 2 deployments: polygon [`0x78be0423567a85ba677d3aa5b73b45970e52256b`](./contracts/polygon-137/0x78be0423567a85ba677d3aa5b73b45970e52256b/); polygon `0xa7508b5de45ce0a511b3be85e80a2bb8f7274dd3` | ⚠️ Unaudited |
| DavosJoin | unknown | polygon | n/a | [`0x8fcd9542a6ee0f05f470230da5b8cb41033da6df`](./contracts/polygon-137/0x8fcd9542a6ee0f05f470230da5b8cb41033da6df/) | ⚠️ Unaudited |
| DavosProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x046b71694b3b659f491247167eda42e0556123cf`](./contracts/polygon-137/0x046b71694b3b659f491247167eda42e0556123cf/); polygon `0x9240949497265c02fbe8b0055af5d72f4b3e068a` | ⚠️ Unaudited |
| DavosProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x9b81ebcda2d8a3d592cf0e620b0223d92e3f2374`](./contracts/polygon-137/0x9b81ebcda2d8a3d592cf0e620b0223d92e3f2374/); polygon `0xe2023c00f78a384dd96333590aea1e3a0a91fd6a` | ⚠️ Unaudited |
| dCOL | unknown | polygon | n/a | 2 deployments: polygon [`0x4f1b83ef5009bb4727e4b5efcfaaf5cbf3bce9ac`](./contracts/polygon-137/0x4f1b83ef5009bb4727e4b5efcfaaf5cbf3bce9ac/); polygon `0xd67189ebc295c0f8a99d768ca5b2b905944de9a7` | ⚠️ Unaudited |
| DGTRewards | unknown | polygon | n/a | 2 deployments: polygon [`0x54809f204999a886839ac46b2fd796282e727158`](./contracts/polygon-137/0x54809f204999a886839ac46b2fd796282e727158/); polygon `0x624d6a1969cef4ff7b880685e76019509f3c0b49` | ⚠️ Unaudited |
| dMATIC | unknown | polygon | n/a | 3 deployments: polygon [`0x08abfd7ded42cc33900d3457118eab7fc40b71c8`](./contracts/polygon-137/0x08abfd7ded42cc33900d3457118eab7fc40b71c8/); polygon `0x0ace0e9b9d23bab3bc5c77e97cff2029935b7f7e`; polygon `0x87ad5ab05d7c1e1f904e029783810a2a95702563` | ⚠️ Unaudited |
| Dog | unknown | polygon | n/a | 2 deployments: polygon [`0x122897d16b2dd5a193efce19a1b4f34d1c540118`](./contracts/polygon-137/0x122897d16b2dd5a193efce19a1b4f34d1c540118/); polygon `0x94b4fe36578065685be241d9eabe5c9e6b2920b2` | ⚠️ Unaudited |
| Dog | unknown | polygon | n/a | 2 deployments: polygon [`0x9b26a5e0234aa7eada50020ba0375d3dd7a9accd`](./contracts/polygon-137/0x9b26a5e0234aa7eada50020ba0375d3dd7a9accd/); polygon `0xbfd158a63d2f58f7f723939bd492daf111d6efb4` | ⚠️ Unaudited |
| EarnConfig | governance | bsc | n/a | 5 deployments: bsc [`0x171643555a2173fab81bad1837f043f66d743252`](./contracts/bsc-56/0x171643555a2173fab81bad1837f043f66d743252/); bsc `0x4874247dd5eff278aa8b966f8f4f42314515960b`; bsc `0x674d1f5a951778b7ae7badc876b26ac558ed546f`; bsc `0xc416dafff4863d104ee30af57ebbda902c9061d1`; bsc `0xd812ab5eb22425749a972450f5e5cb8bd82cb4e4` | ⚠️ Unaudited |
| EarnConfig | governance | bsc | n/a | 5 deployments: bsc [`0x219a4e8f8c73d977f8d69596d434b5961068b26b`](./contracts/bsc-56/0x219a4e8f8c73d977f8d69596d434b5961068b26b/); bsc `0x2583619adde454dd1e3afdf4221d25303420dd56`; bsc `0x39af7ee9ad8eb0128795600aeecb72bcd21f4305`; bsc `0x67428de0680494e448f1a19d33c2022a51719348`; bsc `0xe8396c4abf9e0addf14a051f8cd9dd8a09c20036` | ⚠️ Unaudited |
| FeeRecipient_R1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x219a4e8f8c73d977f8d69596d434b5961068b26b`](./contracts/ethereum-1/0x219a4e8f8c73d977f8d69596d434b5961068b26b/); ethereum `0x90b0c836a19a74195d45fad2d2d3895a7a3eab08` | ⚠️ Unaudited |
| FutureBondAVAX_R8 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3`](./contracts/avalanche-43114/0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3/); avalanche `0x6c6f910a79639dcc94b4feef59ff507c2e843929` | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | avalanche | n/a | [`0xc3344870d52688874b06d844e0c36cc39fc727f6`](./contracts/avalanche-43114/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |
| GemJoin | unknown | polygon | n/a | 2 deployments: polygon [`0x477c1a369ea157b42f6584a8a5960f9d34d7173e`](./contracts/polygon-137/0x477c1a369ea157b42f6584a8a5960f9d34d7173e/); polygon `0x6a6450a6a25f67ad159d4a2c0ea701fc423ec55e` | ⚠️ Unaudited |
| GemJoin | unknown | polygon | n/a | 2 deployments: polygon [`0xa534e0f7b1c6a4be0490a224bacc83220e3abde0`](./contracts/polygon-137/0xa534e0f7b1c6a4be0490a224bacc83220e3abde0/); polygon `0xf0bb4edf7c777eba1a728403c92df61f9aabf9c9` | ⚠️ Unaudited |
| GemJoin | unknown | polygon | n/a | 2 deployments: polygon [`0xaf22a9c4713efc52f273c268674bcff6ab14c978`](./contracts/polygon-137/0xaf22a9c4713efc52f273c268674bcff6ab14c978/); polygon `0xf3e97ae7431cfc7ec266b3bd793615a16c5e6e0e` | ⚠️ Unaudited |
| IkkaRewards | unknown | polygon | n/a | 2 deployments: polygon [`0x1a80b0512580791dda042fef0083e6ce7cbd5d88`](./contracts/polygon-137/0x1a80b0512580791dda042fef0083e6ce7cbd5d88/); polygon `0x41bbd9f4359752c2647decb0bb3c7a08a0c3083d` | ⚠️ Unaudited |
| InsurancePool_R2 | unknown | gnosis | n/a | [`0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2`](./contracts/gnosis-100/0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2/) | ⚠️ Unaudited |
| Interaction | unknown | polygon | n/a | 2 deployments: polygon [`0x17a902fdc6860734751e315f0799673673096c9b`](./contracts/polygon-137/0x17a902fdc6860734751e315f0799673673096c9b/); polygon `0xdd0bdf5749e300f946cdb1ddfe1ffa828ec0db72` | ⚠️ Unaudited |
| Interaction | unknown | polygon | n/a | 2 deployments: polygon [`0x3f5f1b733ad75797962434992ee2f5a6b490dbef`](./contracts/polygon-137/0x3f5f1b733ad75797962434992ee2f5a6b490dbef/); polygon `0xc734528d0525923f29979393f3988168ad26d402` | ⚠️ Unaudited |
| InternetBondRatioFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe0810e4507cebac8fec3f519205e69c07440cfa3`](./contracts/ethereum-1/0xe0810e4507cebac8fec3f519205e69c07440cfa3/); ethereum `0xef3c162450e1d08804493aa27be60cdaa054050f` | ⚠️ Unaudited |
| InternetBondRatioFeed_R2 | unknown | polygon | n/a | 2 deployments: polygon [`0x4f3872c6cfab8b39232351b8aab1cbcb958bbd07`](./contracts/polygon-137/0x4f3872c6cfab8b39232351b8aab1cbcb958bbd07/); polygon `0xef3c162450e1d08804493aa27be60cdaa054050f` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ff4fb91c9fff1f57310de52d52d033c00523f81`](./contracts/ethereum-1/0x8ff4fb91c9fff1f57310de52d52d033c00523f81/); ethereum `0xcb0006b31e6b403feeec257a8abee0817bed7eba` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd00b967296b6d8ec266e4ba64594f892d03a4d0a`](./contracts/avalanche-43114/0xd00b967296b6d8ec266e4ba64594f892d03a4d0a/); avalanche `0xef3c162450e1d08804493aa27be60cdaa054050f` | ⚠️ Unaudited |
| Jar | unknown | polygon | n/a | [`0x4a20fe93dec6e5b2d66c246eb7e8ab228254c03f`](./contracts/polygon-137/0x4a20fe93dec6e5b2d66c246eb7e8ab228254c03f/) | ⚠️ Unaudited |
| Jar | unknown | polygon | n/a | 2 deployments: polygon [`0x97f0bdadbfaa05a1944ffba862b3336a175056cf`](./contracts/polygon-137/0x97f0bdadbfaa05a1944ffba862b3336a175056cf/); polygon `0xe69a1876bdacfa7a7a4f6d531be2fde843d2165c` | ⚠️ Unaudited |
| Jug | unknown | polygon | n/a | 3 deployments: polygon [`0x85d05c7bc4aec86cd77d44dc97751d8ee5e2aba4`](./contracts/polygon-137/0x85d05c7bc4aec86cd77d44dc97751d8ee5e2aba4/); polygon `0xc5a7344461eec05e174aa8ac4e4030b24aa02ebd`; polygon `0xfa9d186af6b34aec173966cc4a73e9e87abd0f8a` | ⚠️ Unaudited |
| Jug | unknown | polygon | n/a | [`0xc37f6af12c443ba8c749cbfa38944abffc156f22`](./contracts/polygon-137/0xc37f6af12c443ba8c749cbfa38944abffc156f22/) | ⚠️ Unaudited |
| LinearDecrease | unknown | polygon | n/a | 3 deployments: polygon [`0x78d1528a8010639870874285a28eea4e30bc10e9`](./contracts/polygon-137/0x78d1528a8010639870874285a28eea4e30bc10e9/); polygon `0xd12b8bdea270617999ffc3a0dbe4ea49e4685bd5`; polygon `0xe309c0fe37d3696cf8c13a629dc43eaefc077418` | ⚠️ Unaudited |
| LinearDecrease | unknown | polygon | n/a | [`0xa48f322f8b3edff967629af79e027628b9dd1298`](./contracts/polygon-137/0xa48f322f8b3edff967629af79e027628b9dd1298/) | ⚠️ Unaudited |
| LP | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d04c6c5cce7e68f2dd13ec11742c35792d67f43`](./contracts/ethereum-1/0x5d04c6c5cce7e68f2dd13ec11742c35792d67f43/); ethereum `0xc465a8ce038ce4f2481f5abdeb0db73462bde5c6` | ⚠️ Unaudited |
| LP | unknown | bsc | n/a | 2 deployments: bsc [`0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807`](./contracts/bsc-56/0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807/); bsc `0xf047f23acfdb1315cf63ad8ab5146d5fda4267af` | ⚠️ Unaudited |
| LP | unknown | polygon | n/a | 4 deployments: polygon [`0x77bf5996b93c8d747c541e47105c5f7d05b2d556`](./contracts/polygon-137/0x77bf5996b93c8d747c541e47105c5f7d05b2d556/); polygon `0x817166910ae0032462d0345dea80ca1ed3bbd6ad`; polygon `0x86e956154df2cd9495b6d92d9b0c2b00f8e390b1`; polygon `0xc3858135ea4f060029e1a22d468793464936d2c0` | ⚠️ Unaudited |
| LP | unknown | polygon | n/a | 2 deployments: polygon [`0xa88b54e6b76fb97cdb8ecae868f1458e18a953f4`](./contracts/polygon-137/0xa88b54e6b76fb97cdb8ecae868f1458e18a953f4/); polygon `0xd52ad5fd7cceb314676fa53f27339f5d3ed43026` | ⚠️ Unaudited |
| MasterVault | unknown | polygon | n/a | 2 deployments: polygon [`0x0730ba2252670cd71580dadf471f3e137592e800`](./contracts/polygon-137/0x0730ba2252670cd71580dadf471f3e137592e800/); polygon `0xec1d6ad712ce29f9d395a1cef160c34170c2668c` | ⚠️ Unaudited |
| MasterVault | unknown | polygon | n/a | 2 deployments: polygon [`0x20642aca160e38eeb8dcf34b2cf15f0581e56525`](./contracts/polygon-137/0x20642aca160e38eeb8dcf34b2cf15f0581e56525/); polygon `0x764ae6682deb212a66f754dee176901663c46554` | ⚠️ Unaudited |
| MasterVault | unknown | polygon | n/a | 2 deployments: polygon [`0x77f4c841cb87fdfa43ab909cf56f7710af648a8e`](./contracts/polygon-137/0x77f4c841cb87fdfa43ab909cf56f7710af648a8e/); polygon `0xfa3fa862d91b9b264d062024cf81cc6c531aea3f` | ⚠️ Unaudited |
| MasterVault_V2 | unknown | polygon | n/a | 2 deployments: polygon [`0x9a1275304960dbc6a8d4a5795832823a7d53f30a`](./contracts/polygon-137/0x9a1275304960dbc6a8d4a5795832823a7d53f30a/); polygon `0xd9dbd69974733481eecd0125898c8bb63c51f783` | ⚠️ Unaudited |
| MaticOracle | unknown | polygon | n/a | 7 deployments: polygon [`0x4f174701c68c4b92d531e37258b8c705585e9363`](./contracts/polygon-137/0x4f174701c68c4b92d531e37258b8c705585e9363/); polygon `0x67423e8a06f1a35556e56b8214cda9a248c0fe09`; polygon `0x72112deeb7f68b5a2629adfb7b5830d8c06dc8a1`; polygon `0x8464bcab4bb9b086bff0150753d9451cf6388576`; polygon `0xb87d1cf2771e5f8aaabafc92f70b78c779b987f8`; polygon `0xc5da8f2dbf5982fc95c980f51606f72b4dcd826a`; polygon `0xf7f638b25b14922c888478ada13e4b1f03502c3e` | ⚠️ Unaudited |
| MaticOracle | unknown | polygon | n/a | [`0xec348813a94c2873e4d2372ae40955392a12acff`](./contracts/polygon-137/0xec348813a94c2873e4d2372ae40955392a12acff/) | ⚠️ Unaudited |
| MrpcDeposit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e1e6dcf05fb49568aa66f40b9e3834c86008c8f`](./contracts/ethereum-1/0x5e1e6dcf05fb49568aa66f40b9e3834c86008c8f/); ethereum `0x764737fb03f2443798eb317677d253ff226b97a9` | ⚠️ Unaudited |
| MrpcDeposit | unknown | polygon | n/a | 2 deployments: polygon [`0x8ff4fb91c9fff1f57310de52d52d033c00523f81`](./contracts/polygon-137/0x8ff4fb91c9fff1f57310de52d52d033c00523f81/); polygon `0xf8be84b27c594318590593e60e3f7ea7f8e25ae3` | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | ethereum | n/a | [`0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e`](./contracts/ethereum-1/0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e/) | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x82af704a46d358b979f64b2e43823097312adf3d`](./contracts/ethereum-1/0x82af704a46d358b979f64b2e43823097312adf3d/); ethereum `0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89` | ⚠️ Unaudited |
| ProviderRegistry | unknown | gnosis | n/a | 2 deployments: gnosis [`0x6c6f910a79639dcc94b4feef59ff507c2e843929`](./contracts/gnosis-100/0x6c6f910a79639dcc94b4feef59ff507c2e843929/); gnosis `0x8a2f83347f0e59faefe2320b7422f8aa432ce27a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 17 deployments: ethereum `0x39af7ee9ad8eb0128795600aeecb72bcd21f4305`; ethereum `0x595987a11656e6d7bc8779e8261e228e0ced9c5d`; ethereum `0x6a4ae724394147117832879f5f5c88608f448ad9`; bsc `0x32015e1bd4baac9b959b100b0ca253bd131de38f`; bsc `0x32c1cdaac671126b44a0dad316614a2a48c3ffeb`; bsc `0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2`; gnosis `0xcc4e08a5bfa887621ad68826a0d5913d7a2cb392`; polygon [`0x2304ce6b42d505141a286b7382d4d515950b1890`](./contracts/polygon-137/0x2304ce6b42d505141a286b7382d4d515950b1890/); polygon `0x24189c941406400c21f32b18894223ce6d755599`; polygon `0x619b44cfe07a9038034aecc11b995ac28d31b8fa`; polygon `0x6a4ae724394147117832879f5f5c88608f448ad9`; polygon `0x859cb9c272ae31faec8bb319568c1f84d2a50954`; polygon `0xc832261228412a381ef7664b7ad1a1f8445d83cd`; avalanche `0x3bfce37b5401bef13c78830d3a9fb14294d18c4f`; avalanche `0x6a4ae724394147117832879f5f5c88608f448ad9`; avalanche `0xb13ceca4f3809b49658cd1472c917a584626138b`; avalanche `0xcc4e08a5bfa887621ad68826a0d5913d7a2cb392` | ⚠️ Unaudited |
| RatioAdapter | unknown | polygon | n/a | 2 deployments: polygon [`0x2b6fe7d2b9ac97bf5411d1c71c9521f51ac3c863`](./contracts/polygon-137/0x2b6fe7d2b9ac97bf5411d1c71c9521f51ac3c863/); polygon `0xb2458394c47daa99048ae12883e87b5eaed88e0a` | ⚠️ Unaudited |
| Sikka | unknown | polygon | n/a | 2 deployments: polygon [`0x00658fc8ec685727f3f59d381b8ad8f5e0fedbc2`](./contracts/polygon-137/0x00658fc8ec685727f3f59d381b8ad8f5e0fedbc2/); polygon `0x491579bed0862fd1f691a8eab2f614ec48bacd0d` | ⚠️ Unaudited |
| SikkaJoin | unknown | polygon | n/a | 2 deployments: polygon [`0x84cd2e9e46fb44e9f775a5fd08edcdaf2377c3c1`](./contracts/polygon-137/0x84cd2e9e46fb44e9f775a5fd08edcdaf2377c3c1/); polygon `0xb2565e05816963cfd957d8baeab95033470352bb` | ⚠️ Unaudited |
| SikkaProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x2f2e746b2e9ef33c2ac6348985f100af8dbc944d`](./contracts/polygon-137/0x2f2e746b2e9ef33c2ac6348985f100af8dbc944d/); polygon `0x9edc0ea75e6023b93bbb41c16818e314cfe59d2b` | ⚠️ Unaudited |
| sMATIC | unknown | polygon | n/a | 2 deployments: polygon [`0x30faab28c1af8f90574db759243888c8bd279536`](./contracts/polygon-137/0x30faab28c1af8f90574db759243888c8bd279536/); polygon `0xb396b31599333739a97951b74652c117be86ee1d` | ⚠️ Unaudited |
| Spotter | unknown | polygon | n/a | 2 deployments: polygon [`0xbbf35c9dcb16ea3cb64a0fce51c51f9ca34079fe`](./contracts/polygon-137/0xbbf35c9dcb16ea3cb64a0fce51c51f9ca34079fe/); polygon `0xd659ae8b53f5733532ce6a2e881420d0c0740509` | ⚠️ Unaudited |
| Spotter | unknown | polygon | n/a | [`0xf97680e99be42daccea9fe6f9f9aa385ccf97a62`](./contracts/polygon-137/0xf97680e99be42daccea9fe6f9f9aa385ccf97a62/) | ⚠️ Unaudited |
| StakingConfig | unknown | gnosis | n/a | [`0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618`](./contracts/gnosis-100/0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618/) | ⚠️ Unaudited |
| StakingConfig_R2 | unknown | gnosis | n/a | [`0x3bfce37b5401bef13c78830d3a9fb14294d18c4f`](./contracts/gnosis-100/0x3bfce37b5401bef13c78830d3a9fb14294d18c4f/) | ⚠️ Unaudited |
| StakingPool_R3 | core_logic | gnosis | n/a | [`0xfd0f61255913825da1c194b985f04982966c34d6`](./contracts/gnosis-100/0xfd0f61255913825da1c194b985f04982966c34d6/) | ⚠️ Unaudited |
| StMaticOracle | unknown | polygon | n/a | 2 deployments: polygon [`0x092fd701c7c082b2e4dd91f4e139bb3749b19734`](./contracts/polygon-137/0x092fd701c7c082b2e4dd91f4e139bb3749b19734/); polygon `0x4be55a1b9f2aaf98b7b67ce26ad0958142700fee` | ⚠️ Unaudited |
| SwapPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2`](./contracts/ethereum-1/0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2/); ethereum `0xf047f23acfdb1315cf63ad8ab5146d5fda4267af` | ⚠️ Unaudited |
| SwapPool | unknown | polygon | n/a | 4 deployments: polygon [`0x2fa1879c6c5d058dd363cf99020689836bd7af78`](./contracts/polygon-137/0x2fa1879c6c5d058dd363cf99020689836bd7af78/); polygon `0x93ca89036dbe611efbef1d3600a00e856aa6339d`; polygon `0x9ddc997eae3eebd48154e58761879d6fbaa4357f`; polygon `0xe345c626846772d2e037007dbbca8d4c8d97a6e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x02934a1eaf91504429422ed9fcea78cfa4a8ff2e`](./contracts/polygon-137/0x02934a1eaf91504429422ed9fcea78cfa4a8ff2e/); polygon `0x5763b321c9d47b106603d81e6465c76322e6c6bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x24027bf7268b7617837213d0badba4553d740393`](./contracts/polygon-137/0x24027bf7268b7617837213d0badba4553d740393/); polygon `0x442dc9e8a0370adc4a1d250da0d04803edfe9c56` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6a3b5bad3f3937ef15ee3ec385397f4a9a8abe2d`](./contracts/avalanche-43114/0x6a3b5bad3f3937ef15ee3ec385397f4a9a8abe2d/); avalanche `0x7e28bff4c435c48ec20e2a8d975abb3af0ad6ecd` | ⚠️ Unaudited |
| ValidatorManager_R3 | governance | gnosis | n/a | [`0xe95a203b1a91a908f9b9ce46459d101078c2c3cb`](./contracts/gnosis-100/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| Vat | unknown | polygon | n/a | [`0xa983f4b5137b89f82b2eb5dac415e6490f06f639`](./contracts/polygon-137/0xa983f4b5137b89f82b2eb5dac415e6490f06f639/) | ⚠️ Unaudited |
| Vat | unknown | polygon | n/a | 2 deployments: polygon [`0xbdf1dcec3cd02a5230672fa4bd779bdb2e4a67a3`](./contracts/polygon-137/0xbdf1dcec3cd02a5230672fa4bd779bdb2e4a67a3/); polygon `0xfc9755d51bc4577f63886cd43debdd3c70e5b38b` | ⚠️ Unaudited |
| Vow | unknown | polygon | n/a | 3 deployments: polygon [`0x58cf68493bc178a17b43b270ddbb8d4c1a271429`](./contracts/polygon-137/0x58cf68493bc178a17b43b270ddbb8d4c1a271429/); polygon `0xb29c988b10d8c8731197997c958f7ecd703f2ed2`; polygon `0xf2209993fed25c82d83b61579caa55e8af9116ee` | ⚠️ Unaudited |
| Vow | unknown | polygon | n/a | 2 deployments: polygon [`0x6cfca08a8535a1029f906b1d7aceb421372c240f`](./contracts/polygon-137/0x6cfca08a8535a1029f906b1d7aceb421372c240f/); polygon `0xe437e43d7e5f2bae4a565a02b054dc15aeb7091d` | ⚠️ Unaudited |
| WaitingPool | unknown | polygon | n/a | 2 deployments: polygon [`0x02237aaf5b62dbcdeac287e76f9ac1d5deec7738`](./contracts/polygon-137/0x02237aaf5b62dbcdeac287e76f9ac1d5deec7738/); polygon `0xd25b3dbb79888f548ccfb3ffcf530fb0cb69bc4f` | ⚠️ Unaudited |
| WaitingPool | unknown | polygon | n/a | 2 deployments: polygon [`0x02c7420407a6439d49e9816399a5d5b03187363b`](./contracts/polygon-137/0x02c7420407a6439d49e9816399a5d5b03187363b/); polygon `0xfedf355430be38c298c0515e804a0a5932b7672c` | ⚠️ Unaudited |
| WaitingPool | unknown | polygon | n/a | [`0x1c539e755a1bdabb168aa9ad60b31548991981f9`](./contracts/polygon-137/0x1c539e755a1bdabb168aa9ad60b31548991981f9/) | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2583619adde454dd1e3afdf4221d25303420dd56`](./contracts/ethereum-1/0x2583619adde454dd1e3afdf4221d25303420dd56/); ethereum `0x67428de0680494e448f1a19d33c2022a51719348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MaticPool | core_logic | polygon | n/a | `0xad0dcc6635a5c38be6b87007210797ad94adb4b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09b1fbbaa67269a3ec9573fab1cbf2021736d1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x347c488293915661df93d1eeb57ba8ea266a360e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4069d8a3de3a72eca86ca5e0a4b94619085e7362` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bb67283562b9d698402c6a6e17b5299f0fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64de04b950d6413282cbf156092bf5e9b1f88ad1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c67e3f52c98c80a496a96f5e2f17dff797beb58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c6f910a79639dcc94b4feef59ff507c2e843929` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dcc8adb5bfab15d76ebd3ce27c1a71d835be8cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2f83347f0e59faefe2320b7422f8aa432ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa08299614cee49737eee3d78ecac412a01b59558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7646aafd681fccbb1c9d9761c84e14b4bbe3f76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6fcfcc497271d837c050ec912004bca0d70db0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf307910a4c7bbc79691fd374889b36d8531b08e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc270d46f0ffc242c14f563cd4a16c8690bf79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd0f61255913825da1c194b985f04982966c34d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39ab7acf8ffce773c415490a2bc31c5e8abdc2a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba30b345a3aa95e797c67d3031c17619453371c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecce8778214fd9fe37c141a00cff19853ef5bc4a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4c5995fb5c3f82186ec4706cbba6e6e786185b3f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x84db6ee82b7cf3b47e8f19270abde5718b936670` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xce4315ad1ea2ff811c47c3c1137bdd15212f66ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xde78c1d094ff062b9173cff4142a54971a789934` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x014c3237c119a9f6cb840b7254cf7c1dbc57f2b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x018998c3839dd15a150428890dc1b4676d16c60c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x05bb18cfcf85eadd17b35e94a5c2903c4b79d1d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08da6af77947f5b63ed9c4fbad58741c9e442dbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14628bff22974c83ded120dfbb02de3a3b882448` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19ab3888ba27aa3239c140f785b7044c34b91ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23dbd17d3975cc7e3c145171e4fcc104ba3c6b86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f798f5117addf0bf6bed1bc5df953cbc5056a5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x347c488293915661df93d1eeb57ba8ea266a360e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bb67283562b9d698402c6a6e17b5299f0fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a691001bf7065a17e150681f5bfbd7bc45a668e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x601ab2230c2f7b8e719a0111febdfa94bb462c69` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61da67a4c7d7e2a5a43e9023aad5abf5d0391233` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62f08e2479fe6dd32b7c04229b13c107bd5d4e04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d122961bde916faf8a333bffd5355c6456cc286` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x728afebf516d818fcc0f3870d08bcb012094c5a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8190799786cff757f5ab5d1d21b81fb342bf976c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fac904561d140cc62efacb8ce11ed3a27173e43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbbbcfd74459f9bd1cb59136c2dbc67b161b7d497` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9cfcbe08c263a593019abf154bad18c5e6b0fe9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd084bf9fd7832e879fd53dfeb9966466658a5a90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdfedbefa91df4294b4f0c522997f8ea65c0404e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf2706543ccfc087842cdf625b40a96dc559f380d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x26dcfbfa8bc267b250432c01c982eaf81cc5480c`; fantom `0xcfc785741dc0e98ad4c9f6394bb9d43cd1ef5179` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8290333cef9e6d528dd5618fb97a76f268f3edd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1becfb622db4812119e307068b36c49124aa3846` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x280cc37dac11b174560ea288200fafaa55b2f400` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38446adfd79e4285097ff7455d9e319888953321` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7557976de4a620bec1fc9e210a9c87190f01be08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9df460eb26cbe3aa673a6d58909067d4d8bbfd55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6fcfcc497271d837c050ec912004bca0d70db0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce4315ad1ea2ff811c47c3c1137bdd15212f66ed` | ❓ Unverified |
| ValidatorStorage | unknown | ethereum | n/a | `0xa2d1aa68a184d6243d8da9ae885742c635c5cc8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [system_smart_contracts_security_audit.pdf](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [stkr_smart_contract_auditing_report.pdf](https://assets.ankr.com/files/stkr_smart_contract_auditing_report.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 0 | n/a |
| [ankr_bridge_security_audit.pdf](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) | Beosin | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [ankr_delegated_staking_audit_veridise.pdf](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_avax_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) | Beosin | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_bnb.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf) | Beosin | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_bnb_peckshield.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_aeth_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf) | Beosin | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_ankreth_salus.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_flow_halborn.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf) | Halborn | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_ftm.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_matic.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf) | Beosin | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8290333cef9e6d528dd5618fb97a76f268f3edd4`](./contracts/ethereum-1/0x8290333cef9e6d528dd5618fb97a76f268f3edd4/) | ANKRToken | token | $33,425,691.43 | Verified native implementation with $33,425,691.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x39126e9b4b0c18ec2e60e3590d0f1f44fc5e1cb6`](./contracts/bsc-56/0x39126e9b4b0c18ec2e60e3590d0f1f44fc5e1cb6/) | SwapPool | core_logic | $0.38 | Verified native implementation with $0.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b6f9be1c144564162353e91317845f956380496`](./contracts/bsc-56/0x2b6f9be1c144564162353e91317845f956380496/) | aBNBb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x952398318838b4915ee5e800622a9613887759f5`](./contracts/bsc-56/0x952398318838b4915ee5e800622a9613887759f5/) | aBNBb_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c00ce1a935ff8c9e78580533e2e17c36281c26e`](./contracts/bsc-56/0x2c00ce1a935ff8c9e78580533e2e17c36281c26e/) | aBNBc_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64`](./contracts/ethereum-1/0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64/) | AETH_R21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f87f00c24f41a06d8ce81849584079c5df06d02`](./contracts/ethereum-1/0x1f87f00c24f41a06d8ce81849584079c5df06d02/) | AnkrETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x029bfc71a0dadfa0f9de26e28312f18ba0ea4f1a`](./contracts/ethereum-1/0x029bfc71a0dadfa0f9de26e28312f18ba0ea4f1a/) | AnkrTokenStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4`](./contracts/bsc-56/0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4/) | BNBStakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x141105fc3b5bf9ec20e0628507ba580646be3c76`](./contracts/polygon-137/0x141105fc3b5bf9ec20e0628507ba580646be3c76/) | CerosRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7c0e0162de86b01705f5e62a90604a3817e3fb6c`](./contracts/polygon-137/0x7c0e0162de86b01705f5e62a90604a3817e3fb6c/) | CerosRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8d575d202b7653fb2e076be451b006626cc31858`](./contracts/polygon-137/0x8d575d202b7653fb2e076be451b006626cc31858/) | CerosRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x27f97003a947f82039ccf78873b59d4a001d1fd1`](./contracts/polygon-137/0x27f97003a947f82039ccf78873b59d4a001d1fd1/) | CerosYieldConverterStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x29ded4c99690968562f2d067968aa72b7d46a65d`](./contracts/polygon-137/0x29ded4c99690968562f2d067968aa72b7d46a65d/) | CerosYieldConverterStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d78f47fc07185db380ea873fe970dd096b8c922`](./contracts/polygon-137/0x3d78f47fc07185db380ea873fe970dd096b8c922/) | CerosYieldConverterStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8ec1877698acf262fe8ad8a295ad94d6ea258988`](./contracts/polygon-137/0x8ec1877698acf262fe8ad8a295ad94d6ea258988/) | CeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6ae8f29e0031340ea5dbe11c2da4466cde34464`](./contracts/polygon-137/0xa6ae8f29e0031340ea5dbe11c2da4466cde34464/) | CeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2bde5adb0da369e28c29b8ea7aca997197167d62`](./contracts/polygon-137/0x2bde5adb0da369e28c29b8ea7aca997197167d62/) | CeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x50a180635b233a08c0fe98239d05b40f96efb6aa`](./contracts/polygon-137/0x50a180635b233a08c0fe98239d05b40f96efb6aa/) | CeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x92e77ba6cecb46733ae482ba1d7e011aa872ad7e`](./contracts/polygon-137/0x92e77ba6cecb46733ae482ba1d7e011aa872ad7e/) | CeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3b87b26c44971fc0e7e4cead219a1fe4e2f604c4`](./contracts/polygon-137/0x3b87b26c44971fc0e7e4cead219a1fe4e2f604c4/) | Clipper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb563ef00c5f7d8589974fd8d9606dc8376287831`](./contracts/polygon-137/0xb563ef00c5f7d8589974fd8d9606dc8376287831/) | Clipper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85ea08796eb66820379039cab034722e69e4e16c`](./contracts/ethereum-1/0x85ea08796eb66820379039cab034722e69e4e16c/) | CrossChainBridge_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0fb82db5676330644acd26a21fd00c749715066d`](./contracts/polygon-137/0x0fb82db5676330644acd26a21fd00c749715066d/) | Davos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x78be0423567a85ba677d3aa5b73b45970e52256b`](./contracts/polygon-137/0x78be0423567a85ba677d3aa5b73b45970e52256b/) | DavosBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8fcd9542a6ee0f05f470230da5b8cb41033da6df`](./contracts/polygon-137/0x8fcd9542a6ee0f05f470230da5b8cb41033da6df/) | DavosJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x046b71694b3b659f491247167eda42e0556123cf`](./contracts/polygon-137/0x046b71694b3b659f491247167eda42e0556123cf/) | DavosProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9b81ebcda2d8a3d592cf0e620b0223d92e3f2374`](./contracts/polygon-137/0x9b81ebcda2d8a3d592cf0e620b0223d92e3f2374/) | DavosProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4f1b83ef5009bb4727e4b5efcfaaf5cbf3bce9ac`](./contracts/polygon-137/0x4f1b83ef5009bb4727e4b5efcfaaf5cbf3bce9ac/) | dCOL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x54809f204999a886839ac46b2fd796282e727158`](./contracts/polygon-137/0x54809f204999a886839ac46b2fd796282e727158/) | DGTRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08abfd7ded42cc33900d3457118eab7fc40b71c8`](./contracts/polygon-137/0x08abfd7ded42cc33900d3457118eab7fc40b71c8/) | dMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x122897d16b2dd5a193efce19a1b4f34d1c540118`](./contracts/polygon-137/0x122897d16b2dd5a193efce19a1b4f34d1c540118/) | Dog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9b26a5e0234aa7eada50020ba0375d3dd7a9accd`](./contracts/polygon-137/0x9b26a5e0234aa7eada50020ba0375d3dd7a9accd/) | Dog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x219a4e8f8c73d977f8d69596d434b5961068b26b`](./contracts/ethereum-1/0x219a4e8f8c73d977f8d69596d434b5961068b26b/) | FeeRecipient_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3`](./contracts/avalanche-43114/0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3/) | FutureBondAVAX_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x477c1a369ea157b42f6584a8a5960f9d34d7173e`](./contracts/polygon-137/0x477c1a369ea157b42f6584a8a5960f9d34d7173e/) | GemJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa534e0f7b1c6a4be0490a224bacc83220e3abde0`](./contracts/polygon-137/0xa534e0f7b1c6a4be0490a224bacc83220e3abde0/) | GemJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaf22a9c4713efc52f273c268674bcff6ab14c978`](./contracts/polygon-137/0xaf22a9c4713efc52f273c268674bcff6ab14c978/) | GemJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1a80b0512580791dda042fef0083e6ce7cbd5d88`](./contracts/polygon-137/0x1a80b0512580791dda042fef0083e6ce7cbd5d88/) | IkkaRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2`](./contracts/gnosis-100/0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2/) | InsurancePool_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x17a902fdc6860734751e315f0799673673096c9b`](./contracts/polygon-137/0x17a902fdc6860734751e315f0799673673096c9b/) | Interaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3f5f1b733ad75797962434992ee2f5a6b490dbef`](./contracts/polygon-137/0x3f5f1b733ad75797962434992ee2f5a6b490dbef/) | Interaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0810e4507cebac8fec3f519205e69c07440cfa3`](./contracts/ethereum-1/0xe0810e4507cebac8fec3f519205e69c07440cfa3/) | InternetBondRatioFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4f3872c6cfab8b39232351b8aab1cbcb958bbd07`](./contracts/polygon-137/0x4f3872c6cfab8b39232351b8aab1cbcb958bbd07/) | InternetBondRatioFeed_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff4fb91c9fff1f57310de52d52d033c00523f81`](./contracts/ethereum-1/0x8ff4fb91c9fff1f57310de52d52d033c00523f81/) | InternetBondRatioFeed_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd00b967296b6d8ec266e4ba64594f892d03a4d0a`](./contracts/avalanche-43114/0xd00b967296b6d8ec266e4ba64594f892d03a4d0a/) | InternetBondRatioFeed_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4a20fe93dec6e5b2d66c246eb7e8ab228254c03f`](./contracts/polygon-137/0x4a20fe93dec6e5b2d66c246eb7e8ab228254c03f/) | Jar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x97f0bdadbfaa05a1944ffba862b3336a175056cf`](./contracts/polygon-137/0x97f0bdadbfaa05a1944ffba862b3336a175056cf/) | Jar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x85d05c7bc4aec86cd77d44dc97751d8ee5e2aba4`](./contracts/polygon-137/0x85d05c7bc4aec86cd77d44dc97751d8ee5e2aba4/) | Jug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc37f6af12c443ba8c749cbfa38944abffc156f22`](./contracts/polygon-137/0xc37f6af12c443ba8c749cbfa38944abffc156f22/) | Jug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x78d1528a8010639870874285a28eea4e30bc10e9`](./contracts/polygon-137/0x78d1528a8010639870874285a28eea4e30bc10e9/) | LinearDecrease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa48f322f8b3edff967629af79e027628b9dd1298`](./contracts/polygon-137/0xa48f322f8b3edff967629af79e027628b9dd1298/) | LinearDecrease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d04c6c5cce7e68f2dd13ec11742c35792d67f43`](./contracts/ethereum-1/0x5d04c6c5cce7e68f2dd13ec11742c35792d67f43/) | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807`](./contracts/bsc-56/0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807/) | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x77bf5996b93c8d747c541e47105c5f7d05b2d556`](./contracts/polygon-137/0x77bf5996b93c8d747c541e47105c5f7d05b2d556/) | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa88b54e6b76fb97cdb8ecae868f1458e18a953f4`](./contracts/polygon-137/0xa88b54e6b76fb97cdb8ecae868f1458e18a953f4/) | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0730ba2252670cd71580dadf471f3e137592e800`](./contracts/polygon-137/0x0730ba2252670cd71580dadf471f3e137592e800/) | MasterVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20642aca160e38eeb8dcf34b2cf15f0581e56525`](./contracts/polygon-137/0x20642aca160e38eeb8dcf34b2cf15f0581e56525/) | MasterVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x77f4c841cb87fdfa43ab909cf56f7710af648a8e`](./contracts/polygon-137/0x77f4c841cb87fdfa43ab909cf56f7710af648a8e/) | MasterVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9a1275304960dbc6a8d4a5795832823a7d53f30a`](./contracts/polygon-137/0x9a1275304960dbc6a8d4a5795832823a7d53f30a/) | MasterVault_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4f174701c68c4b92d531e37258b8c705585e9363`](./contracts/polygon-137/0x4f174701c68c4b92d531e37258b8c705585e9363/) | MaticOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xec348813a94c2873e4d2372ae40955392a12acff`](./contracts/polygon-137/0xec348813a94c2873e4d2372ae40955392a12acff/) | MaticOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e1e6dcf05fb49568aa66f40b9e3834c86008c8f`](./contracts/ethereum-1/0x5e1e6dcf05fb49568aa66f40b9e3834c86008c8f/) | MrpcDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8ff4fb91c9fff1f57310de52d52d033c00523f81`](./contracts/polygon-137/0x8ff4fb91c9fff1f57310de52d52d033c00523f81/) | MrpcDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82af704a46d358b979f64b2e43823097312adf3d`](./contracts/ethereum-1/0x82af704a46d358b979f64b2e43823097312adf3d/) | PolygonPool_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x6c6f910a79639dcc94b4feef59ff507c2e843929`](./contracts/gnosis-100/0x6c6f910a79639dcc94b4feef59ff507c2e843929/) | ProviderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2b6fe7d2b9ac97bf5411d1c71c9521f51ac3c863`](./contracts/polygon-137/0x2b6fe7d2b9ac97bf5411d1c71c9521f51ac3c863/) | RatioAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00658fc8ec685727f3f59d381b8ad8f5e0fedbc2`](./contracts/polygon-137/0x00658fc8ec685727f3f59d381b8ad8f5e0fedbc2/) | Sikka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x84cd2e9e46fb44e9f775a5fd08edcdaf2377c3c1`](./contracts/polygon-137/0x84cd2e9e46fb44e9f775a5fd08edcdaf2377c3c1/) | SikkaJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2f2e746b2e9ef33c2ac6348985f100af8dbc944d`](./contracts/polygon-137/0x2f2e746b2e9ef33c2ac6348985f100af8dbc944d/) | SikkaProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30faab28c1af8f90574db759243888c8bd279536`](./contracts/polygon-137/0x30faab28c1af8f90574db759243888c8bd279536/) | sMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbbf35c9dcb16ea3cb64a0fce51c51f9ca34079fe`](./contracts/polygon-137/0xbbf35c9dcb16ea3cb64a0fce51c51f9ca34079fe/) | Spotter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf97680e99be42daccea9fe6f9f9aa385ccf97a62`](./contracts/polygon-137/0xf97680e99be42daccea9fe6f9f9aa385ccf97a62/) | Spotter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618`](./contracts/gnosis-100/0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618/) | StakingConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3bfce37b5401bef13c78830d3a9fb14294d18c4f`](./contracts/gnosis-100/0x3bfce37b5401bef13c78830d3a9fb14294d18c4f/) | StakingConfig_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x092fd701c7c082b2e4dd91f4e139bb3749b19734`](./contracts/polygon-137/0x092fd701c7c082b2e4dd91f4e139bb3749b19734/) | StMaticOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2`](./contracts/ethereum-1/0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2/) | SwapPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2fa1879c6c5d058dd363cf99020689836bd7af78`](./contracts/polygon-137/0x2fa1879c6c5d058dd363cf99020689836bd7af78/) | SwapPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa983f4b5137b89f82b2eb5dac415e6490f06f639`](./contracts/polygon-137/0xa983f4b5137b89f82b2eb5dac415e6490f06f639/) | Vat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbdf1dcec3cd02a5230672fa4bd779bdb2e4a67a3`](./contracts/polygon-137/0xbdf1dcec3cd02a5230672fa4bd779bdb2e4a67a3/) | Vat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x58cf68493bc178a17b43b270ddbb8d4c1a271429`](./contracts/polygon-137/0x58cf68493bc178a17b43b270ddbb8d4c1a271429/) | Vow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6cfca08a8535a1029f906b1d7aceb421372c240f`](./contracts/polygon-137/0x6cfca08a8535a1029f906b1d7aceb421372c240f/) | Vow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02237aaf5b62dbcdeac287e76f9ac1d5deec7738`](./contracts/polygon-137/0x02237aaf5b62dbcdeac287e76f9ac1d5deec7738/) | WaitingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02c7420407a6439d49e9816399a5d5b03187363b`](./contracts/polygon-137/0x02c7420407a6439d49e9816399a5d5b03187363b/) | WaitingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1c539e755a1bdabb168aa9ad60b31548991981f9`](./contracts/polygon-137/0x1c539e755a1bdabb168aa9ad60b31548991981f9/) | WaitingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2583619adde454dd1e3afdf4221d25303420dd56`](./contracts/ethereum-1/0x2583619adde454dd1e3afdf4221d25303420dd56/) | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 94 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [1860] system_smart_contracts_security_audit.pdf
- [3459] stkr_smart_contract_auditing_report.pdf
- [3461] ankr_bridge_security_audit.pdf
- [3462] smart_contract_security_audit.pdf
- [3463] ankr_delegated_staking_audit_veridise.pdf
- [3464] smart_contract_security_audit_avax_beosin.pdf
- [3465] smart_contract_security_audit_bnb.pdf
- [3466] smart_contract_security_audit_bnb_peckshield.pdf
- [3467] smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf
- [3469] smart_contract_security_audit_aeth_beosin.pdf
- [3470] smart_contract_security_audit_ankreth_salus.pdf
- [3471] smart_contract_security_audit_flow_halborn.pdf
- [3472] smart_contract_security_audit_ftm.pdf
- [3473] smart_contract_security_audit_matic.pdf

Fork inheritance lineage and inherited audits are included when available.
