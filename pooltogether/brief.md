# Agentic Audit Brief: PoolTogether

## Project Overview

- Project: PoolTogether (`pooltogether`)
- Website: [https://pooltogether.com/](https://pooltogether.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.095Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, scroll
- Contract surface: 138 unique implementations (406 raw deployments)
- DeFi Llama TVL: $8,728,463.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Lottery. Structurally: 121 project-authored contract(s) across 8 chain(s); 5 ERC4626 vaults, 11 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 13 common project-authored base contract(s) (proxyfactory, prizepoolbuilder, basepool). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 462; live-surface contracts included: 406 (353 live, 53 unknown).
- Excluded by liveness: 56 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/87 (1.1%)
- Deployed-live implementations: 88 of 138 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/89
- Verified + Unaudited implementations: 88
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 138
- Raw deployments: 406
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 1.1% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermitAndDepositDai | unknown | ethereum | n/a | 4 deployments: ethereum [`0x71fc2e52d426c852e06172c3a00180d5e9f8a70c`](./contracts/ethereum-1/0x71fc2e52d426c852e06172c3a00180d5e9f8a70c/); ethereum `0x8a4416453340ecf6c489eff3030edb632b0087b2`; ethereum `0xdcc0d09bee9726e23256ebc059b7487cd78f65a0`; ethereum `0xe539c8ebe8f6050c7a8733f5c7c449f8d802fbff` | ✅ Audited |

### ⚠️ Verified + Unaudited (88)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3ERC4626 | unknown | optimism | n/a | 2 deployments: optimism [`0x964356cecf4f4679cab76d969c043fcccaafe307`](./contracts/optimism-10/0x964356cecf4f4679cab76d969c043fcccaafe307/); optimism `0xdc1056cd48a46ee001faf851e50e83fb77c6f3c9` | ⚠️ Unaudited |
| AToken | token | ethereum | n/a | [`0xbcca60bb61934080951369a648fb03df4f96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| AToken | token | polygon | n/a | [`0x1a13f4ca1d028320a707d99520abfefca3998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| AToken | token | avalanche | n/a | [`0x46a51127c3ce23fb7ab1de06226147f446e4a857`](./contracts/avalanche-43114/0x46a51127c3ce23fb7ab1de06226147f446e4a857/) | ⚠️ Unaudited |
| Claimer | operational_periphery | optimism | n/a | 11 deployments: ethereum `0x54aa02cbc223fc834949fb1fd8c855e4da126c7d`; optimism [`0x0b5a1dc536d5a67c66d00b337e6b189385bd8438`](./contracts/optimism-10/0x0b5a1dc536d5a67c66d00b337e6b189385bd8438/); optimism `0x220c9398b0ee07472bf8906e44574cb9fe3b8d90`; optimism `0x2589ff8614f74704741ee3b51851b4ae812f1a21`; optimism `0x47b55748243314be6a341668ecda2066c0625f70`; gnosis `0x0cffb70cdd335cc5380cb58166699edaa2b0bbfa`; base `0x5ffeee76d1e2d2d1d18ba0bc77d8d047b85e1e87`; base `0xcdce635b774de77cdf791647601dba64a75547ba`; arbitrum `0x1e68e5e92d22aefdc791a61c874c06831023e571`; arbitrum `0xbea38368f2a657f00f173764f18f00e841317c73`; scroll `0xb04d5c80a3f6da11532d3a67184bb7be11f00285` | ⚠️ Unaudited |
| ClaimerFactory | unknown | gnosis | n/a | 13 deployments: ethereum `0x4457025dff44e3d9085d9195828e7d53fe6a7088`; ethereum `0x7a856d2c91c693299d527e66088b84eea36b152d`; ethereum `0xd84c4c7675e6eb79ea28d04c001e702ccc679e80`; optimism `0x34a1464d4eb70383f87c301300a7096edbe2aa8c`; optimism `0x498c92bef017a91018eccae29b3b3c531e3f4794`; optimism `0x94f51a697920fd4c2be9a7675ca8e97475779cc3`; optimism `0xcfedfbaab16f16a6c4e2321e7127659879d9e923`; optimism `0xef366ce3891c668f1f695d3ac5be4337f464605f`; gnosis [`0x22e3857db02c4db38870dddc286d0543869ea47e`](./contracts/gnosis-100/0x22e3857db02c4db38870dddc286d0543869ea47e/); base `0x804657333bcc97afa4bd38c4e8fd41d06e21c63c`; base `0xd58a04fc8d34ce6b3633bf81ee7d5d25c71401e3`; arbitrum `0x64e77e749943a82bd2b7d81ae35ab9717b4de554`; arbitrum `0xc4824b6b0bb0559d919a606f258ee68a890757da` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x4027de966127af5f015ea1cfd6293a3583892668`](./contracts/ethereum-1/0x4027de966127af5f015ea1cfd6293a3583892668/) | ⚠️ Unaudited |
| ControlledTokenBuilder | unknown | ethereum | n/a | 7 deployments: ethereum [`0x03e75aeeb92add6f3b168412671360eb94f0dbf7`](./contracts/ethereum-1/0x03e75aeeb92add6f3b168412671360eb94f0dbf7/); ethereum `0x3e3a097af79d6389c16a1e2b3a2f056d3d543c53`; ethereum `0xaf00636e7d943a62ccb87e8153c1c97bf657f11d`; ethereum `0xf5ff8c8d23b70dcaa8eea48c9d1a6e0d64ad59cc`; polygon `0x317625b28acb3c0540db00b179d84d9b804277f7`; polygon `0x42ad7b4e9ef876388630363a28abab51a248fb4d`; polygon `0xef3d36a282e74b5bcba8a45262687ddb31495cd2` | ⚠️ Unaudited |
| ControlledTokenProxyFactory | unknown | polygon | n/a | 7 deployments: ethereum `0x97cbd3708cc001a8f7d1c4bc89936207f1fc70c7`; ethereum `0xa743f8a9d7c2d7e56e6983d0b60ff19ebc0ce727`; ethereum `0xdd8f31f7b9c6026311464bc07ae5db2f99f3892e`; ethereum `0xfb932b0bcfa5208d536600ab23c13ac55cd69ba1`; polygon [`0x08411add0b5aa8ee47563b146743c13b3556c9cc`](./contracts/polygon-137/0x08411add0b5aa8ee47563b146743c13b3556c9cc/); polygon `0x59b34c5bc94e2d5b9dcb97ec935c94c353e5eb94`; polygon `0xaa4e28ead244b439eb670986ddf3f084522dc4f9` | ⚠️ Unaudited |
| DailyDoubleHook | unknown | optimism | n/a | [`0xe34def1114d7bb0298636a2026d9cf3d67f19fbd`](./contracts/optimism-10/0xe34def1114d7bb0298636a2026d9cf3d67f19fbd/) | ⚠️ Unaudited |
| DirectContributor | unknown | optimism | n/a | 3 deployments: optimism [`0x363b7a1567af0dbf06642c4028779c3f3365b516`](./contracts/optimism-10/0x363b7a1567af0dbf06642c4028779c3f3365b516/); base `0x663dc65f5372dd952149d45fc3dcd0530285fbfe`; arbitrum `0x9527b4e411959971dcc9138df644f336e8999a54` | ⚠️ Unaudited |
| DrawBeacon | unknown | ethereum | n/a | [`0x0d33612870cd9a475bbbbb7cc38fc66680decac5`](./contracts/ethereum-1/0x0d33612870cd9a475bbbbb7cc38fc66680decac5/) | ⚠️ Unaudited |
| DrawCalculator | unknown | avalanche | n/a | 4 deployments: ethereum `0x14d0675580c7255043a3aed3726f5d7f33292730`; polygon `0x3976bd6f4b82c97314570a77bc1e979f7a839a24`; avalanche [`0x0f5f5ef16465371152fc46c72d06fb0ec9392a47`](./contracts/avalanche-43114/0x0f5f5ef16465371152fc46c72d06fb0ec9392a47/); avalanche `0x5774883bdae608dfe885c2fcbfc24c6015cd45f0` | ⚠️ Unaudited |
| DrawCalculatorTimelock | unknown | avalanche | n/a | 5 deployments: ethereum `0x6ab2c44a548b8ac1d166afbf490b200ad4261c15`; polygon `0x676a541cf8cba8c324ace66e8dfd19cacf9c7484`; avalanche [`0x01ee1ea692773f28c45d63133426f21923c3c2ba`](./contracts/avalanche-43114/0x01ee1ea692773f28c45d63133426f21923c3c2ba/); avalanche `0x3fb69b656c7fc3ddf32d59b4decb87eec2f95335`; avalanche `0xf1f789473023ad0c12d9fbe77c41b3ff4735141c` | ⚠️ Unaudited |
| DrawDispatcher | unknown | ethereum | n/a | [`0xac4ff319adac4c7d109f4024a33328088370a064`](./contracts/ethereum-1/0xac4ff319adac4c7d109f4024a33328088370a064/) | ⚠️ Unaudited |
| DrawManager | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0aa9e2e0b37fb54c19e45cb246b17b0e700ab98d`](./contracts/ethereum-1/0x0aa9e2e0b37fb54c19e45cb246b17b0e700ab98d/); ethereum `0x98305eb9a29d45ec93ce44ba02b315b631c675a7`; optimism `0x7e8e79eb264b42dcba887047f40b6db12c4f0940`; optimism `0x7eed7444de862c4f79c5820ff867fa3a82641857`; gnosis `0x146efc8d651dc015225cc2e74707d87aa4d09067`; base `0x8a2782bedc79982ebfa3b68b315a2ee40daf6ab0`; arbitrum `0xc00146957ff55fad7d27deb69ff95d79fdcd37e6`; scroll `0xa75474749055f71560eb5dcff33605766c69ddf2` | ⚠️ Unaudited |
| ERC721ControlledFactory | unknown | ethereum | n/a | [`0x4e869b3a0978fa61dabd7da8f9b272aadc745fb3`](./contracts/ethereum-1/0x4e869b3a0978fa61dabd7da8f9b272aadc745fb3/) | ⚠️ Unaudited |
| EzDepositor | unknown | base | n/a | 6 deployments: ethereum `0x84882eb46da981d1ad2f154359061942ca1c062f`; optimism `0x68a100a3729fc04ab26fb4c0862df22ceec2f18b`; gnosis `0x69fc8095b949c0ff703ead99bf7d6620843c37ef`; base [`0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4`](./contracts/base-8453/0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4/); arbitrum `0x5f9292672e33b76b70dea44163c780376b4da397`; scroll `0xbdf6bd9bde192861bd8e0e0a11dad71f178a34c8` | ⚠️ Unaudited |
| FireFighterClaimer | operational_periphery | optimism | n/a | [`0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5`](./contracts/optimism-10/0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5/) | ⚠️ Unaudited |
| GpBoostHook | unknown | arbitrum | n/a | 5 deployments: ethereum `0x6be9c23aa3c2cfeff92d884e20d1ec9e134ab076`; optimism `0xdeef914a2ee2f2014ce401dcb4e13f6540d20ba7`; gnosis `0x65f3aea2594d82024b7ee98ddcf08f991ab1c626`; base `0x327b2ea9668a552fe5dec8e3c6e47e540a0a58c6`; arbitrum [`0x1dcfb8b47c2f05ce86c21580c167485de1202e12`](./contracts/arbitrum-42161/0x1dcfb8b47c2f05ce86c21580c167485de1202e12/) | ⚠️ Unaudited |
| L1TimelockTrigger | unknown | ethereum | n/a | [`0xdc90a79fcb1dbad5f05e6c264f84ac4b0d351f94`](./contracts/ethereum-1/0xdc90a79fcb1dbad5f05e6c264f84ac4b0d351f94/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x395ae52bb17aef68c2888d941736a71dc6d4e125`](./contracts/optimism-10/0x395ae52bb17aef68c2888d941736a71dc6d4e125/) | ⚠️ Unaudited |
| L2TimelockTrigger | unknown | polygon | n/a | [`0xc366bf1a054ca495c09b1a722d863ac65746138e`](./contracts/polygon-137/0xc366bf1a054ca495c09b1a722d863ac65746138e/) | ⚠️ Unaudited |
| LiquidationPair | unknown | optimism | n/a | [`0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853`](./contracts/optimism-10/0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853/) | ⚠️ Unaudited |
| LiquidationPairFactory | unknown | optimism | n/a | 5 deployments: optimism [`0x555bd8fc65e57139c9f405980c7a9526a7de8093`](./contracts/optimism-10/0x555bd8fc65e57139c9f405980c7a9526a7de8093/); optimism `0x8aa2a1d364162fdfeb891d48f127e6923f9ab1a5`; optimism `0x9428f4b3ee5f5918ee16958c1717b5520fa3158e`; optimism `0xa1697e8f6b11d0e2f00d9dc8a5aeae2b2665650a`; optimism `0xcb54fc145bc53cb92f79bd8202d9c78d083b9f6f` | ⚠️ Unaudited |
| LiquidationRouter | adapter | optimism | n/a | 2 deployments: optimism [`0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95`](./contracts/optimism-10/0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95/); optimism `0xf4cfa53df258d78aad153ac11c644703651983f5` | ⚠️ Unaudited |
| LootBoxController | unknown | ethereum | n/a | [`0x2c2a966b7f5448a36ec9f896088dfb99b21d8a24`](./contracts/ethereum-1/0x2c2a966b7f5448a36ec9f896088dfb99b21d8a24/) | ⚠️ Unaudited |
| LootBoxPrizeStrategyListenerFactory | unknown | ethereum | n/a | [`0x25e6a78d93d2935a638fdbd684e7b39565d0b7ea`](./contracts/ethereum-1/0x25e6a78d93d2935a638fdbd684e7b39565d0b7ea/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0xbe1a33519f586a4c8aa37525163df8d67997016f`](./contracts/ethereum-1/0xbe1a33519f586a4c8aa37525163df8d67997016f/) | ⚠️ Unaudited |
| MultipleWinnersBuilder | unknown | ethereum | n/a | 6 deployments: ethereum [`0x10f61a36e1327036e5e416d52ff0f4b5c9efaaa3`](./contracts/ethereum-1/0x10f61a36e1327036e5e416d52ff0f4b5c9efaaa3/); ethereum `0x3a1bc60023cf439335a984d153e02c62f515446e`; ethereum `0xf438bc6c3250be17b361042cca708a743a3fc5e5`; ethereum `0xf843d50d4a7dc43ea47682b444995dabdd014526`; polygon `0x72edd573e230c7d68274bf718a4c6ad82b5d5f90`; polygon `0xd1a6515aaf261f5bf5d00bf3311ca325d32ed5a0` | ⚠️ Unaudited |
| MultipleWinnersProxyFactory | unknown | ethereum | n/a | 6 deployments: ethereum [`0x4cb2f953f85b3ffdc97269f5cef6a4fcc0ca4d73`](./contracts/ethereum-1/0x4cb2f953f85b3ffdc97269f5cef6a4fcc0ca4d73/); ethereum `0x734e677ac3699f63f47c2bae7a8f3c16aff5ae70`; ethereum `0xb789b73ebea500e797c068c4a3d7b1b490b58475`; ethereum `0xf273efaed59fed4f41cb9e693eefd9b1191f1522`; polygon `0xdc488e6e8c55a11d20032997cd1ff7c4951401df`; polygon `0xf3317f7d9f6479eb8d2633c30c555aa09bd07cc7` | ⚠️ Unaudited |
| NftChanceBoosterHook | unknown | base | n/a | 6 deployments: optimism `0x7f15d92694257141a5e539762d93f91c43ab9a95`; base [`0x26158db2448a5eccf6107d7494330e96404398c1`](./contracts/base-8453/0x26158db2448a5eccf6107d7494330e96404398c1/); base `0x519bdf6855968bcc2d921dcf22e586f3dbf2e299`; base `0x81b743dc3ebde24484a6e4625e224079c64ba620`; base `0x83cbc017b05d7528005b99031820b89be1daef32`; arbitrum `0x2fb736ad20d9d82e2dc54a9a648c2090b8039ea9` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xd652c5425aea2afd5fb142e120fecf79e18fafc3`](./contracts/base-8453/0xd652c5425aea2afd5fb142e120fecf79e18fafc3/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0x216a7d520992ed198593a16e0b17c784c9cdc660`](./contracts/gnosis-100/0x216a7d520992ed198593a16e0b17c784c9cdc660/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0x0cec1a9154ff802e7934fc916ed7ca50bde6844e`](./contracts/ethereum-1/0x0cec1a9154ff802e7934fc916ed7ca50bde6844e/) | ⚠️ Unaudited |
| PoolWithMultipleWinnersBuilder | unknown | ethereum | n/a | 8 deployments: ethereum [`0x39e2f33ff4ad3491106b3bb15dc66ebe24e4e9c7`](./contracts/ethereum-1/0x39e2f33ff4ad3491106b3bb15dc66ebe24e4e9c7/); ethereum `0x8f2450023ca7e6c1bf361451ab2dceb32b3bb27d`; ethereum `0xad1c620137fa76f520f9a39daacd7b008d7d2f2d`; ethereum `0xbeb9d5538f6454d6ca82e9e901453986abda1e7a`; ethereum `0xd1e536939f637fc12f29c304c406377c9f77e28c`; ethereum `0xda64816f76bea59cde1ecbe5a094f6c56a7f9770`; polygon `0x5effa0823e486a5ed1d49d88a1374fc337e1f9f4`; polygon `0x920bd7c30b36c958fae800ee07660e6a56b86a2c` | ⚠️ Unaudited |
| PoolyNFT | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3545192b340f50d77403dc0a64cf2b32f03d00a9`](./contracts/ethereum-1/0x3545192b340f50d77403dc0a64cf2b32f03d00a9/); ethereum `0x90b3832e2f2ade2fe382a911805b6933c056d6ed` | ⚠️ Unaudited |
| PrizeChunker | unknown | ethereum | n/a | 3 deployments: ethereum [`0x239fc7c69ba8079ebec07156f13a6d78d234fa6b`](./contracts/ethereum-1/0x239fc7c69ba8079ebec07156f13a6d78d234fa6b/); ethereum `0x526396e6df883d145f28c76d078f819b56bcc2fa`; ethereum `0x89bf5adfcda6e13edd50ba03e7277d9940f16dbd` | ⚠️ Unaudited |
| PrizeDistributionBuffer | unknown | avalanche | n/a | 4 deployments: ethereum `0xf025a8d9e6080f885e841c8cc0e324368d7c6577`; polygon `0xcf6030bdeab4e503d186426510ad88c1da7125a3`; avalanche [`0x748f6d44590c4c37a1ce54a41fb7a3c6defa563b`](./contracts/avalanche-43114/0x748f6d44590c4c37a1ce54a41fb7a3c6defa563b/); avalanche `0xc8faa39e06ddb8362cb8e3ffdadeb5bf7877eccb` | ⚠️ Unaudited |
| PrizeDistributionFactory | unknown | avalanche | n/a | 4 deployments: avalanche [`0x13bef52354cf4036d7d522c147955a1ed2576e33`](./contracts/avalanche-43114/0x13bef52354cf4036d7d522c147955a1ed2576e33/); avalanche `0x87fcf371d68d2429d57bf1badcbeec3463f0dd37`; avalanche `0x8bc2cbcfb211c34b6fdc5257dedf246dc1984383`; avalanche `0xd35108897e5fdfb03850b95145df456f656d747a` | ⚠️ Unaudited |
| PrizeDistributionFactoryV2 | unknown | ethereum | n/a | [`0x032ba44eb2db607d2f9424b90e191bbfb51152a1`](./contracts/ethereum-1/0x032ba44eb2db607d2f9424b90e191bbfb51152a1/) | ⚠️ Unaudited |
| PrizeDistributor | unknown | polygon | n/a | 4 deployments: ethereum `0xb9a179dca5a7bf5f8b9e088437b3a85ebb495efe`; polygon [`0x8141bcfbcee654c5de17c4e2b2af26b67f9b9056`](./contracts/polygon-137/0x8141bcfbcee654c5de17c4e2b2af26b67f9b9056/); avalanche `0x83332f908f403ce795d90f677ce3f382fe73f3d1`; avalanche `0xc5d8623c92c543a60893ac8d38604559d365ae38` | ⚠️ Unaudited |
| PrizePool | core_logic | gnosis | n/a | 9 deployments: ethereum `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95`; ethereum `0xa6bff884a85306cd1ab61dc010e3dca94f39cbec`; optimism `0x8cfffffa42407db9dcb974c2c744425c3e58d832`; optimism `0xc6ae7db3b9552dad4a0adf92d67857ebfb48042d`; optimism `0xe32e5e1c5f0c80bd26def2d0ea5008c107000d6a`; optimism `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55`; gnosis [`0x0c08c2999e1a14569554eddbcda9da5e1918120f`](./contracts/gnosis-100/0x0c08c2999e1a14569554eddbcda9da5e1918120f/); base `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb`; arbitrum `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | gnosis | n/a | 5 deployments: ethereum `0x3341dac0912b630f1a8c237b64f6861e9fa11d79`; optimism `0x36be31e7acd4b0d755bcc7858ef04848a3ec66c6`; gnosis [`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`](./contracts/gnosis-100/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/); base `0xf4c47dacfda99be38793181af9fd1a2ec7576bbf`; arbitrum [`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`](./contracts/arbitrum-42161/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/) | ⚠️ Unaudited |
| PrizeSplitStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x47a5abfacdebf5af312b034b3b748935a0259136`](./contracts/ethereum-1/0x47a5abfacdebf5af312b034b3b748935a0259136/); polygon `0x879e176ae9fe9b00c30f4827364ea9e4fb35858d`; avalanche `0xa30cb2a488dc616f060a54ee7971d0bd832547ec`; avalanche `0xb2631852e98335d6f4282109f45e377fed58b807` | ⚠️ Unaudited |
| PrizeStakingVaultFactory | registry | base | n/a | 4 deployments: ethereum `0x8f11cbfef3c1779b2c1c2c1dcfb20eee4ef18389`; optimism `0x7c4626ecc134ae1dbd46c82bd94ae2469302acf3`; base [`0x48492f83d9e1d848d33a461d49a2071a6fdcc037`](./contracts/base-8453/0x48492f83d9e1d848d33a461d49a2071a6fdcc037/); arbitrum `0x9468ead4c425deeded5c65723fdc6fce6d3f3f20` | ⚠️ Unaudited |
| PrizeTierHistory | unknown | avalanche | n/a | 6 deployments: ethereum `0xdd1cba915be9c7a1e60c4b99dade1fc49f67f80d`; avalanche [`0x51d72281ed1d149ccbd7f290d3431c1d831f52c4`](./contracts/avalanche-43114/0x51d72281ed1d149ccbd7f290d3431c1d831f52c4/); avalanche `0xad9f8f45b8c11b34516bef114f7e4edbef7012e8`; avalanche `0xc3dad539e460103c860bb9ca547647edbd4903b6`; avalanche `0xd20fbf835c53dcd12436ca0d33a9f5244eba2dd3`; avalanche `0xee453022a843a8d3a3ca944bd601399cf520e8c9` | ⚠️ Unaudited |
| PrizeTierHistoryV2 | unknown | ethereum | n/a | [`0x63c82be45399b5ca6041a3b6aac0f326614c8aaa`](./contracts/ethereum-1/0x63c82be45399b5ca6041a3b6aac0f326614c8aaa/) | ⚠️ Unaudited |
| PrizeVault | core_logic | scroll | n/a | 6 deployments: ethereum `0x9ee31e845ff1358bf6b1f914d3918c6223c75573`; optimism `0xa52e38a9147f5ea9e0c5547376c21c9e3f3e5e1f`; gnosis `0xb75af20ecadabed9049cc2f50e38bad2768b35cf`; base `0x6b5a5c55e9dd4bb502ce25bbfbaa49b69cf7e4dd`; arbitrum `0x97a9c02cfbbf0332d8172331461ab476df1e8c95`; scroll [`0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b`](./contracts/scroll-534352/0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b/) | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | optimism | n/a | 11 deployments: ethereum `0x29c102109d6cb2d866cfec380e0e10e9a287a75f`; ethereum `0xd499ccf3e93f4cfb335ac388e3c896d59cdde7c3`; ethereum `0xed49a97b283e14a7925446040ea7d072c8a154a7`; optimism [`0x0c379e9b71ba7079084ada0d1c1aeb85d24dfd39`](./contracts/optimism-10/0x0c379e9b71ba7079084ada0d1c1aeb85d24dfd39/); optimism `0xec9f59bd06465b105e719c0b0483a4ed6a656775`; optimism `0xf0f151494658bae060034c8f4f199f74910ea806`; gnosis `0xc3ae3fe36a2645a93b2fe350d81e80a14831e2a6`; base `0xa55a74a457d8a24d68dda0b5d1e0341746d444bf`; base `0xe32f6344875494ca3643198d87524519dc396ddf`; arbitrum `0x44be003e55e7ce8a2e0ecc3266f8a9a9de2c07bc`; arbitrum `0x8020fb37b21e0ef1707ada7a914baf44f9045e52` | ⚠️ Unaudited |
| ReceiverTimelockTrigger | unknown | avalanche | n/a | 3 deployments: avalanche [`0x24c3e15bdc10ce2cb1bec56cd43f397ce9b89430`](./contracts/avalanche-43114/0x24c3e15bdc10ce2cb1bec56cd43f397ce9b89430/); avalanche `0x832cb306640dd33542dba08ca1c13dd6686a3a88`; avalanche `0xc2e914f1ebe630335f10e6240a0bf0635a2e9cb7` | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295`](./contracts/ethereum-1/0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295/) | ⚠️ Unaudited |
| RemoteOwner | unknown | optimism | n/a | 4 deployments: optimism [`0x38449a6b7bb76638452273925c9a2ba818bd130d`](./contracts/optimism-10/0x38449a6b7bb76638452273925c9a2ba818bd130d/); optimism `0x3a8f184b0d36541e5a1858ddcb4e581dd58ba06d`; optimism `0x503de67553edce0af5f02abdd980b0fe7cc3bf65`; optimism `0x55fa1cb7ed970a00ca67a30c3f742fb6c9803fde` | ⚠️ Unaudited |
| Reserve | unknown | polygon | n/a | 6 deployments: ethereum `0xadb4d93d84b18b5d82063acf58b21587c92fdfb5`; ethereum `0xdb8e47befe4646fcc62be61eee5df350404c124f`; polygon [`0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295`](./contracts/polygon-137/0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295/); polygon `0xce148f6acfee9fefb42a736b4976e657f35982b8`; avalanche `0x6358f8098b320971a40c0fd0fc7112a2d781be0d`; avalanche `0xf04e5b81e69cdc3c08bc5da64ca053ad46a3d029` | ⚠️ Unaudited |
| RewardLiquidatorFactory | operational_periphery | base | n/a | 6 deployments: ethereum `0xc2aa23f4a3da1b86e71bdc6700202b56066d3e2e`; optimism `0x7f75b9c7f04b02302943b0f08b02eaf2e13d5370`; gnosis `0xd09ca1a19e7c73e229d87dc83883719184426afb`; base [`0x0526e9541a500b554ef318cdc44147f38a40b468`](./contracts/base-8453/0x0526e9541a500b554ef318cdc44147f38a40b468/); base `0x778f1071eab44027f0a76a3d5b73c29ef406a9bf`; arbitrum `0xa030a818f6e9edc2fc294dac15eebfcd9d5ee5f2` | ⚠️ Unaudited |
| RngAuction | unknown | ethereum | n/a | 2 deployments: ethereum [`0x539a76507f18505ca696d618f8a684814c867f41`](./contracts/ethereum-1/0x539a76507f18505ca696d618f8a684814c867f41/); ethereum `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | ⚠️ Unaudited |
| RngAuctionRelayerRemoteOwner | unknown | ethereum | n/a | 2 deployments: ethereum [`0xec9460c59cca1299b0242d6af426c21223cccd24`](./contracts/ethereum-1/0xec9460c59cca1299b0242d6af426c21223cccd24/); ethereum `0xf4c47dacfda99be38793181af9fd1a2ec7576bbf` | ⚠️ Unaudited |
| RngRelayAuction | unknown | optimism | n/a | 4 deployments: optimism [`0x5f6c71b9551c081680a2ef9f9322f88dca7d25a8`](./contracts/optimism-10/0x5f6c71b9551c081680a2ef9f9322f88dca7d25a8/); optimism `0x87d3d9afed1702728b7f280ba5c4b4c55defa557`; optimism `0xb06aebe38cabe0eec4bd741f49e9a4b64ef51b49`; optimism `0xf4c47dacfda99be38793181af9fd1a2ec7576bbf` | ⚠️ Unaudited |
| RngWitnet | unknown | optimism | n/a | 10 deployments: ethereum `0xa1697e8f6b11d0e2f00d9dc8a5aeae2b2665650a`; ethereum `0xf93329e78feff1145fce03a79d5b356588dea215`; optimism [`0x18928a03829a609292133d605ff6007151b9eecb`](./contracts/optimism-10/0x18928a03829a609292133d605ff6007151b9eecb/); optimism `0x3d2ef6c091f7cb69f06ec3117f36a28bc596aa7b`; optimism `0xc3118f33832b9c6a964adc8954e3a7c5b7409923`; gnosis `0x47c9212cc5c0836521346ce9b3d03ca91edf1123`; gnosis `0xcf466582512470fb8faec1216fd43f66015ad5ce`; base `0x74ebf391831c0757b5a4335f2f3abbb1499d18f0`; arbitrum `0xad1b8ec0151f13ba563226092b5f7308d8dc107b`; scroll `0x4d971a28bb23c6354f7cf1f4666c34b00e94f608` | ⚠️ Unaudited |
| SablierManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0589c7a2b2acb895ff0314a394a6d991a9204444`](./contracts/ethereum-1/0x0589c7a2b2acb895ff0314a394a6d991a9204444/); ethereum `0x17cbf69d3de5c7221ae07cff6296f661bb44122b` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | n/a | [`0xf9af83fc41e0cc2af2fba93644d542df6ea0f2b7`](./contracts/scroll-534352/0xf9af83fc41e0cc2af2fba93644d542df6ea0f2b7/) | ⚠️ Unaudited |
| SingleRandomWinnerBuilder | unknown | ethereum | n/a | [`0xa6358441f68ed4707e1c4366a0d2e2233bb4841d`](./contracts/ethereum-1/0xa6358441f68ed4707e1c4366a0d2e2233bb4841d/) | ⚠️ Unaudited |
| SingleRandomWinnerProxyFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6c7330466ae67d1eda70bf3ad50a75e8a269e51f`](./contracts/ethereum-1/0x6c7330466ae67d1eda70bf3ad50a75e8a269e51f/); ethereum `0xba49b45bc5f7e3f23b5d994082038c836895adfd`; ethereum `0xc79b5d46f010c88f738a00b3bed7757d04dd2a37` | ⚠️ Unaudited |
| SponsorshipVaultFactory | unknown | base | n/a | [`0x015caa3d12755ac9aac1f7ebebf40b0da8f03ef3`](./contracts/base-8453/0x015caa3d12755ac9aac1f7ebebf40b0da8f03ef3/) | ⚠️ Unaudited |
| StakePrizePoolBuilder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6dc7ca9e2c19da475b39cce7437994c1725d85c9`](./contracts/ethereum-1/0x6dc7ca9e2c19da475b39cce7437994c1725d85c9/); ethereum `0xf4660841400ffe067c7172934f31b43e0cbe359f` | ⚠️ Unaudited |
| StakePrizePoolProxyFactory | unknown | ethereum | n/a | 7 deployments: ethereum [`0x166f6240a5560a34352b054468deb85042c85142`](./contracts/ethereum-1/0x166f6240a5560a34352b054468deb85042c85142/); ethereum `0x259d46f1559e4d41faf61d858b4b439d3962fc57`; ethereum `0x3b694ce9d12f0bf032bf002b3b0473cb58bbe3f0`; ethereum `0x5ae75894efcc1f8340b58d0efb3d59bf366b6a4e`; ethereum `0x91817512578e22d4ab2a70683280bfbe11c504b4`; polygon `0x97762742aea8cc2c54c368aacb9e1bf8aad8f17b`; polygon `0xafcea072bcbad91029a2ba0b37bac8269dd4f5e6` | ⚠️ Unaudited |
| StakingVault | unknown | optimism | n/a | 6 deployments: ethereum `0x68a100a3729fc04ab26fb4c0862df22ceec2f18b`; ethereum `0x7c1aca6f110db0246e859c2bd47d2eb78b489969`; optimism [`0x2c30004ec09e731dffcd5783569fb2e09c473732`](./contracts/optimism-10/0x2c30004ec09e731dffcd5783569fb2e09c473732/); gnosis `0x9ef19fc007b7fb0b0d378b9899b4b33c200ef172`; base `0x854f3d91e53d0fc9dba9822bc74f574c7380436d`; arbitrum `0xf59e484934b64121a698b17bef386d443554da1f` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xcf934e2402a5e072928a39a956964eb8f2b5b79c`](./contracts/arbitrum-42161/0xcf934e2402a5e072928a39a956964eb8f2b5b79c/) | ⚠️ Unaudited |
| Ticket | unknown | polygon | n/a | 4 deployments: ethereum `0xdd4d117723c257cee402285d3acf218e9a8236e1`; polygon [`0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076`](./contracts/polygon-137/0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076/); avalanche `0x9edc7007b0803a0ec913d575ce1a3a85a9b8bde6`; avalanche `0xb27f379c050f6ed0973a01667458af6ecebc1d90` | ⚠️ Unaudited |
| TicketProxyFactory | unknown | polygon | n/a | 7 deployments: ethereum `0x59b34c5bc94e2d5b9dcb97ec935c94c353e5eb94`; ethereum `0x67581cc48320d7ab4eba57e26d05d665a0ff31db`; ethereum `0x8bb5af6f10391cdbfb4c6f141a8b31a55b3411b5`; ethereum `0xa7d0d3c4f96bb896e0878ef4b83e5ca79700acb9`; polygon [`0x259d46f1559e4d41faf61d858b4b439d3962fc57`](./contracts/polygon-137/0x259d46f1559e4d41faf61d858b4b439d3962fc57/); polygon `0x58af4554c0db496efdf93bb344ec513c5627efb9`; polygon `0xd08a60b0a41a1282efcceef13ce187f848549170` | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x42cd8312d2bce04277dd5161832460e95b24262e`](./contracts/ethereum-1/0x42cd8312d2bce04277dd5161832460e95b24262e/) | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | unknown | optimism | n/a | 7 deployments: ethereum `0x43069a907a69ab1f66b1f8417ddc790346920323`; ethereum `0xa99b3a8503260ab32753c382eac297acd4a43908`; optimism [`0x0796be5c62669aadd8e1a41645344ebe51e7f668`](./contracts/optimism-10/0x0796be5c62669aadd8e1a41645344ebe51e7f668/); optimism `0x80f86691632d9863e6bcaa472e5c34574f77c7d1`; gnosis `0xbddd23fdd9fe824d58814ca6d898af518676368a`; base `0x8557a9a33b573dc4403708c5a8746a52648374ea`; arbitrum `0x163402522fc0c0a7863479a069a8470fb22dfd3f` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | gnosis | n/a | 8 deployments: ethereum `0x6cb52020204a526c2a86998b8dc3b0b4fac9fbc1`; ethereum `0x7c210be12bcef8090610914189a0de43e2192ea0`; optimism `0x7766b5e6839a1a218fc861b0810c504490876136`; optimism `0xe2d27ceed889da6d30eaf6723a0b6e5770d96bae`; gnosis [`0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9`](./contracts/gnosis-100/0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9/); base `0xa9c937a0d1d22ad79099aea10efa62a270dfc22c`; arbitrum `0x7b4a60964994422bf19ae48a90fbff806767db73`; scroll `0x6f0b0ad2047f349594c8755ac080de9288d6ef7b` | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x21950e281bde1714ffd1062ed17c56d4d8de2359`](./contracts/ethereum-1/0x21950e281bde1714ffd1062ed17c56d4d8de2359/) | ⚠️ Unaudited |
| TwabController | unknown | optimism | n/a | 13 deployments: ethereum `0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc`; ethereum `0xf4cfa53df258d78aad153ac11c644703651983f5`; optimism [`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`](./contracts/optimism-10/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/); optimism `0x499a9f249ec4c8ea190bebbfd96f9a83bf4f6e52`; optimism `0x5e5e492c502fce1726be4801c62972f32ae2c55e`; optimism `0x71c75563be4aa95b186c383e1446754f89795ff6`; optimism `0x7deef0fdab8ffd8ab7568a13abda37ccf31f9038`; optimism `0xb9397506712f1177bffcb124cda250d24fa8f206`; optimism `0xcb0672de558ad8f122c0e081f0d35480ab3be167`; gnosis `0x6563996aa856649dbf1326490d2ec0c0627d7060`; gnosis `0x84090aea5370565b88108c4ffed378672a8afde6`; base `0x7e63601f7e28c758feccf8cdf02f6598694f44c6`; arbitrum `0x971ecc4e75c5fcfd8fc3eadc8f0c900b5914dc75` | ⚠️ Unaudited |
| TwabDelegator | unknown | base | n/a | 16 deployments: optimism `0x3989cbc1fb0eb278601c018ed7627b07be9de4cb`; optimism `0x49148543034f9ba3005c1d40ca9e6ffaf20b42c6`; optimism `0x49e8e9b415d05adccd64344bf85573813747bfa5`; optimism `0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc`; optimism `0x5c2f7fa8a4de39e65ca546b63c472865abaa600b`; optimism `0x9cbbde93886d231005dcb1c524c89be3302b80b1`; optimism `0xa7da697214eda2383f41dba60c8d559fa166c52e`; optimism `0xf93329e78feff1145fce03a79d5b356588dea215`; base [`0x214a21bccf9acce40a65e2223e8e73bdffd6ce5e`](./contracts/base-8453/0x214a21bccf9acce40a65e2223e8e73bdffd6ce5e/); base `0x9678d0bfbe0f940e0ac0cac52fea506f838b801a`; base `0x9f925ace48e92089e77873af2c00ea0236d64418`; base `0xb6ec5f64058e37ff4871ca76deae3b8f624181cd`; base `0xf40fe4607b32733896fb3dd89b0602f90623c937`; arbitrum `0xb8e2fabda03b0ca3b5de5a5f4eec3fabdb3f6dda`; arbitrum `0xdd734d67d050733b3b45430ef25f82573d0e3ce6`; arbitrum `0xe2f1196ac8105443668acc9af7be338836bfb73d` | ⚠️ Unaudited |
| TwabRewards | unknown | scroll | n/a | 11 deployments: ethereum `0x2589ff8614f74704741ee3b51851b4ae812f1a21`; ethereum `0x3cb049db6d3e100b8b4765ca051c809adcc17ed1`; ethereum `0xa469deff6d52c9571d13513e3cd7d94496082d81`; ethereum `0xe7934ee0c8b877269a5688ee26dd853785212618`; optimism `0x27ed5760edc0128e3043f6cc0c3428e337396a66`; optimism `0x90d383dea4dce52d3e5d3c93de75ef36da3ea9ea`; optimism `0xefb96e28205360c1fa1d2158f7d02fe3c7749f99`; gnosis `0x1742157e6ef6e0cf7e49904f2c0d0fe38a276942`; base `0x86f0923d20810441efc593eb0f2825c6bff2dc09`; arbitrum `0xe21ac38a7e80104c4f6512ce4908a22bc09c59be`; scroll [`0x0e71a9a2bd4546e7fc2af47a015747daeb48780d`](./contracts/scroll-534352/0x0e71a9a2bd4546e7fc2af47a015747daeb48780d/) | ⚠️ Unaudited |
| UnsafeTokenListenerDelegatorProxyFactory | unknown | ethereum | n/a | [`0xd952003a0e4b6a63507dc7c0889e841d6bddb1ba`](./contracts/ethereum-1/0xd952003a0e4b6a63507dc7c0889e841d6bddb1ba/) | ⚠️ Unaudited |
| Vault | core_logic | optimism | n/a | 3 deployments: optimism [`0x29cb69d4780b53c1e5cd4d2b817142d2e9890715`](./contracts/optimism-10/0x29cb69d4780b53c1e5cd4d2b817142d2e9890715/); optimism `0x31515cfc4550d9c83e2d86e8a352886d1364e2d9`; optimism `0xe3b3a464ee575e8e25d2508918383b89c832f275` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | base | n/a | 13 deployments: ethereum `0x25d6927cbe94323ec88b8c60ecd57f3002850004`; ethereum `0x31ec883727af3b9eb87b815550b0e33498f483e8`; ethereum `0x36be31e7acd4b0d755bcc7858ef04848a3ec66c6`; optimism `0x17b9d77a393f2aa311e5ef08b73f3239b7f66837`; optimism `0x43069a907a69ab1f66b1f8417ddc790346920323`; optimism `0x7746a79332df154e29c5b105c4d6bae61e71dada`; optimism `0x858029ed93b97d9015a63a5cc63e5872ee67f88c`; gnosis `0x8cfffffa42407db9dcb974c2c744425c3e58d832`; gnosis `0xc9f124901c1acfd254db4177dfc76c72c01c4a78`; base [`0x02d37f2654b4161801c8d7369b43a8762a31530e`](./contracts/base-8453/0x02d37f2654b4161801c8d7369b43a8762a31530e/); base `0xa2ba3d22e2469bc0b46d57145d4bd212d3550ec2`; arbitrum `0x574257f5601115b9bec90a64a056107b030b449e`; arbitrum `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | ⚠️ Unaudited |
| VaultFactory | unknown | optimism | n/a | 2 deployments: optimism [`0xa469deff6d52c9571d13513e3cd7d94496082d81`](./contracts/optimism-10/0xa469deff6d52c9571d13513e3cd7d94496082d81/); optimism `0xf65fa202907d6046d1ef33c521889b54bde08081` | ⚠️ Unaudited |
| VaultFactoryV2 | unknown | optimism | n/a | [`0x6b17ee3a95bccd605340454c5919e693ef8eff0e`](./contracts/optimism-10/0x6b17ee3a95bccd605340454c5919e693ef8eff0e/) | ⚠️ Unaudited |
| VaultPrizePoolBuilder | unknown | ethereum | n/a | [`0x1469c3c2f8cbacafced0a271711e3491700b4f5d`](./contracts/ethereum-1/0x1469c3c2f8cbacafced0a271711e3491700b4f5d/) | ⚠️ Unaudited |
| VaultV2 | core_logic | optimism | n/a | [`0xf0b19f02c63d51b69563a2b675e0160e1c34397c`](./contracts/optimism-10/0xf0b19f02c63d51b69563a2b675e0160e1c34397c/) | ⚠️ Unaudited |
| YieldSourcePrizePool | core_logic | polygon | n/a | 5 deployments: ethereum `0xd89a09084555a7d0abe7b111b1f78dfeddd638be`; polygon [`0x19de635fb3678d8b8154e37d8c9cdf182fe84e60`](./contracts/polygon-137/0x19de635fb3678d8b8154e37d8c9cdf182fe84e60/); polygon `0x887e17d791dcb44bfdda3023d26f7a04ca9c7ef4`; polygon `0xee06abe9e2af61cabcb13170e01266af2defa946`; avalanche `0xf830f5cb2422d555ec34178e27094a816c8f95ec` | ⚠️ Unaudited |
| YieldSourcePrizePoolProxyFactory | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0835c8c4ab282b5dbf06d59e1489ef17f1c40d96`](./contracts/ethereum-1/0x0835c8c4ab282b5dbf06d59e1489ef17f1c40d96/); ethereum `0x4a8fa50b10ac2221d5767ab3f05ff7011a46d500`; ethereum `0x692f55051dc060d94227467ee4fbde72d370728c`; ethereum `0xe3325f8c5e88a57d787214ea8c001763c1ce99da`; polygon `0x447838a9a11f7190c9f7e65c43be685cd8109962`; polygon `0x4d1639e4b237bcab6f908a1ceb0995716d5ebe36` | ⚠️ Unaudited |
| yVaultPrizePoolBuilder | unknown | ethereum | n/a | [`0xef3d36a282e74b5bcba8a45262687ddb31495cd2`](./contracts/ethereum-1/0xef3d36a282e74b5bcba8a45262687ddb31495cd2/) | ⚠️ Unaudited |
| yVaultPrizePoolProxyFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3357d3a038006f47ecf05110c7629eff3b24cf5e`](./contracts/ethereum-1/0x3357d3a038006f47ecf05110c7629eff3b24cf5e/); ethereum `0x44c585e76a5da580f59b0a3add7ca0c96bf4fe2a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd0174786d7e9c4b903f7f7768c39dc404a4f8509` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98305eb9a29d45ec93ce44ba02b315b631c675a7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xafcede71e62684de45d423712feeebb83863dfde` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcdccba7e1a211142097378f384cd2c23bf398bdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03e75aeeb92add6f3b168412671360eb94f0dbf7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17cfe08818e8260fae3a19761668ebc27b24d72a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4027de966127af5f015ea1cfd6293a3583892668` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44c585e76a5da580f59b0a3add7ca0c96bf4fe2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6dc7ca9e2c19da475b39cce7437994c1725d85c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6358441f68ed4707e1c4366a0d2e2233bb4841d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6d1c81a07c080d11a39f151e0ae69543a20e6e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1d89477d1b505c261bab6e73f08fa834544cd21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc79b5d46f010c88f738a00b3bed7757d04dd2a37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb876f60399897db24058b2d58d0b9f713175eef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd8f31f7b9c6026311464bc07ae5db2f99f3892e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1d06d492107f14ae024c357005c5c692158b13d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef2d0b09f8b12179175e303546faab21b65b713e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37a7add22e0da57220cef887a75cbfa959f34784` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x23dbacc4e588fadc2d3eed3d1eddb8daa57714ba` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x26f05095a371e0e4f399391d708643a5779be537` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x2a0344125984cb8da4caaa479db3e789c927669b` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x3f21b29dbcde83908bc08b6bb4fb427afbf2e57c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x47d5000bf232d5903a75f89df3e64c8664af5b81` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x4ea44ec3d075499bee27f801a9405bb4701f8c83` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x50f36a5e6e62e5e46bb8ed553bcecde9d1f4d42c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x64dc7544c0da701cdf74abf4937bed7f6abb9386` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x66c2aa89cff8252f2b7c42c169cf2495d82005b6` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6b0877bcb4720f094bc13187f5e16bdbf730693a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6ce4c59d94024e4b5b4f3e6e77cbb41540d3a56d` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6d73bfb022b811c98ebec8e8666273baed005579` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6f36db785ae66c6072883015a375d76341e36d11` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6f720053319f89c9670234989a5bd807a37d1792` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x7026b77376547ba7961c16a4a05edae070abec47` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x7275901c394fb5bc6b52b9a039a751b22322c7dc` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x7b469054cb082487c88f1114755d0dbdc88b2bfc` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x89db94bdf64edad2b04f1e031b8354f7917ce58f` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x8a37953461696882e728019ef77e3b84e0ece952` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xa15316214d52d907712d751987d4593972cf3b8b` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xb0e5bc69065ef1078fd641ae6a0860441e9e21e4` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xbc5b4d95c21afa808e4954e8cae1c8afe2202b1d` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xc024e95cf6bb2efc424c9035db4647a12d8dcac9` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xccaac4ee88ac1939aebc8b5c64b25550361ff5dd` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xd017a6a48ea195adb4d09f7cae0815382f46b314` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xdf0445868401a0eb1da422ead439cf87d365b88f` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xe51dce3d6f46ab078f6994e39b0839238284c8e0` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xed7497bb13f527f3a7306c4b5c721993b98e386c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xefdff129414e7e7ea5223c69cb71ced17f5658ac` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xfc2ba55cfd10c872d0adb5e6ed3018ad999e6295` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xfe2402c48cea2a8a115a1555129046c48a59f835` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audits.md](https://github.com/pooltogether/user-docs/blob/main/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bug-bounties.md](https://github.com/pooltogether/user-docs/blob/main/security/bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 4 | low |
| [README.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [protocol-coverage.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/protocol-coverage.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbcca60bb61934080951369a648fb03df4f96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1a13f4ca1d028320a707d99520abfefca3998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x46a51127c3ce23fb7ab1de06226147f446e4a857`](./contracts/avalanche-43114/0x46a51127c3ce23fb7ab1de06226147f446e4a857/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b5a1dc536d5a67c66d00b337e6b189385bd8438`](./contracts/optimism-10/0x0b5a1dc536d5a67c66d00b337e6b189385bd8438/) | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x22e3857db02c4db38870dddc286d0543869ea47e`](./contracts/gnosis-100/0x22e3857db02c4db38870dddc286d0543869ea47e/) | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4027de966127af5f015ea1cfd6293a3583892668`](./contracts/ethereum-1/0x4027de966127af5f015ea1cfd6293a3583892668/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03e75aeeb92add6f3b168412671360eb94f0dbf7`](./contracts/ethereum-1/0x03e75aeeb92add6f3b168412671360eb94f0dbf7/) | ControlledTokenBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08411add0b5aa8ee47563b146743c13b3556c9cc`](./contracts/polygon-137/0x08411add0b5aa8ee47563b146743c13b3556c9cc/) | ControlledTokenProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe34def1114d7bb0298636a2026d9cf3d67f19fbd`](./contracts/optimism-10/0xe34def1114d7bb0298636a2026d9cf3d67f19fbd/) | DailyDoubleHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x363b7a1567af0dbf06642c4028779c3f3365b516`](./contracts/optimism-10/0x363b7a1567af0dbf06642c4028779c3f3365b516/) | DirectContributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d33612870cd9a475bbbbb7cc38fc66680decac5`](./contracts/ethereum-1/0x0d33612870cd9a475bbbbb7cc38fc66680decac5/) | DrawBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f5f5ef16465371152fc46c72d06fb0ec9392a47`](./contracts/avalanche-43114/0x0f5f5ef16465371152fc46c72d06fb0ec9392a47/) | DrawCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01ee1ea692773f28c45d63133426f21923c3c2ba`](./contracts/avalanche-43114/0x01ee1ea692773f28c45d63133426f21923c3c2ba/) | DrawCalculatorTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac4ff319adac4c7d109f4024a33328088370a064`](./contracts/ethereum-1/0xac4ff319adac4c7d109f4024a33328088370a064/) | DrawDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa9e2e0b37fb54c19e45cb246b17b0e700ab98d`](./contracts/ethereum-1/0x0aa9e2e0b37fb54c19e45cb246b17b0e700ab98d/) | DrawManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e869b3a0978fa61dabd7da8f9b272aadc745fb3`](./contracts/ethereum-1/0x4e869b3a0978fa61dabd7da8f9b272aadc745fb3/) | ERC721ControlledFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4`](./contracts/base-8453/0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4/) | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5`](./contracts/optimism-10/0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5/) | FireFighterClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1dcfb8b47c2f05ce86c21580c167485de1202e12`](./contracts/arbitrum-42161/0x1dcfb8b47c2f05ce86c21580c167485de1202e12/) | GpBoostHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc90a79fcb1dbad5f05e6c264f84ac4b0d351f94`](./contracts/ethereum-1/0xdc90a79fcb1dbad5f05e6c264f84ac4b0d351f94/) | L1TimelockTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x395ae52bb17aef68c2888d941736a71dc6d4e125`](./contracts/optimism-10/0x395ae52bb17aef68c2888d941736a71dc6d4e125/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc366bf1a054ca495c09b1a722d863ac65746138e`](./contracts/polygon-137/0xc366bf1a054ca495c09b1a722d863ac65746138e/) | L2TimelockTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853`](./contracts/optimism-10/0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853/) | LiquidationPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x555bd8fc65e57139c9f405980c7a9526a7de8093`](./contracts/optimism-10/0x555bd8fc65e57139c9f405980c7a9526a7de8093/) | LiquidationPairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95`](./contracts/optimism-10/0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95/) | LiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2a966b7f5448a36ec9f896088dfb99b21d8a24`](./contracts/ethereum-1/0x2c2a966b7f5448a36ec9f896088dfb99b21d8a24/) | LootBoxController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e6a78d93d2935a638fdbd684e7b39565d0b7ea`](./contracts/ethereum-1/0x25e6a78d93d2935a638fdbd684e7b39565d0b7ea/) | LootBoxPrizeStrategyListenerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe1a33519f586a4c8aa37525163df8d67997016f`](./contracts/ethereum-1/0xbe1a33519f586a4c8aa37525163df8d67997016f/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f61a36e1327036e5e416d52ff0f4b5c9efaaa3`](./contracts/ethereum-1/0x10f61a36e1327036e5e416d52ff0f4b5c9efaaa3/) | MultipleWinnersBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cb2f953f85b3ffdc97269f5cef6a4fcc0ca4d73`](./contracts/ethereum-1/0x4cb2f953f85b3ffdc97269f5cef6a4fcc0ca4d73/) | MultipleWinnersProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26158db2448a5eccf6107d7494330e96404398c1`](./contracts/base-8453/0x26158db2448a5eccf6107d7494330e96404398c1/) | NftChanceBoosterHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd652c5425aea2afd5fb142e120fecf79e18fafc3`](./contracts/base-8453/0xd652c5425aea2afd5fb142e120fecf79e18fafc3/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x216a7d520992ed198593a16e0b17c784c9cdc660`](./contracts/gnosis-100/0x216a7d520992ed198593a16e0b17c784c9cdc660/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cec1a9154ff802e7934fc916ed7ca50bde6844e`](./contracts/ethereum-1/0x0cec1a9154ff802e7934fc916ed7ca50bde6844e/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39e2f33ff4ad3491106b3bb15dc66ebe24e4e9c7`](./contracts/ethereum-1/0x39e2f33ff4ad3491106b3bb15dc66ebe24e4e9c7/) | PoolWithMultipleWinnersBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3545192b340f50d77403dc0a64cf2b32f03d00a9`](./contracts/ethereum-1/0x3545192b340f50d77403dc0a64cf2b32f03d00a9/) | PoolyNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x239fc7c69ba8079ebec07156f13a6d78d234fa6b`](./contracts/ethereum-1/0x239fc7c69ba8079ebec07156f13a6d78d234fa6b/) | PrizeChunker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x748f6d44590c4c37a1ce54a41fb7a3c6defa563b`](./contracts/avalanche-43114/0x748f6d44590c4c37a1ce54a41fb7a3c6defa563b/) | PrizeDistributionBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x13bef52354cf4036d7d522c147955a1ed2576e33`](./contracts/avalanche-43114/0x13bef52354cf4036d7d522c147955a1ed2576e33/) | PrizeDistributionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x032ba44eb2db607d2f9424b90e191bbfb51152a1`](./contracts/ethereum-1/0x032ba44eb2db607d2f9424b90e191bbfb51152a1/) | PrizeDistributionFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8141bcfbcee654c5de17c4e2b2af26b67f9b9056`](./contracts/polygon-137/0x8141bcfbcee654c5de17c4e2b2af26b67f9b9056/) | PrizeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0c08c2999e1a14569554eddbcda9da5e1918120f`](./contracts/gnosis-100/0x0c08c2999e1a14569554eddbcda9da5e1918120f/) | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`](./contracts/gnosis-100/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/) | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47a5abfacdebf5af312b034b3b748935a0259136`](./contracts/ethereum-1/0x47a5abfacdebf5af312b034b3b748935a0259136/) | PrizeSplitStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x48492f83d9e1d848d33a461d49a2071a6fdcc037`](./contracts/base-8453/0x48492f83d9e1d848d33a461d49a2071a6fdcc037/) | PrizeStakingVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x51d72281ed1d149ccbd7f290d3431c1d831f52c4`](./contracts/avalanche-43114/0x51d72281ed1d149ccbd7f290d3431c1d831f52c4/) | PrizeTierHistory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63c82be45399b5ca6041a3b6aac0f326614c8aaa`](./contracts/ethereum-1/0x63c82be45399b5ca6041a3b6aac0f326614c8aaa/) | PrizeTierHistoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b`](./contracts/scroll-534352/0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b/) | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0c379e9b71ba7079084ada0d1c1aeb85d24dfd39`](./contracts/optimism-10/0x0c379e9b71ba7079084ada0d1c1aeb85d24dfd39/) | PrizeVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x24c3e15bdc10ce2cb1bec56cd43f397ce9b89430`](./contracts/avalanche-43114/0x24c3e15bdc10ce2cb1bec56cd43f397ce9b89430/) | ReceiverTimelockTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295`](./contracts/ethereum-1/0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x38449a6b7bb76638452273925c9a2ba818bd130d`](./contracts/optimism-10/0x38449a6b7bb76638452273925c9a2ba818bd130d/) | RemoteOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295`](./contracts/polygon-137/0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295/) | Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0526e9541a500b554ef318cdc44147f38a40b468`](./contracts/base-8453/0x0526e9541a500b554ef318cdc44147f38a40b468/) | RewardLiquidatorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x539a76507f18505ca696d618f8a684814c867f41`](./contracts/ethereum-1/0x539a76507f18505ca696d618f8a684814c867f41/) | RngAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec9460c59cca1299b0242d6af426c21223cccd24`](./contracts/ethereum-1/0xec9460c59cca1299b0242d6af426c21223cccd24/) | RngAuctionRelayerRemoteOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5f6c71b9551c081680a2ef9f9322f88dca7d25a8`](./contracts/optimism-10/0x5f6c71b9551c081680a2ef9f9322f88dca7d25a8/) | RngRelayAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x18928a03829a609292133d605ff6007151b9eecb`](./contracts/optimism-10/0x18928a03829a609292133d605ff6007151b9eecb/) | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0589c7a2b2acb895ff0314a394a6d991a9204444`](./contracts/ethereum-1/0x0589c7a2b2acb895ff0314a394a6d991a9204444/) | SablierManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6358441f68ed4707e1c4366a0d2e2233bb4841d`](./contracts/ethereum-1/0xa6358441f68ed4707e1c4366a0d2e2233bb4841d/) | SingleRandomWinnerBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c7330466ae67d1eda70bf3ad50a75e8a269e51f`](./contracts/ethereum-1/0x6c7330466ae67d1eda70bf3ad50a75e8a269e51f/) | SingleRandomWinnerProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x015caa3d12755ac9aac1f7ebebf40b0da8f03ef3`](./contracts/base-8453/0x015caa3d12755ac9aac1f7ebebf40b0da8f03ef3/) | SponsorshipVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dc7ca9e2c19da475b39cce7437994c1725d85c9`](./contracts/ethereum-1/0x6dc7ca9e2c19da475b39cce7437994c1725d85c9/) | StakePrizePoolBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x166f6240a5560a34352b054468deb85042c85142`](./contracts/ethereum-1/0x166f6240a5560a34352b054468deb85042c85142/) | StakePrizePoolProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2c30004ec09e731dffcd5783569fb2e09c473732`](./contracts/optimism-10/0x2c30004ec09e731dffcd5783569fb2e09c473732/) | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcf934e2402a5e072928a39a956964eb8f2b5b79c`](./contracts/arbitrum-42161/0xcf934e2402a5e072928a39a956964eb8f2b5b79c/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076`](./contracts/polygon-137/0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076/) | Ticket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x259d46f1559e4d41faf61d858b4b439d3962fc57`](./contracts/polygon-137/0x259d46f1559e4d41faf61d858b4b439d3962fc57/) | TicketProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42cd8312d2bce04277dd5161832460e95b24262e`](./contracts/ethereum-1/0x42cd8312d2bce04277dd5161832460e95b24262e/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0796be5c62669aadd8e1a41645344ebe51e7f668`](./contracts/optimism-10/0x0796be5c62669aadd8e1a41645344ebe51e7f668/) | TpdaLiquidationPairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9`](./contracts/gnosis-100/0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9/) | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21950e281bde1714ffd1062ed17c56d4d8de2359`](./contracts/ethereum-1/0x21950e281bde1714ffd1062ed17c56d4d8de2359/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`](./contracts/optimism-10/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/) | TwabController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x214a21bccf9acce40a65e2223e8e73bdffd6ce5e`](./contracts/base-8453/0x214a21bccf9acce40a65e2223e8e73bdffd6ce5e/) | TwabDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x0e71a9a2bd4546e7fc2af47a015747daeb48780d`](./contracts/scroll-534352/0x0e71a9a2bd4546e7fc2af47a015747daeb48780d/) | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd952003a0e4b6a63507dc7c0889e841d6bddb1ba`](./contracts/ethereum-1/0xd952003a0e4b6a63507dc7c0889e841d6bddb1ba/) | UnsafeTokenListenerDelegatorProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x29cb69d4780b53c1e5cd4d2b817142d2e9890715`](./contracts/optimism-10/0x29cb69d4780b53c1e5cd4d2b817142d2e9890715/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02d37f2654b4161801c8d7369b43a8762a31530e`](./contracts/base-8453/0x02d37f2654b4161801c8d7369b43a8762a31530e/) | VaultBoosterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa469deff6d52c9571d13513e3cd7d94496082d81`](./contracts/optimism-10/0xa469deff6d52c9571d13513e3cd7d94496082d81/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6b17ee3a95bccd605340454c5919e693ef8eff0e`](./contracts/optimism-10/0x6b17ee3a95bccd605340454c5919e693ef8eff0e/) | VaultFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1469c3c2f8cbacafced0a271711e3491700b4f5d`](./contracts/ethereum-1/0x1469c3c2f8cbacafced0a271711e3491700b4f5d/) | VaultPrizePoolBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf0b19f02c63d51b69563a2b675e0160e1c34397c`](./contracts/optimism-10/0xf0b19f02c63d51b69563a2b675e0160e1c34397c/) | VaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x19de635fb3678d8b8154e37d8c9cdf182fe84e60`](./contracts/polygon-137/0x19de635fb3678d8b8154e37d8c9cdf182fe84e60/) | YieldSourcePrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0835c8c4ab282b5dbf06d59e1489ef17f1c40d96`](./contracts/ethereum-1/0x0835c8c4ab282b5dbf06d59e1489ef17f1c40d96/) | YieldSourcePrizePoolProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef3d36a282e74b5bcba8a45262687ddb31495cd2`](./contracts/ethereum-1/0xef3d36a282e74b5bcba8a45262687ddb31495cd2/) | yVaultPrizePoolBuilder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3357d3a038006f47ecf05110c7629eff3b24cf5e`](./contracts/ethereum-1/0x3357d3a038006f47ecf05110c7629eff3b24cf5e/) | yVaultPrizePoolProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=4

Zero-match audit list:

- [7597] audits.md
- [7599] README.md
- [7600] protocol-coverage.md

Fork inheritance lineage and inherited audits are included when available.
