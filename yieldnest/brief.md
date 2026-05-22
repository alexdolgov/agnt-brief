# Agentic Audit Brief: YieldNest

⚠️ Lifecycle status: DECLINING - TVL dropped 4.8% over 90 days

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-22T13:41:05.729Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 89 unique implementations (532 raw deployments)
- DeFi Llama TVL: $23,435,487.89
- On-chain TVL (included contracts): $19,220,900.46
- TVL by chain: Ethereum $19,048,274.90 | Bsc $172,605.66 | Optimism $11.85 | Base $8.05

## Project Description

YieldNest is an onchain capital allocator that aggregates and manages yield-bearing strategies across multiple chains. It offers liquid restaking tokens (e.g., ynETH, ynLSDe) and vault products (e.g., ynETHx, ynBNBx) that optimize returns through EigenLayer and other DeFi protocols.

### Architecture

The ynETH family feeds rewards into ynETHx vaults, which issue L2YnERC20Upgradeable tokens. Kernel strategies like ynBTCk and vaults like ynBNBx share the same L2 token standard and are governed by multisigs, with YND serving as the ecosystem token.

## Audit Coverage Summary

- Verified implementations audited: 0/69 (0.0%)
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 1
- Unverified implementations: 20
- Unique implementations: 89
- Raw deployments: 532
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $19,220,900.46
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $19,220,900.46 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 13 deployments: ethereum [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/); ethereum `0x3be73e...9c4e73`; ethereum `0x3db228...ddcb4b`; ethereum `0x657d9a...c96dcb`; ethereum `0xc1c5b1...bc62c8`; ethereum `0xd91fe1...4e0402`; bsc `0x1095f8...064cf5`; bsc `0x32c830...0a2c5f`; bsc `0x41f928...216ed4`; bsc `0x741ab3...d02bdf`; bsc `0xce11f5...0f4978`; bsc `0xf661a9...f02d0f`; bsc `0xffc262...3fe84c` | ⚠️ Unaudited |
| ERC4626WrapperStrategy | core_logic | ethereum | [`0xd1573d...cff141`](./contracts/ethereum-1/0xd1573de52fff44dd92d275e20fdab0296ccff141/) | ⚠️ Unaudited |
| SingleVault | core_logic | bsc | [`0x304b58...74b509`](./contracts/bsc-56/0x304b5845b9114182ecb4495be4c91a273b74b509/) | ⚠️ Unaudited |
| KernelStrategy | core_logic | bsc | 32 deployments: bsc [`0x073929...05b6ae`](./contracts/bsc-56/0x073929c230f2898f227f765c135204fa9b05b6ae/); bsc `0x0e6464...05acb3`; bsc `0x132376...adf547`; bsc `0x1776de...731e85`; bsc `0x1b0157...224ab7`; bsc `0x1d9279...87287d`; bsc `0x315840...69db9a`; bsc `0x3936ad...228dcc`; bsc `0x40eaa8...f1dc22`; bsc `0x43a224...a16119`; bsc `0x504a89...e7315b`; bsc `0x517fa7...bcc802`; bsc `0x58e11a...13add9`; bsc `0x5a04d4...b81cf8`; bsc `0x5de8c7...29762c`; bsc `0x6254fa...6e30bd`; bsc `0x6a786b...6a26e1`; bsc `0x6ec6b7...9d59a1`; bsc `0x78839c...606a56`; bsc `0x7e020a...65b4cd`; bsc `0x835349...c98a76`; bsc `0x92e009...d47f97`; bsc `0x99155a...c0ee81`; bsc `0xa0f29c...27e04d`; bsc `0xa40870...30782b`; bsc `0xa5a7a2...dc186d`; bsc `0xaa33d2...f6465c`; bsc `0xb6582f...f6822f`; bsc `0xc64f2b...37581d`; bsc `0xebdb33...de4b5c`; bsc `0xef2f5b...b9b9bd`; bsc `0xff2501...787735` | ⚠️ Unaudited |
| ClisBnbStrategy | core_logic | bsc | 2 deployments: bsc [`0x1cbfbc...5e2252`](./contracts/bsc-56/0x1cbfbc3cb909fb0bf0e511afae6cdba6ba5e2252/); bsc `0xa9ff5a...ced71e` | ⚠️ Unaudited |
| KernelClisStrategy | core_logic | bsc | 8 deployments: bsc [`0x032769...667834`](./contracts/bsc-56/0x03276919f8b6ee37ba8ee4ee68a1c5f48b667834/); bsc `0x2a21a9...c05829`; bsc `0x445af1...3cd980`; bsc `0x532774...c76f71`; bsc `0xbdeb0b...dc4235`; bsc `0xdf4e25...60e835`; bsc `0xf5999f...f364fc`; bsc `0xf98f91...8c7762` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | core_logic | ethereum | 4 deployments: ethereum [`0x151d63...27a936`](./contracts/ethereum-1/0x151d63b006516b2aa09771e94775cf10ff27a936/); ethereum `0x5d6e53...9c5caf`; ethereum `0xd64b76...390451`; ethereum `0xe1a2a7...b0fed5` | ⚠️ Unaudited |
| AccountingModule | unknown | ethereum | [`0x77fb6f...de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | ⚠️ Unaudited |
| AccountingToken | token | ethereum | [`0xb39822...071421`](./contracts/ethereum-1/0xb39822a4212b63c90c674a5e608cecbf4b071421/) | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | 8 deployments: ethereum [`0x031ae4...9d6879`](./contracts/ethereum-1/0x031ae4a8a09b1779dbf69828356945fdf59d6879/); ethereum `0x0734ca...904101`; ethereum `0x081755...20f4a9`; ethereum `0x323c93...4270fd`; ethereum `0x54ab85...5bafce`; ethereum `0x84da5a...755eac`; ethereum `0x94db8f...a125bd`; ethereum `0xedb597...f62576` | ⚠️ Unaudited |
| AsyncWithdrawalLib | operational_periphery | ethereum | 2 deployments: ethereum [`0xa4ce33...16610c`](./contracts/ethereum-1/0xa4ce33a1e22c79330873ba8010e69f0bd016610c/); ethereum `0xee25e8...322684` | ⚠️ Unaudited |
| BaseRules | unknown | ethereum | [`0x3f582d...0d2410`](./contracts/ethereum-1/0x3f582d92e96cd5d61a29fac2badf8d1e4f0d2410/) | ⚠️ Unaudited |
| BfBTCRateProvider | unknown | bsc | [`0xba91a9...19bd1b`](./contracts/bsc-56/0xba91a950dce944c7351dd0cce091364fc519bd1b/) | ⚠️ Unaudited |
| BNBRateProvider | unknown | bsc | 12 deployments: bsc [`0x15f193...536448`](./contracts/bsc-56/0x15f193a0dd94452de4578ff71018632950536448/); bsc `0x302ead...66bc8e`; bsc `0x3ad709...d9be5b`; bsc `0x4165b2...f0d169`; bsc `0x647c74...d506e8`; bsc `0x90d8a4...70f49e`; bsc `0xa4dcb6...7df173`; bsc `0xbbc407...943c04`; bsc `0xbc724f...78509f`; bsc `0xc5d755...986f7f`; bsc `0xd25867...e7a159`; bsc `0xd4943a...cb0e29` | ⚠️ Unaudited |
| BscContracts | unknown | bsc | 27 deployments: bsc [`0x0f503d...8bf0b3`](./contracts/bsc-56/0x0f503d3b3929d421b0a1c8b1fbf38e029f8bf0b3/); bsc `0x12f4d0...dfedef`; bsc `0x15575e...10a648`; bsc `0x19e171...ed1ab8`; bsc `0x1ee8bb...4d2271`; bsc `0x311952...ba1724`; bsc `0x385812...544f89`; bsc `0x511886...a95999`; bsc `0x51b9c1...4f06a0`; bsc `0x56df02...c1c069`; bsc `0x579aef...35c2b9`; bsc `0x6515f8...e482c0`; bsc `0x65d7af...a828b9`; bsc `0x687572...93d294`; bsc `0x6efc75...52afaf`; bsc `0x79f72e...384620`; bsc `0x7fd19e...ad0eb5`; bsc `0x85e2b4...c25dbb`; bsc `0x94db8f...a125bd`; bsc `0x97e1dd...9bcaa2`; bsc `0xaeb1da...be3408`; bsc `0xb47dca...0309a8`; bsc `0xcc631b...8f3f03`; bsc `0xce5de5...5e4484`; bsc `0xd15e64...ccfdd3`; bsc `0xdb9355...1c5dfb`; bsc `0xf75bbe...f2e8d2` | ⚠️ Unaudited |
| BTCRateProvider | unknown | bsc | 12 deployments: bsc [`0x1bbcf4...a06402`](./contracts/bsc-56/0x1bbcf4de1ef3ff0ee717d856fa8e603480a06402/); bsc `0x285c45...e2cca1`; bsc `0x2f5779...45fad1`; bsc `0x680b0d...27bd73`; bsc `0x6e9108...f1ef42`; bsc `0x7573ee...e16f5c`; bsc `0x75d4d5...c1a798`; bsc `0x8d44fc...b72e40`; bsc `0x8ef7a0...057b52`; bsc `0xa4fe81...857dc0`; bsc `0xc31432...25992f`; bsc `0xd47b9c...0b17bf` | ⚠️ Unaudited |
| ClisBnbStrategyRateProvider | core_logic | bsc | [`0xe77f43...9f4eaf`](./contracts/bsc-56/0xe77f4398a06bc83863f45b6b7101bc46c29f4eaf/) | ⚠️ Unaudited |
| CoBTCRateProvider | unknown | bsc | [`0x245272...7eb5f7`](./contracts/bsc-56/0x245272749fa0d3c39577263ffcb6e9f89c7eb5f7/) | ⚠️ Unaudited |
| Connector | unknown | ethereum | 2 deployments: ethereum [`0xc98dce...0919cb`](./contracts/ethereum-1/0xc98dce50f707f7563ec8ba0274b43bcf940919cb/); ethereum `0xd4f8cc...eb514d` | ⚠️ Unaudited |
| ContractAddresses | unknown | ethereum | 4 deployments: ethereum [`0x32d9e8...60bd62`](./contracts/ethereum-1/0x32d9e80d4d14e8efc0b656576b7fb2fb0f60bd62/); ethereum `0x923ab4...7ef9c4`; ethereum `0xa694c0...678f32`; ethereum `0xaa5ea9...307d02` | ⚠️ Unaudited |
| EigenStrategyManager | core_logic | ethereum | 3 deployments: ethereum [`0x7390cd...5701e5`](./contracts/ethereum-1/0x7390cdfff38c8871ccb80e9b38ff88fe735701e5/); ethereum `0x92d904...5a68fc`; ethereum `0xb1c635...36e94d` | ⚠️ Unaudited |
| FlexStrategy | core_logic | ethereum | [`0xf151b8...e29153`](./contracts/ethereum-1/0xf151b80d9be891fdc97279f373eefd6289e29153/) | ⚠️ Unaudited |
| FlexStrategyDeployer | core_logic | ethereum | [`0x7f275b...d36938`](./contracts/ethereum-1/0x7f275b3c502f0b685ef477a1357093c88ed36938/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 4 deployments: ethereum [`0x8e20ea...c4de2e`](./contracts/ethereum-1/0x8e20eaf121154b69b7b880fa6c617c0175c4de2e/); ethereum `0xa08f39...6141c3`; ethereum `0xdf51b7...0028ef`; ethereum `0xfcad67...5d6975` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0x721688...85d436`](./contracts/bsc-56/0x721688652dea9cabec70bd99411eaeab9485d436/) | ⚠️ Unaudited |
| KernelClisVaultViewer | core_logic | bsc | 6 deployments: bsc [`0x20fc8d...cd9e7b`](./contracts/bsc-56/0x20fc8db0bee4cf37871db208182f03a10bcd9e7b/); bsc `0x3afcd6...0a043d`; bsc `0xc0eefc...81fe77`; bsc `0xccf06a...d7eff3`; bsc `0xddb4eb...0fa8f1`; bsc `0xe8bea9...d8d6ee` | ⚠️ Unaudited |
| KernelVaultViewer | core_logic | bsc | 25 deployments: bsc [`0x05f626...9ecfbd`](./contracts/bsc-56/0x05f6266941536b00127e18fd376bf7b6899ecfbd/); bsc `0x0c12a3...c6f0e5`; bsc `0x0e4ffa...deaed8`; bsc `0x0e5bc7...fb9229`; bsc `0x1f18d0...6fe250`; bsc `0x209fa3...d60e28`; bsc `0x2275fe...1762b5`; bsc `0x26b69e...1c5af3`; bsc `0x29fd26...d7d151`; bsc `0x39c6ac...5eec5a`; bsc `0x40391c...1835f0`; bsc `0x545a2c...974e88`; bsc `0x5b59f9...7b006f`; bsc `0x6cce89...55ee98`; bsc `0x728f22...743839`; bsc `0x77c601...3432b7`; bsc `0x7c984e...28e183`; bsc `0x7cb1e7...124d11`; bsc `0x849a31...00877f`; bsc `0xa70da4...01edf4`; bsc `0xb45c74...cba5e3`; bsc `0xcd14b7...a945e7`; bsc `0xd25b69...08b622`; bsc `0xda6bc0...34b93e`; bsc `0xec9063...c73d95` | ⚠️ Unaudited |
| L1Contracts | unknown | ethereum | 4 deployments: ethereum [`0x0e7149...45b6f2`](./contracts/ethereum-1/0x0e71498a5acfb68900c0154baed9a36a2c45b6f2/); ethereum `0x4396bf...dc2f82`; ethereum `0x51e22a...9b8003`; ethereum `0xeb233e...732dff` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | 6 deployments: ethereum [`0x31500e...38f767`](./contracts/ethereum-1/0x31500e72b241dd3140b21dbc02468c176038f767/); ethereum `0x345f73...9f5b18`; ethereum `0x3e30b4...4ea070`; ethereum `0xaedc83...5bba01`; ethereum `0xb658cf...9f20d9`; ethereum `0xc5ba40...e2d214` | ⚠️ Unaudited |
| LSDWrapper | unknown | ethereum | 2 deployments: ethereum [`0x7c31a9...89074d`](./contracts/ethereum-1/0x7c31a924b01a20642af2460d7fe24a2fef89074d/); ethereum `0x99db76...1d6992` | ⚠️ Unaudited |
| MainnetActors | unknown | bsc | 21 deployments: ethereum `0x2ddcee...9429e2`; ethereum `0x447aad...d669c5`; ethereum `0x51ad86...401bc3`; ethereum `0x71635d...80393c`; ethereum `0xba4cc4...eb64fb`; ethereum `0xccfdbf...7cb385`; ethereum `0xd9e79b...0adfa2`; ethereum `0xdd6f2c...7a9d0d`; bsc [`0x032953...339eca`](./contracts/bsc-56/0x0329538ed2a6b442a65c3fc3d32fea5a06339eca/); bsc `0x29a1e5...fa3153`; bsc `0x333ca7...a0af4f`; bsc `0x4baf25...76dce4`; bsc `0x5ba7c7...a21d02`; bsc `0x5db73f...8df880`; bsc `0x989c5e...4041b4`; bsc `0x9a9972...a01788`; bsc `0xa4a1ef...1899ca`; bsc `0xcc1140...e84add`; bsc `0xcfa76b...2466b4`; bsc `0xdbed1f...ffd93a`; bsc `0xedea31...584ca0` | ⚠️ Unaudited |
| MainnetKernelActors | unknown | bsc | 14 deployments: bsc [`0x04ec3e...28e0c1`](./contracts/bsc-56/0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1/); bsc `0x1c54f2...a725ad`; bsc `0x21f4a7...3dac66`; bsc `0x330164...c6a801`; bsc `0x3e2d6d...9df4eb`; bsc `0x5bda4d...71588d`; bsc `0x7206de...fc6620`; bsc `0x93fd6d...273d5f`; bsc `0x9a44dd...4aa146`; bsc `0xa4e3c8...765e13`; bsc `0xaff40d...a7d0b5`; bsc `0xb3c384...16b27c`; bsc `0xd9963d...52406c`; bsc `0xe3d8c3...e43e69` | ⚠️ Unaudited |
| MaxVaultViewer | core_logic | ethereum | 10 deployments: ethereum [`0x0f2b81...bea74e`](./contracts/ethereum-1/0x0f2b81368781f1c846c8b2ad48bacb45a0bea74e/); ethereum `0x38585e...df5e8b`; ethereum `0x615635...e5c534`; ethereum `0x632e20...1e0ac5`; ethereum `0x84fe8e...9b574f`; ethereum `0xeed274...9e5c81`; bsc `0x2f8fac...7d2985`; bsc `0x4c9084...4cce49`; bsc `0xfebd26...f6b67b`; bsc `0xff4910...317bc0` | ⚠️ Unaudited |
| OriginWithdrawalLib | operational_periphery | ethereum | 2 deployments: ethereum [`0x24c870...d48061`](./contracts/ethereum-1/0x24c8706ee3ef603929cb0d4467268b83c2d48061/); ethereum `0xa68479...4783a4` | ⚠️ Unaudited |
| ParaswapValidator | unknown | ethereum | 2 deployments: ethereum [`0xc742e2...11712b`](./contracts/ethereum-1/0xc742e24a36e6105de681c244cbbf2cd4cf11712b/); ethereum `0xf22375...40f419` | ⚠️ Unaudited |
| Provider | unknown | ethereum | 15 deployments: ethereum [`0x084c21...62ec85`](./contracts/ethereum-1/0x084c2159ec1612a82b16711cc45a003ea162ec85/); ethereum `0x5a081b...38d7ff`; ethereum `0x671698...a142b1`; ethereum `0x977ff7...e562d7`; ethereum `0xb03299...b6fca3`; ethereum `0xd5bf05...f3b01d`; ethereum `0xe141be...382d5a`; ethereum `0xeb4dbb...dac508`; bsc `0x0b26d0...e3ee35`; bsc `0x233838...9a1499`; bsc `0x75cdf9...1b8c36`; bsc `0xcff9d3...147d59`; bsc `0xd84cc5...a6a739`; bsc `0xe3522c...93d15c`; bsc `0xe5e9f6...71d0f4` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | 7 deployments: ethereum [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/); ethereum `0x08d8bc...23db89`; ethereum `0x39300e...3bf326`; ethereum `0x7b3922...a95ab9`; ethereum `0xc32ff5...217a63`; ethereum `0xe96221...504903`; bsc `0xe5ae49...f6a744` | ⚠️ Unaudited |
| RedemptionAssetsVault | core_logic | ethereum | 5 deployments: ethereum [`0x3f0b27...2515b8`](./contracts/ethereum-1/0x3f0b27a88d70ef940e9252c93418264c8a2515b8/); ethereum `0x493dd4...4840b1`; ethereum `0x73bc33...88d55e`; ethereum `0x9892a4...a6f14a`; ethereum `0xc38946...500f39` | ⚠️ Unaudited |
| ReferralDepositAdapter | adapter | ethereum | 4 deployments: ethereum [`0x41e60c...21c3d7`](./contracts/ethereum-1/0x41e60cf98075315e4d6133a9dc25a2847b21c3d7/); ethereum `0x86149f...232e00`; ethereum `0xd6bba2...68b4a1`; ethereum `0xe8edf9...bd8a37` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | 4 deployments: ethereum [`0x306ebe...eb5f72`](./contracts/ethereum-1/0x306ebed66642867b94b29752be37b8f20feb5f72/); ethereum `0x40d5ff...652351`; ethereum `0x77b26a...9d6f99`; ethereum `0xa469cd...74f2ec` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | 8 deployments: ethereum [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/); ethereum `0x4975e6...7b7dc7`; ethereum `0x5de8c7...29762c`; ethereum `0x863ba8...ff159b`; ethereum `0xa98e86...b91582`; ethereum `0xd3e7e4...01de56`; ethereum `0xd47b9c...0b17bf`; ethereum `0xe439fe...26536e` | ⚠️ Unaudited |
| RewardsSweeper | unknown | ethereum | [`0xb94b57...5fbde5`](./contracts/ethereum-1/0xb94b57c8c0c3151e7a3fad815e10e358215fbde5/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | [`0x7b4b43...86fcaf`](./contracts/bsc-56/0x7b4b43f00cf80aabda8f72d61b129f1e7f86fcaf/) | ⚠️ Unaudited |
| StableswapOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x385287...531b76`](./contracts/ethereum-1/0x38528720cd5f66c207093fc476f167d90c531b76/); ethereum `0x6d6685...ae6d64`; ethereum `0x825176...1ad869`; ethereum `0x9dcbdd...7f16af` | ⚠️ Unaudited |
| StakingNode | unknown | ethereum | 10 deployments: ethereum [`0x1a024a...d7f77b`](./contracts/ethereum-1/0x1a024ae16c761596f3227944c0c52beba5d7f77b/); ethereum `0x1bbcf4...a06402`; ethereum `0x3ee37b...0fbe2b`; ethereum `0x56d43f...857117`; ethereum `0x6a28af...fe5942`; ethereum `0x6a786b...6a26e1`; ethereum `0x79388c...e65e1e`; ethereum `0x98fc02...f4ace0`; ethereum `0xa8bd8f...fe929d`; ethereum `0xf8a37f...1d237b` | ⚠️ Unaudited |
| StakingNodesManager | governance | ethereum | 13 deployments: ethereum [`0x21e86b...0ea06d`](./contracts/ethereum-1/0x21e86b28b0afec2c3f570a924a8ec969fc0ea06d/); ethereum `0x33ffb7...100626`; ethereum `0x4b3fb7...40cdb7`; ethereum `0x540af4...43d5c8`; ethereum `0x6de59b...ea224b`; ethereum `0x7e020a...65b4cd`; ethereum `0x8c33a1...59cd7d`; ethereum `0x8e0b49...4d41ab`; ethereum `0x956b96...6967e5`; ethereum `0x98d664...a400d5`; ethereum `0xabd3a7...4cc811`; ethereum `0xdbf332...225040`; ethereum `0xf1eb27...55a7ce` | ⚠️ Unaudited |
| TimelockController | governance | bsc | 46 deployments: ethereum `0x097162...5158f1`; ethereum `0x16748a...a319b3`; ethereum `0x1854b5...f34169`; ethereum `0x24590b...65af94`; ethereum `0x3e469b...2edafe`; ethereum `0x4e1ba8...81a8a4`; ethereum `0x5671ae...b772c3`; ethereum `0x617ecc...4b2f70`; ethereum `0x67f1fc...5fcb9d`; ethereum `0x739711...db132d`; ethereum `0x8735dd...96566b`; ethereum `0x8b25ae...deee73`; ethereum `0xa7f5c1...b6e96f`; ethereum `0xb5e2c3...680661`; ethereum `0xbb73f8...1d017a`; ethereum `0xc6ca36...42d46b`; ethereum `0xfec7e2...62c2bf`; bsc [`0x054dda...3262c1`](./contracts/bsc-56/0x054dda05505694ca92f3af0f51f93eb5f53262c1/); bsc `0x1db000...4fc974`; bsc `0x2f3fed...ca1f40`; bsc `0x422e63...acc5ce`; bsc `0x437794...8bf9aa`; bsc `0x49f08d...cf965f`; bsc `0x4cffbf...da0e70`; bsc `0x4ec7ad...ee94e4`; bsc `0x527c69...5abcb2`; bsc `0x53b40d...5981c1`; bsc `0x540af4...43d5c8`; bsc `0x58ec65...774aa2`; bsc `0x5e5f6a...01f292`; bsc `0x62201c...2ed81b`; bsc `0x81f34d...801b1f`; bsc `0x870fe5...5a7edb`; bsc `0xa1ece8...477cdd`; bsc `0xa6c9fc...20870b`; bsc `0xb97f60...f6f973`; bsc `0xbea8b8...94320e`; bsc `0xcade25...4cf9f9`; bsc `0xced6a6...90de5b`; bsc `0xcf48d2...d91234`; bsc `0xd7c83d...7ed06c`; bsc `0xdbab6c...e03d49`; bsc `0xdbf332...225040`; bsc `0xe698e3...4ab856`; bsc `0xe7f2ce...b90f1a`; bsc `0xf8d764...5e5958` | ⚠️ Unaudited |
| TokenStakingNode | token | ethereum | 6 deployments: ethereum [`0x28fd4c...9c41fd`](./contracts/ethereum-1/0x28fd4c04620d95c4bec9397e2d303937779c41fd/); ethereum `0x57e1d0...e236fa`; ethereum `0x74ff5c...d43655`; ethereum `0x7573ee...e16f5c`; ethereum `0xc60268...26f801`; ethereum `0xc82bfd...8d9748` | ⚠️ Unaudited |
| TokenStakingNodesManager | governance | ethereum | 9 deployments: ethereum [`0x17e77f...8206da`](./contracts/ethereum-1/0x17e77f964538fed3adec3e8dbb6147da258206da/); ethereum `0x22417e...006310`; ethereum `0x29ac77...747b6b`; ethereum `0x40edd9...46def4`; ethereum `0x592d1e...4ec647`; ethereum `0x6b566c...30a0c3`; ethereum `0x6fbd79...6adb2c`; ethereum `0x81f34d...801b1f`; ethereum `0xb03146...88243f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 46 deployments: ethereum `0x42fb68...b8baab`; ethereum `0x514d0a...52f365`; ethereum `0x686620...405dc2`; ethereum `0x8059c1...4d726e`; ethereum `0x97790d...98d0be`; ethereum `0xd56c14...56a4dd`; ethereum `0xe7c675...9691b7`; ethereum `0xe7d43a...78a6fa`; ethereum `0xeafbb3...2ddf02`; bsc [`0x0a4f24...06701d`](./contracts/bsc-56/0x0a4f2471aba6809e34aa9f6476d0835a7406701d/); bsc `0x1b7475...61eab4`; bsc `0x30d5a4...4318f0`; bsc `0x310e54...9c2b5f`; bsc `0x31280a...a05663`; bsc `0x3cd882...1c9e44`; bsc `0x3f574f...c31e58`; bsc `0x459265...72ba6e`; bsc `0x4e6272...f8c1a7`; bsc `0x552ab7...615578`; bsc `0x5e6a35...97474e`; bsc `0x61097d...69ed47`; bsc `0x633b17...8f24e0`; bsc `0x63b446...3fee43`; bsc `0x67aec6...905246`; bsc `0x6a60e6...699836`; bsc `0x76ee68...83b4a7`; bsc `0x7c81ee...162e6d`; bsc `0x7e0cfb...882fbc`; bsc `0x878546...9a9c9a`; bsc `0x91597e...8a16bb`; bsc `0x9bb84d...3fbe75`; bsc `0xae0b0e...cf30e1`; bsc `0xae8cf1...d1a726`; bsc `0xb1cfb0...c89059`; bsc `0xb240f4...e7e0b9`; bsc `0xb35c64...e6ca41`; bsc `0xba0738...016fd9`; bsc `0xc60268...26f801`; bsc `0xc82bfd...8d9748`; bsc `0xd38855...1585f1`; bsc `0xd3e7e4...01de56`; bsc `0xd58d73...571bc1`; bsc `0xd77621...4f25e2`; bsc `0xe840d5...961529`; bsc `0xf989ab...217d02`; bsc `0xfa9f90...9ad2de` | ⚠️ Unaudited |
| VaultLib | core_logic | ethereum | 10 deployments: ethereum [`0x1894d6...ea9e11`](./contracts/ethereum-1/0x1894d6f986fcc8564b12f2fb2b8296531fea9e11/); ethereum `0x24024c...5b70f9`; ethereum `0x5f0efd...76f235`; ethereum `0x64096a...82c58b`; ethereum `0xb59f18...25c300`; ethereum `0xc6d480...0098d6`; ethereum `0xc89de4...35d8c6`; ethereum `0xe46adc...26a6b6`; bsc `0xb85924...8c0614`; bsc `0xd19c84...85231b` | ⚠️ Unaudited |
| WithdrawalQueueManager | operational_periphery | ethereum | 6 deployments: ethereum [`0x0bc9bc...0aa67b`](./contracts/ethereum-1/0x0bc9bc81ad379810b36ad5cc95387112990aa67b/); ethereum `0x42d3ee...9360a1`; ethereum `0x60d812...d9dcf3`; ethereum `0x6ac38a...2185cd`; ethereum `0x8face3...4d60b4`; ethereum `0xaac93a...0a5d64` | ⚠️ Unaudited |
| WithdrawalsProcessor | operational_periphery | ethereum | 14 deployments: ethereum [`0x131d4f...426643`](./contracts/ethereum-1/0x131d4f89b1e0387c0d2278e8c375f4c802426643/); ethereum `0x337f51...02ed4e`; ethereum `0x487d9a...d7930d`; ethereum `0x4b2552...d5620f`; ethereum `0x503895...e5b340`; ethereum `0x6d052c...6c5fba`; ethereum `0x7c0a93...835d00`; ethereum `0x97e619...3bf3b2`; ethereum `0xc5d569...668a24`; ethereum `0xc954d6...24c47f`; ethereum `0xd048f3...35c5df`; ethereum `0xd1cc0f...3a3fa7`; ethereum `0xd2c22d...b57f7e`; ethereum `0xf4abf2...2de758` | ⚠️ Unaudited |
| Withdrawer | operational_periphery | ethereum | 9 deployments: ethereum [`0x1da2a0...b7e92b`](./contracts/ethereum-1/0x1da2a0fef0407974d00335ee623098082cb7e92b/); ethereum `0x2ad086...268fed`; ethereum `0x352766...8e88d5`; ethereum `0x3fc377...873b4a`; ethereum `0xa55dc4...9b44f7`; ethereum `0xb64524...3deb54`; ethereum `0xe4d258...209cd7`; ethereum `0xe83289...75d6c7`; ethereum `0xea03aa...1e04fc` | ⚠️ Unaudited |
| WithdrawerConfigurator | operational_periphery | ethereum | 2 deployments: ethereum [`0xf2c5c0...3d427a`](./contracts/ethereum-1/0xf2c5c018c983dc9455efeba22e3a0150143d427a/); ethereum `0xf8dad4...35d9d1` | ⚠️ Unaudited |
| WithdrawerConfigurer | operational_periphery | ethereum | [`0x0a4a9c...68cf89`](./contracts/ethereum-1/0x0a4a9c17e20bed3e9fedc52f600e07f2bd68cf89/) | ⚠️ Unaudited |
| WrappedToken | token | ethereum | 3 deployments: ethereum [`0x3f574f...c31e58`](./contracts/ethereum-1/0x3f574ff13a9540c3e7844704e962b1b186c31e58/); ethereum `0xb6582f...f6822f`; ethereum `0xda7d20...28e574` | ⚠️ Unaudited |
| XReferralAdapter | adapter | bsc | 6 deployments: ethereum `0x80ff99...cb234b`; ethereum `0xdb7aa0...8e3fc0`; bsc [`0x654f54...614c5e`](./contracts/bsc-56/0x654f54cd49e39edb126c0a53d0dec6d441614c5e/); bsc `0x8b890f...8cc60d`; bsc `0xca5416...4d119d`; bsc `0xe4bbb9...85ff1e` | ⚠️ Unaudited |
| YieldNestOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0xa96a27...2f1038`](./contracts/ethereum-1/0xa96a2716df5133b2fdc2ff367e51c609172f1038/); ethereum `0xc0cff2...cc5187`; ethereum `0xf592cd...d4a59b` | ⚠️ Unaudited |
| YND | unknown | ethereum | 7 deployments: ethereum [`0x6770f0...fe7c74`](./contracts/ethereum-1/0x6770f0c1757ec7bb940b0e417ce16536fafe7c74/); ethereum `0x7159cc...8a45ba`; ethereum `0x8532da...b0f2fe`; ethereum `0x927679...dbcaac`; ethereum `0xa7d2f6...2f977e`; ethereum `0xa8c939...b23ff8`; ethereum `0xe746d2...282483` | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | 3 deployments: ethereum [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/); ethereum `0x5cc73a...05d222`; ethereum `0xb06084...57d189` | ⚠️ Unaudited |
| ynEigenDepositAdapter | adapter | ethereum | 3 deployments: ethereum [`0x0027da...20f827`](./contracts/ethereum-1/0x0027da0545fe5e5d4fb80e8e6fc78091ab20f827/); ethereum `0x6254fa...6e30bd`; ethereum `0x9e7215...6753c0` | ⚠️ Unaudited |
| ynEigenViewer | periphery | ethereum | 3 deployments: ethereum [`0x9b933d...bef28f`](./contracts/ethereum-1/0x9b933d84fac0782f3b275d76b64a0dbf6fbef28f/); ethereum `0xc16fef...2e64da`; ethereum `0xc7cccf...a0ad29` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | 8 deployments: ethereum [`0x05c516...50127a`](./contracts/ethereum-1/0x05c516654741cc1e594523508bf17a750550127a/); ethereum `0x09db87...373a48`; ethereum `0x0f503d...8bf0b3`; ethereum `0x14dc3d...8a1346`; ethereum `0x434ab6...116663`; ethereum `0x87e2a5...43710a`; ethereum `0xa42493...35b970`; ethereum `0xcebdee...fff482` | ⚠️ Unaudited |
| YnETHx | unknown | ethereum | [`0xc46c1f...69299a`](./contracts/ethereum-1/0xc46c1f2d7b6c34ffd5c6cc92a071e1c7e069299a/) | ⚠️ Unaudited |
| YnETHxConfigurer | governance | ethereum | [`0x3794d5...4ffb7b`](./contracts/ethereum-1/0x3794d53a890ee7e6b1515d7e053b2e51934ffb7b/) | ⚠️ Unaudited |
| ynLSD | unknown | ethereum | 3 deployments: ethereum [`0x39f3a3...553263`](./contracts/ethereum-1/0x39f3a3699eb0627c2c8cd30d394cd8e36e553263/); ethereum `0x7fd558...e43790`; ethereum `0xe42de0...d9cf03` | ⚠️ Unaudited |
| ynViewer | periphery | ethereum | 7 deployments: ethereum [`0x0365a6...10899e`](./contracts/ethereum-1/0x0365a6ef790e05eee386b57326e5ceaf5b10899e/); ethereum `0x2cfab6...9ca36e`; ethereum `0x7ae221...3ed9f0`; ethereum `0xa40565...d982f0`; ethereum `0xb088fe...08519d`; ethereum `0xc70c9b...6952e0`; ethereum `0xf0207f...c93ecf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L2YnERC20Upgradeable | token | ethereum | 7 deployments: ethereum [`0x68589a...44ed5d`](./contracts/ethereum-1/0x68589adc7687a23ff2b06fb032b997f09b44ed5d/); optimism `0xdb8e54...af0511`; optimism `0xe231db...635a61`; bsc `0xdb8e54...af0511`; base `0xdb8e54...af0511`; arbitrum `0xdb8e54...af0511`; berachain `0xdb8e54...af0511` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x237bc9...9a1119` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ed0eb...327557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60ee80...394769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x704906...394c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x951fa1...a40949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9633ff...15ee84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7dd60...325912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc26328...8243c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc31432...25992f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb45da...93cfce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcee58d...7db09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf36f2...4f27a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd07049...f3dadd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd2886c...0b864f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeaa59b...671d5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x21cbb2...f6d46e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4fda22...734871` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5ed294...bc06a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x839325...a9b7b1` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x0ce01d...bc1576` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x073929...05b6ae`](./contracts/bsc-56/0x073929c230f2898f227f765c135204fa9b05b6ae/) | KernelStrategy | core_logic | $19,292.22 | Verified native implementation with $19,292.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x151d63...27a936`](./contracts/ethereum-1/0x151d63b006516b2aa09771e94775cf10ff27a936/) | ynETHRedemptionAssetsVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77fb6f...de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | AccountingModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb39822...071421`](./contracts/ethereum-1/0xb39822a4212b63c90c674a5e608cecbf4b071421/) | AccountingToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031ae4...9d6879`](./contracts/ethereum-1/0x031ae4a8a09b1779dbf69828356945fdf59d6879/) | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ce33...16610c`](./contracts/ethereum-1/0xa4ce33a1e22c79330873ba8010e69f0bd016610c/) | AsyncWithdrawalLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f582d...0d2410`](./contracts/ethereum-1/0x3f582d92e96cd5d61a29fac2badf8d1e4f0d2410/) | BaseRules | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xba91a9...19bd1b`](./contracts/bsc-56/0xba91a950dce944c7351dd0cce091364fc519bd1b/) | BfBTCRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bbcf4...a06402`](./contracts/bsc-56/0x1bbcf4de1ef3ff0ee717d856fa8e603480a06402/) | BTCRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe77f43...9f4eaf`](./contracts/bsc-56/0xe77f4398a06bc83863f45b6b7101bc46c29f4eaf/) | ClisBnbStrategyRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32d9e8...60bd62`](./contracts/ethereum-1/0x32d9e80d4d14e8efc0b656576b7fb2fb0f60bd62/) | ContractAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf151b8...e29153`](./contracts/ethereum-1/0xf151b80d9be891fdc97279f373eefd6289e29153/) | FlexStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f275b...d36938`](./contracts/ethereum-1/0x7f275b3c502f0b685ef477a1357093c88ed36938/) | FlexStrategyDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20fc8d...cd9e7b`](./contracts/bsc-56/0x20fc8db0bee4cf37871db208182f03a10bcd9e7b/) | KernelClisVaultViewer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05f626...9ecfbd`](./contracts/bsc-56/0x05f6266941536b00127e18fd376bf7b6899ecfbd/) | KernelVaultViewer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e7149...45b6f2`](./contracts/ethereum-1/0x0e71498a5acfb68900c0154baed9a36a2c45b6f2/) | L1Contracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31500e...38f767`](./contracts/ethereum-1/0x31500e72b241dd3140b21dbc02468c176038f767/) | LSDRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c31a9...89074d`](./contracts/ethereum-1/0x7c31a924b01a20642af2460d7fe24a2fef89074d/) | LSDWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032953...339eca`](./contracts/bsc-56/0x0329538ed2a6b442a65c3fc3d32fea5a06339eca/) | MainnetActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ec3e...28e0c1`](./contracts/bsc-56/0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1/) | MainnetKernelActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c870...d48061`](./contracts/ethereum-1/0x24c8706ee3ef603929cb0d4467268b83c2d48061/) | OriginWithdrawalLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x084c21...62ec85`](./contracts/ethereum-1/0x084c2159ec1612a82b16711cc45a003ea162ec85/) | Provider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/) | ProxyUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f0b27...2515b8`](./contracts/ethereum-1/0x3f0b27a88d70ef940e9252c93418264c8a2515b8/) | RedemptionAssetsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x306ebe...eb5f72`](./contracts/ethereum-1/0x306ebed66642867b94b29752be37b8f20feb5f72/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb94b57...5fbde5`](./contracts/ethereum-1/0xb94b57c8c0c3151e7a3fad815e10e358215fbde5/) | RewardsSweeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x385287...531b76`](./contracts/ethereum-1/0x38528720cd5f66c207093fc476f167d90c531b76/) | StableswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a024a...d7f77b`](./contracts/ethereum-1/0x1a024ae16c761596f3227944c0c52beba5d7f77b/) | StakingNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28fd4c...9c41fd`](./contracts/ethereum-1/0x28fd4c04620d95c4bec9397e2d303937779c41fd/) | TokenStakingNode | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e77f...8206da`](./contracts/ethereum-1/0x17e77f964538fed3adec3e8dbb6147da258206da/) | TokenStakingNodesManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1894d6...ea9e11`](./contracts/ethereum-1/0x1894d6f986fcc8564b12f2fb2b8296531fea9e11/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2c5c0...3d427a`](./contracts/ethereum-1/0xf2c5c018c983dc9455efeba22e3a0150143d427a/) | WithdrawerConfigurator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a4a9c...68cf89`](./contracts/ethereum-1/0x0a4a9c17e20bed3e9fedc52f600e07f2bd68cf89/) | WithdrawerConfigurer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f574f...c31e58`](./contracts/ethereum-1/0x3f574ff13a9540c3e7844704e962b1b186c31e58/) | WrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x654f54...614c5e`](./contracts/bsc-56/0x654f54cd49e39edb126c0a53d0dec6d441614c5e/) | XReferralAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6770f0...fe7c74`](./contracts/ethereum-1/0x6770f0c1757ec7bb940b0e417ce16536fafe7c74/) | YND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05c516...50127a`](./contracts/ethereum-1/0x05c516654741cc1e594523508bf17a750550127a/) | ynETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc46c1f...69299a`](./contracts/ethereum-1/0xc46c1f2d7b6c34ffd5c6cc92a071e1c7e069299a/) | YnETHx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3794d5...4ffb7b`](./contracts/ethereum-1/0x3794d53a890ee7e6b1515d7e053b2e51934ffb7b/) | YnETHxConfigurer | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f3a3...553263`](./contracts/ethereum-1/0x39f3a3699eb0627c2c8cd30d394cd8e36e553263/) | ynLSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0365a6...10899e`](./contracts/ethereum-1/0x0365a6ef790e05eee386b57326e5ceaf5b10899e/) | ynViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 1 |
| standard_library | 24 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
