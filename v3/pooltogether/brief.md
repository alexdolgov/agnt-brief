# Agentic Audit Brief: PoolTogether

## Project Overview

- Project: PoolTogether (`pooltogether`)
- Website: [https://pooltogether.com/](https://pooltogether.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.964Z
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

- Coverage of deployed-live implementations: 1/88 (1.1%)
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
| PermitAndDepositDai | unknown | ethereum | n/a | 4 deployments: ethereum [`0x71fc2e...f8a70c`](./contracts/ethereum-1/0x71fc2e52d426c852e06172c3a00180d5e9f8a70c/); ethereum `0x8a4416...0087b2`; ethereum `0xdcc0d0...8f65a0`; ethereum `0xe539c8...02fbff` | ✅ Audited |

### ⚠️ Verified + Unaudited (88)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3ERC4626 | unknown | optimism | n/a | 2 deployments: optimism [`0x964356...afe307`](./contracts/optimism-10/0x964356cecf4f4679cab76d969c043fcccaafe307/); optimism `0xdc1056...c6f3c9` | ⚠️ Unaudited |
| AToken | token | ethereum | n/a | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| AToken | token | polygon | n/a | [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| AToken | token | avalanche | n/a | [`0x46a511...e4a857`](./contracts/avalanche-43114/0x46a51127c3ce23fb7ab1de06226147f446e4a857/) | ⚠️ Unaudited |
| Claimer | operational_periphery | optimism | n/a | 11 deployments: ethereum `0x54aa02...126c7d`; optimism [`0x0b5a1d...bd8438`](./contracts/optimism-10/0x0b5a1dc536d5a67c66d00b337e6b189385bd8438/); optimism `0x220c93...3b8d90`; optimism `0x2589ff...2f1a21`; optimism `0x47b557...625f70`; gnosis `0x0cffb7...b0bbfa`; base `0x5ffeee...5e1e87`; base `0xcdce63...5547ba`; arbitrum `0x1e68e5...23e571`; arbitrum `0xbea383...317c73`; scroll `0xb04d5c...f00285` | ⚠️ Unaudited |
| ClaimerFactory | unknown | gnosis | n/a | 13 deployments: ethereum `0x445702...6a7088`; ethereum `0x7a856d...6b152d`; ethereum `0xd84c4c...679e80`; optimism `0x34a146...e2aa8c`; optimism `0x498c92...3f4794`; optimism `0x94f51a...779cc3`; optimism `0xcfedfb...d9e923`; optimism `0xef366c...64605f`; gnosis [`0x22e385...9ea47e`](./contracts/gnosis-100/0x22e3857db02c4db38870dddc286d0543869ea47e/); base `0x804657...21c63c`; base `0xd58a04...1401e3`; arbitrum `0x64e77e...4de554`; arbitrum `0xc4824b...0757da` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x4027de...892668`](./contracts/ethereum-1/0x4027de966127af5f015ea1cfd6293a3583892668/) | ⚠️ Unaudited |
| ControlledTokenBuilder | unknown | ethereum | n/a | 7 deployments: ethereum [`0x03e75a...f0dbf7`](./contracts/ethereum-1/0x03e75aeeb92add6f3b168412671360eb94f0dbf7/); ethereum `0x3e3a09...543c53`; ethereum `0xaf0063...57f11d`; ethereum `0xf5ff8c...ad59cc`; polygon `0x317625...4277f7`; polygon `0x42ad7b...48fb4d`; polygon `0xef3d36...495cd2` | ⚠️ Unaudited |
| ControlledTokenProxyFactory | unknown | polygon | n/a | 7 deployments: ethereum `0x97cbd3...fc70c7`; ethereum `0xa743f8...0ce727`; ethereum `0xdd8f31...f3892e`; ethereum `0xfb932b...d69ba1`; polygon [`0x08411a...56c9cc`](./contracts/polygon-137/0x08411add0b5aa8ee47563b146743c13b3556c9cc/); polygon `0x59b34c...e5eb94`; polygon `0xaa4e28...2dc4f9` | ⚠️ Unaudited |
| DailyDoubleHook | unknown | optimism | n/a | [`0xe34def...f19fbd`](./contracts/optimism-10/0xe34def1114d7bb0298636a2026d9cf3d67f19fbd/) | ⚠️ Unaudited |
| DirectContributor | unknown | optimism | n/a | 3 deployments: optimism [`0x363b7a...65b516`](./contracts/optimism-10/0x363b7a1567af0dbf06642c4028779c3f3365b516/); base `0x663dc6...85fbfe`; arbitrum `0x9527b4...999a54` | ⚠️ Unaudited |
| DrawBeacon | unknown | ethereum | n/a | [`0x0d3361...decac5`](./contracts/ethereum-1/0x0d33612870cd9a475bbbbb7cc38fc66680decac5/) | ⚠️ Unaudited |
| DrawCalculator | unknown | avalanche | n/a | 4 deployments: ethereum `0x14d067...292730`; polygon `0x3976bd...839a24`; avalanche [`0x0f5f5e...392a47`](./contracts/avalanche-43114/0x0f5f5ef16465371152fc46c72d06fb0ec9392a47/); avalanche `0x577488...cd45f0` | ⚠️ Unaudited |
| DrawCalculatorTimelock | unknown | avalanche | n/a | 5 deployments: ethereum `0x6ab2c4...261c15`; polygon `0x676a54...9c7484`; avalanche [`0x01ee1e...c3c2ba`](./contracts/avalanche-43114/0x01ee1ea692773f28c45d63133426f21923c3c2ba/); avalanche `0x3fb69b...f95335`; avalanche `0xf1f789...35141c` | ⚠️ Unaudited |
| DrawDispatcher | unknown | ethereum | n/a | [`0xac4ff3...70a064`](./contracts/ethereum-1/0xac4ff319adac4c7d109f4024a33328088370a064/) | ⚠️ Unaudited |
| DrawManager | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0aa9e2...0ab98d`](./contracts/ethereum-1/0x0aa9e2e0b37fb54c19e45cb246b17b0e700ab98d/); ethereum `0x98305e...c675a7`; optimism `0x7e8e79...4f0940`; optimism `0x7eed74...641857`; gnosis `0x146efc...d09067`; base `0x8a2782...af6ab0`; arbitrum `0xc00146...cd37e6`; scroll `0xa75474...69ddf2` | ⚠️ Unaudited |
| ERC721ControlledFactory | unknown | ethereum | n/a | [`0x4e869b...745fb3`](./contracts/ethereum-1/0x4e869b3a0978fa61dabd7da8f9b272aadc745fb3/) | ⚠️ Unaudited |
| EzDepositor | unknown | base | n/a | 6 deployments: ethereum `0x84882e...1c062f`; optimism `0x68a100...c2f18b`; gnosis `0x69fc80...3c37ef`; base [`0x4e30c0...a996f4`](./contracts/base-8453/0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4/); arbitrum `0x5f9292...4da397`; scroll `0xbdf6bd...8a34c8` | ⚠️ Unaudited |
| FireFighterClaimer | operational_periphery | optimism | n/a | [`0x1a7cf7...8657e5`](./contracts/optimism-10/0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5/) | ⚠️ Unaudited |
| GpBoostHook | unknown | arbitrum | n/a | 5 deployments: ethereum `0x6be9c2...4ab076`; optimism `0xdeef91...d20ba7`; gnosis `0x65f3ae...b1c626`; base `0x327b2e...0a58c6`; arbitrum [`0x1dcfb8...202e12`](./contracts/arbitrum-42161/0x1dcfb8b47c2f05ce86c21580c167485de1202e12/) | ⚠️ Unaudited |
| L1TimelockTrigger | unknown | ethereum | n/a | [`0xdc90a7...351f94`](./contracts/ethereum-1/0xdc90a79fcb1dbad5f05e6c264f84ac4b0d351f94/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x395ae5...d4e125`](./contracts/optimism-10/0x395ae52bb17aef68c2888d941736a71dc6d4e125/) | ⚠️ Unaudited |
| L2TimelockTrigger | unknown | polygon | n/a | [`0xc366bf...46138e`](./contracts/polygon-137/0xc366bf1a054ca495c09b1a722d863ac65746138e/) | ⚠️ Unaudited |
| LiquidationPair | unknown | optimism | n/a | [`0xc14e8c...4de853`](./contracts/optimism-10/0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853/) | ⚠️ Unaudited |
| LiquidationPairFactory | unknown | optimism | n/a | 5 deployments: optimism [`0x555bd8...de8093`](./contracts/optimism-10/0x555bd8fc65e57139c9f405980c7a9526a7de8093/); optimism `0x8aa2a1...9ab1a5`; optimism `0x9428f4...a3158e`; optimism `0xa1697e...65650a`; optimism `0xcb54fc...3b9f6f` | ⚠️ Unaudited |
| LiquidationRouter | adapter | optimism | n/a | 2 deployments: optimism [`0xb9fba7...b68b95`](./contracts/optimism-10/0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95/); optimism `0xf4cfa5...1983f5` | ⚠️ Unaudited |
| LootBoxController | unknown | ethereum | n/a | [`0x2c2a96...1d8a24`](./contracts/ethereum-1/0x2c2a966b7f5448a36ec9f896088dfb99b21d8a24/) | ⚠️ Unaudited |
| LootBoxPrizeStrategyListenerFactory | unknown | ethereum | n/a | [`0x25e6a7...d0b7ea`](./contracts/ethereum-1/0x25e6a78d93d2935a638fdbd684e7b39565d0b7ea/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0xbe1a33...97016f`](./contracts/ethereum-1/0xbe1a33519f586a4c8aa37525163df8d67997016f/) | ⚠️ Unaudited |
| MultipleWinnersBuilder | unknown | ethereum | n/a | 6 deployments: ethereum [`0x10f61a...efaaa3`](./contracts/ethereum-1/0x10f61a36e1327036e5e416d52ff0f4b5c9efaaa3/); ethereum `0x3a1bc6...15446e`; ethereum `0xf438bc...3fc5e5`; ethereum `0xf843d5...014526`; polygon `0x72edd5...5d5f90`; polygon `0xd1a651...2ed5a0` | ⚠️ Unaudited |
| MultipleWinnersProxyFactory | unknown | ethereum | n/a | 6 deployments: ethereum [`0x4cb2f9...ca4d73`](./contracts/ethereum-1/0x4cb2f953f85b3ffdc97269f5cef6a4fcc0ca4d73/); ethereum `0x734e67...f5ae70`; ethereum `0xb789b7...b58475`; ethereum `0xf273ef...1f1522`; polygon `0xdc488e...1401df`; polygon `0xf3317f...d07cc7` | ⚠️ Unaudited |
| NftChanceBoosterHook | unknown | base | n/a | 6 deployments: optimism `0x7f15d9...ab9a95`; base [`0x26158d...4398c1`](./contracts/base-8453/0x26158db2448a5eccf6107d7494330e96404398c1/); base `0x519bdf...f2e299`; base `0x81b743...4ba620`; base `0x83cbc0...daef32`; arbitrum `0x2fb736...039ea9` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xd652c5...8fafc3`](./contracts/base-8453/0xd652c5425aea2afd5fb142e120fecf79e18fafc3/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0x216a7d...cdc660`](./contracts/gnosis-100/0x216a7d520992ed198593a16e0b17c784c9cdc660/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0x0cec1a...e6844e`](./contracts/ethereum-1/0x0cec1a9154ff802e7934fc916ed7ca50bde6844e/) | ⚠️ Unaudited |
| PoolWithMultipleWinnersBuilder | unknown | ethereum | n/a | 8 deployments: ethereum [`0x39e2f3...e4e9c7`](./contracts/ethereum-1/0x39e2f33ff4ad3491106b3bb15dc66ebe24e4e9c7/); ethereum `0x8f2450...3bb27d`; ethereum `0xad1c62...7d2f2d`; ethereum `0xbeb9d5...da1e7a`; ethereum `0xd1e536...77e28c`; ethereum `0xda6481...7f9770`; polygon `0x5effa0...e1f9f4`; polygon `0x920bd7...b86a2c` | ⚠️ Unaudited |
| PoolyNFT | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x354519...3d00a9`](./contracts/ethereum-1/0x3545192b340f50d77403dc0a64cf2b32f03d00a9/); ethereum `0x90b383...56d6ed` | ⚠️ Unaudited |
| PrizeChunker | unknown | ethereum | n/a | 3 deployments: ethereum [`0x239fc7...34fa6b`](./contracts/ethereum-1/0x239fc7c69ba8079ebec07156f13a6d78d234fa6b/); ethereum `0x526396...bcc2fa`; ethereum `0x89bf5a...f16dbd` | ⚠️ Unaudited |
| PrizeDistributionBuffer | unknown | avalanche | n/a | 4 deployments: ethereum `0xf025a8...7c6577`; polygon `0xcf6030...7125a3`; avalanche [`0x748f6d...fa563b`](./contracts/avalanche-43114/0x748f6d44590c4c37a1ce54a41fb7a3c6defa563b/); avalanche `0xc8faa3...77eccb` | ⚠️ Unaudited |
| PrizeDistributionFactory | unknown | avalanche | n/a | 4 deployments: avalanche [`0x13bef5...576e33`](./contracts/avalanche-43114/0x13bef52354cf4036d7d522c147955a1ed2576e33/); avalanche `0x87fcf3...f0dd37`; avalanche `0x8bc2cb...984383`; avalanche `0xd35108...6d747a` | ⚠️ Unaudited |
| PrizeDistributionFactoryV2 | unknown | ethereum | n/a | [`0x032ba4...1152a1`](./contracts/ethereum-1/0x032ba44eb2db607d2f9424b90e191bbfb51152a1/) | ⚠️ Unaudited |
| PrizeDistributor | unknown | polygon | n/a | 4 deployments: ethereum `0xb9a179...495efe`; polygon [`0x8141bc...9b9056`](./contracts/polygon-137/0x8141bcfbcee654c5de17c4e2b2af26b67f9b9056/); avalanche `0x83332f...73f3d1`; avalanche `0xc5d862...65ae38` | ⚠️ Unaudited |
| PrizePool | core_logic | gnosis | n/a | 9 deployments: ethereum `0x7865d0...354d95`; ethereum `0xa6bff8...39cbec`; optimism `0x8cffff...58d832`; optimism `0xc6ae7d...48042d`; optimism `0xe32e5e...000d6a`; optimism `0xf35fe1...e29b55`; gnosis [`0x0c08c2...18120f`](./contracts/gnosis-100/0x0c08c2999e1a14569554eddbcda9da5e1918120f/); base `0x45b201...3732cb`; arbitrum `0x52e791...bc5d42` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | gnosis | n/a | 5 deployments: ethereum `0x3341da...a11d79`; optimism `0x36be31...ec66c6`; gnosis [`0x0d51a3...a71dd9`](./contracts/gnosis-100/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/); base `0xf4c47d...576bbf`; arbitrum [`0x0d51a3...a71dd9`](./contracts/arbitrum-42161/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/) | ⚠️ Unaudited |
| PrizeSplitStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x47a5ab...259136`](./contracts/ethereum-1/0x47a5abfacdebf5af312b034b3b748935a0259136/); polygon `0x879e17...35858d`; avalanche `0xa30cb2...2547ec`; avalanche `0xb26318...58b807` | ⚠️ Unaudited |
| PrizeStakingVaultFactory | registry | base | n/a | 4 deployments: ethereum `0x8f11cb...f18389`; optimism `0x7c4626...02acf3`; base [`0x48492f...dcc037`](./contracts/base-8453/0x48492f83d9e1d848d33a461d49a2071a6fdcc037/); arbitrum `0x9468ea...3f3f20` | ⚠️ Unaudited |
| PrizeTierHistory | unknown | avalanche | n/a | 6 deployments: ethereum `0xdd1cba...67f80d`; avalanche [`0x51d722...1f52c4`](./contracts/avalanche-43114/0x51d72281ed1d149ccbd7f290d3431c1d831f52c4/); avalanche `0xad9f8f...7012e8`; avalanche `0xc3dad5...4903b6`; avalanche `0xd20fbf...ba2dd3`; avalanche `0xee4530...20e8c9` | ⚠️ Unaudited |
| PrizeTierHistoryV2 | unknown | ethereum | n/a | [`0x63c82b...4c8aaa`](./contracts/ethereum-1/0x63c82be45399b5ca6041a3b6aac0f326614c8aaa/) | ⚠️ Unaudited |
| PrizeVault | core_logic | scroll | n/a | 6 deployments: ethereum `0x9ee31e...c75573`; optimism `0xa52e38...3e5e1f`; gnosis `0xb75af2...8b35cf`; base `0x6b5a5c...f7e4dd`; arbitrum `0x97a9c0...1e8c95`; scroll [`0x29499e...b1fa9b`](./contracts/scroll-534352/0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b/) | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | optimism | n/a | 11 deployments: ethereum `0x29c102...87a75f`; ethereum `0xd499cc...dde7c3`; ethereum `0xed49a9...a154a7`; optimism [`0x0c379e...4dfd39`](./contracts/optimism-10/0x0c379e9b71ba7079084ada0d1c1aeb85d24dfd39/); optimism `0xec9f59...656775`; optimism `0xf0f151...0ea806`; gnosis `0xc3ae3f...31e2a6`; base `0xa55a74...d444bf`; base `0xe32f63...396ddf`; arbitrum `0x44be00...2c07bc`; arbitrum `0x8020fb...045e52` | ⚠️ Unaudited |
| ReceiverTimelockTrigger | unknown | avalanche | n/a | 3 deployments: avalanche [`0x24c3e1...b89430`](./contracts/avalanche-43114/0x24c3e15bdc10ce2cb1bec56cd43f397ce9b89430/); avalanche `0x832cb3...6a3a88`; avalanche `0xc2e914...2e9cb7` | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x3e8b99...b9a295`](./contracts/ethereum-1/0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295/) | ⚠️ Unaudited |
| RemoteOwner | unknown | optimism | n/a | 4 deployments: optimism [`0x38449a...bd130d`](./contracts/optimism-10/0x38449a6b7bb76638452273925c9a2ba818bd130d/); optimism `0x3a8f18...8ba06d`; optimism `0x503de6...c3bf65`; optimism `0x55fa1c...803fde` | ⚠️ Unaudited |
| Reserve | unknown | polygon | n/a | 6 deployments: ethereum `0xadb4d9...2fdfb5`; ethereum `0xdb8e47...4c124f`; polygon [`0x3e8b99...b9a295`](./contracts/polygon-137/0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295/); polygon `0xce148f...5982b8`; avalanche `0x6358f8...81be0d`; avalanche `0xf04e5b...a3d029` | ⚠️ Unaudited |
| RewardLiquidatorFactory | operational_periphery | base | n/a | 6 deployments: ethereum `0xc2aa23...6d3e2e`; optimism `0x7f75b9...3d5370`; gnosis `0xd09ca1...426afb`; base [`0x0526e9...40b468`](./contracts/base-8453/0x0526e9541a500b554ef318cdc44147f38a40b468/); base `0x778f10...06a9bf`; arbitrum `0xa030a8...5ee5f2` | ⚠️ Unaudited |
| RngAuction | unknown | ethereum | n/a | 2 deployments: ethereum [`0x539a76...867f41`](./contracts/ethereum-1/0x539a76507f18505ca696d618f8a684814c867f41/); ethereum `0x8cffff...58d832` | ⚠️ Unaudited |
| RngAuctionRelayerRemoteOwner | unknown | ethereum | n/a | 2 deployments: ethereum [`0xec9460...cccd24`](./contracts/ethereum-1/0xec9460c59cca1299b0242d6af426c21223cccd24/); ethereum `0xf4c47d...576bbf` | ⚠️ Unaudited |
| RngRelayAuction | unknown | optimism | n/a | 4 deployments: optimism [`0x5f6c71...7d25a8`](./contracts/optimism-10/0x5f6c71b9551c081680a2ef9f9322f88dca7d25a8/); optimism `0x87d3d9...efa557`; optimism `0xb06aeb...f51b49`; optimism `0xf4c47d...576bbf` | ⚠️ Unaudited |
| RngWitnet | unknown | optimism | n/a | 10 deployments: ethereum `0xa1697e...65650a`; ethereum `0xf93329...dea215`; optimism [`0x18928a...b9eecb`](./contracts/optimism-10/0x18928a03829a609292133d605ff6007151b9eecb/); optimism `0x3d2ef6...96aa7b`; optimism `0xc3118f...409923`; gnosis `0x47c921...df1123`; gnosis `0xcf4665...5ad5ce`; base `0x74ebf3...9d18f0`; arbitrum `0xad1b8e...dc107b`; scroll `0x4d971a...94f608` | ⚠️ Unaudited |
| SablierManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0589c7...204444`](./contracts/ethereum-1/0x0589c7a2b2acb895ff0314a394a6d991a9204444/); ethereum `0x17cbf6...44122b` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | n/a | [`0xf9af83...a0f2b7`](./contracts/scroll-534352/0xf9af83fc41e0cc2af2fba93644d542df6ea0f2b7/) | ⚠️ Unaudited |
| SingleRandomWinnerBuilder | unknown | ethereum | n/a | [`0xa63584...b4841d`](./contracts/ethereum-1/0xa6358441f68ed4707e1c4366a0d2e2233bb4841d/) | ⚠️ Unaudited |
| SingleRandomWinnerProxyFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6c7330...69e51f`](./contracts/ethereum-1/0x6c7330466ae67d1eda70bf3ad50a75e8a269e51f/); ethereum `0xba49b4...95adfd`; ethereum `0xc79b5d...dd2a37` | ⚠️ Unaudited |
| SponsorshipVaultFactory | unknown | base | n/a | [`0x015caa...f03ef3`](./contracts/base-8453/0x015caa3d12755ac9aac1f7ebebf40b0da8f03ef3/) | ⚠️ Unaudited |
| StakePrizePoolBuilder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6dc7ca...5d85c9`](./contracts/ethereum-1/0x6dc7ca9e2c19da475b39cce7437994c1725d85c9/); ethereum `0xf46608...be359f` | ⚠️ Unaudited |
| StakePrizePoolProxyFactory | unknown | ethereum | n/a | 7 deployments: ethereum [`0x166f62...c85142`](./contracts/ethereum-1/0x166f6240a5560a34352b054468deb85042c85142/); ethereum `0x259d46...62fc57`; ethereum `0x3b694c...bbe3f0`; ethereum `0x5ae758...6b6a4e`; ethereum `0x918175...c504b4`; polygon `0x977627...d8f17b`; polygon `0xafcea0...d4f5e6` | ⚠️ Unaudited |
| StakingVault | unknown | optimism | n/a | 6 deployments: ethereum `0x68a100...c2f18b`; ethereum `0x7c1aca...489969`; optimism [`0x2c3000...473732`](./contracts/optimism-10/0x2c30004ec09e731dffcd5783569fb2e09c473732/); gnosis `0x9ef19f...0ef172`; base `0x854f3d...80436d`; arbitrum `0xf59e48...54da1f` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xcf934e...b5b79c`](./contracts/arbitrum-42161/0xcf934e2402a5e072928a39a956964eb8f2b5b79c/) | ⚠️ Unaudited |
| Ticket | unknown | polygon | n/a | 4 deployments: ethereum `0xdd4d11...8236e1`; polygon [`0x6a304d...3a6076`](./contracts/polygon-137/0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076/); avalanche `0x9edc70...b8bde6`; avalanche `0xb27f37...bc1d90` | ⚠️ Unaudited |
| TicketProxyFactory | unknown | polygon | n/a | 7 deployments: ethereum `0x59b34c...e5eb94`; ethereum `0x67581c...ff31db`; ethereum `0x8bb5af...3411b5`; ethereum `0xa7d0d3...00acb9`; polygon [`0x259d46...62fc57`](./contracts/polygon-137/0x259d46f1559e4d41faf61d858b4b439d3962fc57/); polygon `0x58af45...27efb9`; polygon `0xd08a60...549170` | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x42cd83...24262e`](./contracts/ethereum-1/0x42cd8312d2bce04277dd5161832460e95b24262e/) | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | unknown | optimism | n/a | 7 deployments: ethereum `0x43069a...920323`; ethereum `0xa99b3a...a43908`; optimism [`0x0796be...e7f668`](./contracts/optimism-10/0x0796be5c62669aadd8e1a41645344ebe51e7f668/); optimism `0x80f866...77c7d1`; gnosis `0xbddd23...76368a`; base `0x8557a9...8374ea`; arbitrum `0x163402...2dfd3f` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | gnosis | n/a | 8 deployments: ethereum `0x6cb520...c9fbc1`; ethereum `0x7c210b...192ea0`; optimism `0x7766b5...876136`; optimism `0xe2d27c...d96bae`; gnosis [`0x166448...d006c9`](./contracts/gnosis-100/0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9/); base `0xa9c937...dfc22c`; arbitrum `0x7b4a60...67db73`; scroll `0x6f0b0a...d6ef7b` | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x21950e...de2359`](./contracts/ethereum-1/0x21950e281bde1714ffd1062ed17c56d4d8de2359/) | ⚠️ Unaudited |
| TwabController | unknown | optimism | n/a | 13 deployments: ethereum `0x4d5f2c...7b4acc`; ethereum `0xf4cfa5...1983f5`; optimism [`0x0d51a3...a71dd9`](./contracts/optimism-10/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/); optimism `0x499a9f...4f6e52`; optimism `0x5e5e49...e2c55e`; optimism `0x71c755...795ff6`; optimism `0x7deef0...1f9038`; optimism `0xb93975...a8f206`; optimism `0xcb0672...3be167`; gnosis `0x656399...7d7060`; gnosis `0x84090a...8afde6`; base `0x7e6360...4f44c6`; arbitrum `0x971ecc...14dc75` | ⚠️ Unaudited |
| TwabDelegator | unknown | base | n/a | 16 deployments: optimism `0x3989cb...9de4cb`; optimism `0x491485...0b42c6`; optimism `0x49e8e9...47bfa5`; optimism `0x4d5f2c...7b4acc`; optimism `0x5c2f7f...aa600b`; optimism `0x9cbbde...2b80b1`; optimism `0xa7da69...66c52e`; optimism `0xf93329...dea215`; base [`0x214a21...d6ce5e`](./contracts/base-8453/0x214a21bccf9acce40a65e2223e8e73bdffd6ce5e/); base `0x9678d0...8b801a`; base `0x9f925a...d64418`; base `0xb6ec5f...4181cd`; base `0xf40fe4...23c937`; arbitrum `0xb8e2fa...3f6dda`; arbitrum `0xdd734d...0e3ce6`; arbitrum `0xe2f119...bfb73d` | ⚠️ Unaudited |
| TwabRewards | unknown | scroll | n/a | 11 deployments: ethereum `0x2589ff...2f1a21`; ethereum `0x3cb049...c17ed1`; ethereum `0xa469de...082d81`; ethereum `0xe7934e...212618`; optimism `0x27ed57...396a66`; optimism `0x90d383...3ea9ea`; optimism `0xefb96e...749f99`; gnosis `0x174215...276942`; base `0x86f092...f2dc09`; arbitrum `0xe21ac3...9c59be`; scroll [`0x0e71a9...48780d`](./contracts/scroll-534352/0x0e71a9a2bd4546e7fc2af47a015747daeb48780d/) | ⚠️ Unaudited |
| UnsafeTokenListenerDelegatorProxyFactory | unknown | ethereum | n/a | [`0xd95200...ddb1ba`](./contracts/ethereum-1/0xd952003a0e4b6a63507dc7c0889e841d6bddb1ba/) | ⚠️ Unaudited |
| Vault | core_logic | optimism | n/a | 3 deployments: optimism [`0x29cb69...890715`](./contracts/optimism-10/0x29cb69d4780b53c1e5cd4d2b817142d2e9890715/); optimism `0x31515c...64e2d9`; optimism `0xe3b3a4...32f275` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | base | n/a | 13 deployments: ethereum `0x25d692...850004`; ethereum `0x31ec88...f483e8`; ethereum `0x36be31...ec66c6`; optimism `0x17b9d7...f66837`; optimism `0x43069a...920323`; optimism `0x7746a7...71dada`; optimism `0x858029...67f88c`; gnosis `0x8cffff...58d832`; gnosis `0xc9f124...1c4a78`; base [`0x02d37f...31530e`](./contracts/base-8453/0x02d37f2654b4161801c8d7369b43a8762a31530e/); base `0xa2ba3d...550ec2`; arbitrum `0x574257...0b449e`; arbitrum `0x8cffff...58d832` | ⚠️ Unaudited |
| VaultFactory | unknown | optimism | n/a | 2 deployments: optimism [`0xa469de...082d81`](./contracts/optimism-10/0xa469deff6d52c9571d13513e3cd7d94496082d81/); optimism `0xf65fa2...e08081` | ⚠️ Unaudited |
| VaultFactoryV2 | unknown | optimism | n/a | [`0x6b17ee...8eff0e`](./contracts/optimism-10/0x6b17ee3a95bccd605340454c5919e693ef8eff0e/) | ⚠️ Unaudited |
| VaultPrizePoolBuilder | unknown | ethereum | n/a | [`0x1469c3...0b4f5d`](./contracts/ethereum-1/0x1469c3c2f8cbacafced0a271711e3491700b4f5d/) | ⚠️ Unaudited |
| VaultV2 | core_logic | optimism | n/a | [`0xf0b19f...34397c`](./contracts/optimism-10/0xf0b19f02c63d51b69563a2b675e0160e1c34397c/) | ⚠️ Unaudited |
| YieldSourcePrizePool | core_logic | polygon | n/a | 5 deployments: ethereum `0xd89a09...d638be`; polygon [`0x19de63...e84e60`](./contracts/polygon-137/0x19de635fb3678d8b8154e37d8c9cdf182fe84e60/); polygon `0x887e17...9c7ef4`; polygon `0xee06ab...efa946`; avalanche `0xf830f5...8f95ec` | ⚠️ Unaudited |
| YieldSourcePrizePoolProxyFactory | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0835c8...c40d96`](./contracts/ethereum-1/0x0835c8c4ab282b5dbf06d59e1489ef17f1c40d96/); ethereum `0x4a8fa5...46d500`; ethereum `0x692f55...70728c`; ethereum `0xe3325f...ce99da`; polygon `0x447838...109962`; polygon `0x4d1639...5ebe36` | ⚠️ Unaudited |
| yVaultPrizePoolBuilder | unknown | ethereum | n/a | [`0xef3d36...495cd2`](./contracts/ethereum-1/0xef3d36a282e74b5bcba8a45262687ddb31495cd2/) | ⚠️ Unaudited |
| yVaultPrizePoolProxyFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3357d3...24cf5e`](./contracts/ethereum-1/0x3357d3a038006f47ecf05110c7629eff3b24cf5e/); ethereum `0x44c585...f4fe2a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xd01747...4f8509` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98305e...c675a7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xafcede...63dfde` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcdccba...398bdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03e75a...f0dbf7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17cfe0...24d72a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4027de...892668` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44c585...f4fe2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6dc7ca...5d85c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa63584...b4841d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6d1c8...20e6e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1d894...44cd21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc79b5d...dd2a37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb876f...175eef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd8f31...f3892e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1d06d...58b13d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef2d0b...5b713e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37a7ad...f34784` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x23dbac...7714ba` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x26f050...9be537` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x2a0344...27669b` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x3f21b2...f2e57c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x47d500...af5b81` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x4ea44e...1f8c83` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x50f36a...f4d42c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x64dc75...bb9386` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x66c2aa...2005b6` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6b0877...30693a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6ce4c5...d3a56d` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6d73bf...005579` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6f36db...e36d11` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6f7200...7d1792` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x7026b7...abec47` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x727590...22c7dc` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x7b4690...8b2bfc` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x89db94...7ce58f` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x8a3795...ece952` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xa15316...cf3b8b` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xb0e5bc...9e21e4` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xbc5b4d...202b1d` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xc024e9...8dcac9` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xccaac4...1ff5dd` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xd017a6...46b314` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xdf0445...65b88f` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xe51dce...84c8e0` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xed7497...8e386c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xefdff1...5658ac` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xfc2ba5...9e6295` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xfe2402...59f835` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audits.md](https://github.com/pooltogether/user-docs/blob/main/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bug-bounties.md](https://github.com/pooltogether/user-docs/blob/main/security/bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 4 | low |
| [README.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [protocol-coverage.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/protocol-coverage.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 138 |

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
