# Agentic Audit Brief: YieldNest

⚠️ Lifecycle status: DECLINING - TVL dropped 4.8% over 90 days

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-25T14:32:39.714Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 45 unique implementations (290 raw deployments)
- DeFi Llama TVL: $23,435,487.89
- On-chain TVL (included contracts): $19,220,900.46
- TVL by chain: Ethereum $19,048,274.90 | Bsc $172,605.66 | Optimism $11.85 | Base $8.05

## Project Description

YieldNest is an onchain capital allocator that aggregates and manages yield-bearing strategies across multiple chains. It offers liquid restaking tokens (e.g., ynETH, ynLSDe) and vault products (e.g., ynETHx, ynBNBx) that optimize returns through EigenLayer and other DeFi protocols.

### Architecture

The ynETH family feeds rewards into ynETHx vaults, which issue L2YnERC20Upgradeable tokens. Kernel strategies like ynBTCk and vaults like ynBNBx share the same L2 token standard and are governed by multisigs, with YND serving as the ecosystem token.

## Audit Coverage Summary

- Verified implementations audited: 0/37 (0.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 1
- Unverified implementations: 8
- Unique implementations: 45
- Raw deployments: 290
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

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 11 deployments: ethereum [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/); ethereum `0x3be73e...9c4e73`; ethereum `0x3db228...ddcb4b`; ethereum `0x657d9a...c96dcb`; bsc `0x1095f8...064cf5`; bsc `0x32c830...0a2c5f`; bsc `0x41f928...216ed4`; bsc `0x741ab3...d02bdf`; bsc `0xce11f5...0f4978`; bsc `0xf661a9...f02d0f`; bsc `0xffc262...3fe84c` | ⚠️ Unaudited |
| ERC4626WrapperStrategy | core_logic | ethereum | [`0xd1573d...cff141`](./contracts/ethereum-1/0xd1573de52fff44dd92d275e20fdab0296ccff141/) | ⚠️ Unaudited |
| SingleVault | core_logic | bsc | [`0x304b58...74b509`](./contracts/bsc-56/0x304b5845b9114182ecb4495be4c91a273b74b509/) | ⚠️ Unaudited |
| KernelStrategy | core_logic | bsc | 32 deployments: bsc [`0x073929...05b6ae`](./contracts/bsc-56/0x073929c230f2898f227f765c135204fa9b05b6ae/); bsc `0x0e6464...05acb3`; bsc `0x132376...adf547`; bsc `0x1776de...731e85`; bsc `0x1b0157...224ab7`; bsc `0x1d9279...87287d`; bsc `0x315840...69db9a`; bsc `0x3936ad...228dcc`; bsc `0x40eaa8...f1dc22`; bsc `0x43a224...a16119`; bsc `0x504a89...e7315b`; bsc `0x517fa7...bcc802`; bsc `0x58e11a...13add9`; bsc `0x5a04d4...b81cf8`; bsc `0x5de8c7...29762c`; bsc `0x6254fa...6e30bd`; bsc `0x6a786b...6a26e1`; bsc `0x6ec6b7...9d59a1`; bsc `0x78839c...606a56`; bsc `0x7e020a...65b4cd`; bsc `0x835349...c98a76`; bsc `0x92e009...d47f97`; bsc `0x99155a...c0ee81`; bsc `0xa0f29c...27e04d`; bsc `0xa40870...30782b`; bsc `0xa5a7a2...dc186d`; bsc `0xaa33d2...f6465c`; bsc `0xb6582f...f6822f`; bsc `0xc64f2b...37581d`; bsc `0xebdb33...de4b5c`; bsc `0xef2f5b...b9b9bd`; bsc `0xff2501...787735` | ⚠️ Unaudited |
| ClisBnbStrategy | core_logic | bsc | 2 deployments: bsc [`0x1cbfbc...5e2252`](./contracts/bsc-56/0x1cbfbc3cb909fb0bf0e511afae6cdba6ba5e2252/); bsc `0xa9ff5a...ced71e` | ⚠️ Unaudited |
| KernelClisStrategy | core_logic | bsc | 8 deployments: bsc [`0x032769...667834`](./contracts/bsc-56/0x03276919f8b6ee37ba8ee4ee68a1c5f48b667834/); bsc `0x2a21a9...c05829`; bsc `0x445af1...3cd980`; bsc `0x532774...c76f71`; bsc `0xbdeb0b...dc4235`; bsc `0xdf4e25...60e835`; bsc `0xf5999f...f364fc`; bsc `0xf98f91...8c7762` | ⚠️ Unaudited |
| AssetRegistry | registry | ethereum | 2 deployments: ethereum [`0x031ae4...9d6879`](./contracts/ethereum-1/0x031ae4a8a09b1779dbf69828356945fdf59d6879/); ethereum `0x323c93...4270fd` | ⚠️ Unaudited |
| BscContracts | unknown | bsc | 27 deployments: bsc [`0x0f503d...8bf0b3`](./contracts/bsc-56/0x0f503d3b3929d421b0a1c8b1fbf38e029f8bf0b3/); bsc `0x12f4d0...dfedef`; bsc `0x15575e...10a648`; bsc `0x19e171...ed1ab8`; bsc `0x1ee8bb...4d2271`; bsc `0x311952...ba1724`; bsc `0x385812...544f89`; bsc `0x511886...a95999`; bsc `0x51b9c1...4f06a0`; bsc `0x56df02...c1c069`; bsc `0x579aef...35c2b9`; bsc `0x6515f8...e482c0`; bsc `0x65d7af...a828b9`; bsc `0x687572...93d294`; bsc `0x6efc75...52afaf`; bsc `0x79f72e...384620`; bsc `0x7fd19e...ad0eb5`; bsc `0x85e2b4...c25dbb`; bsc `0x94db8f...a125bd`; bsc `0x97e1dd...9bcaa2`; bsc `0xaeb1da...be3408`; bsc `0xb47dca...0309a8`; bsc `0xcc631b...8f3f03`; bsc `0xce5de5...5e4484`; bsc `0xd15e64...ccfdd3`; bsc `0xdb9355...1c5dfb`; bsc `0xf75bbe...f2e8d2` | ⚠️ Unaudited |
| ClisBnbStrategyRateProvider | core_logic | bsc | [`0xe77f43...9f4eaf`](./contracts/bsc-56/0xe77f4398a06bc83863f45b6b7101bc46c29f4eaf/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 4 deployments: ethereum [`0x8e20ea...c4de2e`](./contracts/ethereum-1/0x8e20eaf121154b69b7b880fa6c617c0175c4de2e/); ethereum `0xa08f39...6141c3`; ethereum `0xdf51b7...0028ef`; ethereum `0xfcad67...5d6975` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0x721688...85d436`](./contracts/bsc-56/0x721688652dea9cabec70bd99411eaeab9485d436/) | ⚠️ Unaudited |
| KernelClisVaultViewer | core_logic | bsc | 6 deployments: bsc [`0x20fc8d...cd9e7b`](./contracts/bsc-56/0x20fc8db0bee4cf37871db208182f03a10bcd9e7b/); bsc `0x3afcd6...0a043d`; bsc `0xc0eefc...81fe77`; bsc `0xccf06a...d7eff3`; bsc `0xddb4eb...0fa8f1`; bsc `0xe8bea9...d8d6ee` | ⚠️ Unaudited |
| KernelVaultViewer | core_logic | bsc | 25 deployments: bsc [`0x05f626...9ecfbd`](./contracts/bsc-56/0x05f6266941536b00127e18fd376bf7b6899ecfbd/); bsc `0x0c12a3...c6f0e5`; bsc `0x0e4ffa...deaed8`; bsc `0x0e5bc7...fb9229`; bsc `0x1f18d0...6fe250`; bsc `0x209fa3...d60e28`; bsc `0x2275fe...1762b5`; bsc `0x26b69e...1c5af3`; bsc `0x29fd26...d7d151`; bsc `0x39c6ac...5eec5a`; bsc `0x40391c...1835f0`; bsc `0x545a2c...974e88`; bsc `0x5b59f9...7b006f`; bsc `0x6cce89...55ee98`; bsc `0x728f22...743839`; bsc `0x77c601...3432b7`; bsc `0x7c984e...28e183`; bsc `0x7cb1e7...124d11`; bsc `0x849a31...00877f`; bsc `0xa70da4...01edf4`; bsc `0xb45c74...cba5e3`; bsc `0xcd14b7...a945e7`; bsc `0xd25b69...08b622`; bsc `0xda6bc0...34b93e`; bsc `0xec9063...c73d95` | ⚠️ Unaudited |
| L1Contracts | unknown | ethereum | 2 deployments: ethereum [`0x0e7149...45b6f2`](./contracts/ethereum-1/0x0e71498a5acfb68900c0154baed9a36a2c45b6f2/); ethereum `0x4396bf...dc2f82` | ⚠️ Unaudited |
| MainnetActors | unknown | bsc | 15 deployments: ethereum `0x2ddcee...9429e2`; ethereum `0xccfdbf...7cb385`; bsc [`0x032953...339eca`](./contracts/bsc-56/0x0329538ed2a6b442a65c3fc3d32fea5a06339eca/); bsc `0x29a1e5...fa3153`; bsc `0x333ca7...a0af4f`; bsc `0x4baf25...76dce4`; bsc `0x5ba7c7...a21d02`; bsc `0x5db73f...8df880`; bsc `0x989c5e...4041b4`; bsc `0x9a9972...a01788`; bsc `0xa4a1ef...1899ca`; bsc `0xcc1140...e84add`; bsc `0xcfa76b...2466b4`; bsc `0xdbed1f...ffd93a`; bsc `0xedea31...584ca0` | ⚠️ Unaudited |
| MainnetKernelActors | unknown | bsc | 14 deployments: bsc [`0x04ec3e...28e0c1`](./contracts/bsc-56/0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1/); bsc `0x1c54f2...a725ad`; bsc `0x21f4a7...3dac66`; bsc `0x330164...c6a801`; bsc `0x3e2d6d...9df4eb`; bsc `0x5bda4d...71588d`; bsc `0x7206de...fc6620`; bsc `0x93fd6d...273d5f`; bsc `0x9a44dd...4aa146`; bsc `0xa4e3c8...765e13`; bsc `0xaff40d...a7d0b5`; bsc `0xb3c384...16b27c`; bsc `0xd9963d...52406c`; bsc `0xe3d8c3...e43e69` | ⚠️ Unaudited |
| MaxVaultViewer | core_logic | bsc | 8 deployments: ethereum `0x38585e...df5e8b`; ethereum `0x615635...e5c534`; ethereum `0x632e20...1e0ac5`; ethereum `0x84fe8e...9b574f`; bsc [`0x2f8fac...7d2985`](./contracts/bsc-56/0x2f8facc60511016fbd9a37f8533ad852447d2985/); bsc `0x4c9084...4cce49`; bsc `0xfebd26...f6b67b`; bsc `0xff4910...317bc0` | ⚠️ Unaudited |
| ParaswapValidator | unknown | ethereum | 2 deployments: ethereum [`0xc742e2...11712b`](./contracts/ethereum-1/0xc742e24a36e6105de681c244cbbf2cd4cf11712b/); ethereum `0xf22375...40f419` | ⚠️ Unaudited |
| Provider | unknown | ethereum | 9 deployments: ethereum [`0x084c21...62ec85`](./contracts/ethereum-1/0x084c2159ec1612a82b16711cc45a003ea162ec85/); ethereum `0xb03299...b6fca3`; bsc `0x0b26d0...e3ee35`; bsc `0x233838...9a1499`; bsc `0x75cdf9...1b8c36`; bsc `0xcff9d3...147d59`; bsc `0xd84cc5...a6a739`; bsc `0xe3522c...93d15c`; bsc `0xe5e9f6...71d0f4` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | 2 deployments: ethereum [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/); bsc `0xe5ae49...f6a744` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | [`0x40d5ff...652351`](./contracts/ethereum-1/0x40d5ff3e218f54f4982661a0464a298cf6652351/) | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | 2 deployments: ethereum [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/); ethereum `0xe439fe...26536e` | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | [`0x7b4b43...86fcaf`](./contracts/bsc-56/0x7b4b43f00cf80aabda8f72d61b129f1e7f86fcaf/) | ⚠️ Unaudited |
| StakingNode | unknown | ethereum | 2 deployments: ethereum [`0x56d43f...857117`](./contracts/ethereum-1/0x56d43f8c6c3891d081ad93b27419c37394857117/); ethereum `0x79388c...e65e1e` | ⚠️ Unaudited |
| StakingNodesManager | governance | ethereum | 3 deployments: ethereum [`0x8c33a1...59cd7d`](./contracts/ethereum-1/0x8c33a1d6d062db7b51f79702355771d44359cd7d/); ethereum `0x8e0b49...4d41ab`; ethereum `0xf1eb27...55a7ce` | ⚠️ Unaudited |
| TimelockController | governance | bsc | 34 deployments: ethereum `0x16748a...a319b3`; ethereum `0x1854b5...f34169`; ethereum `0x739711...db132d`; ethereum `0xa7f5c1...b6e96f`; ethereum `0xb5e2c3...680661`; bsc [`0x054dda...3262c1`](./contracts/bsc-56/0x054dda05505694ca92f3af0f51f93eb5f53262c1/); bsc `0x1db000...4fc974`; bsc `0x2f3fed...ca1f40`; bsc `0x422e63...acc5ce`; bsc `0x437794...8bf9aa`; bsc `0x49f08d...cf965f`; bsc `0x4cffbf...da0e70`; bsc `0x4ec7ad...ee94e4`; bsc `0x527c69...5abcb2`; bsc `0x53b40d...5981c1`; bsc `0x540af4...43d5c8`; bsc `0x58ec65...774aa2`; bsc `0x5e5f6a...01f292`; bsc `0x62201c...2ed81b`; bsc `0x81f34d...801b1f`; bsc `0x870fe5...5a7edb`; bsc `0xa1ece8...477cdd`; bsc `0xa6c9fc...20870b`; bsc `0xb97f60...f6f973`; bsc `0xbea8b8...94320e`; bsc `0xcade25...4cf9f9`; bsc `0xced6a6...90de5b`; bsc `0xcf48d2...d91234`; bsc `0xd7c83d...7ed06c`; bsc `0xdbab6c...e03d49`; bsc `0xdbf332...225040`; bsc `0xe698e3...4ab856`; bsc `0xe7f2ce...b90f1a`; bsc `0xf8d764...5e5958` | ⚠️ Unaudited |
| TokenStakingNode | token | ethereum | 2 deployments: ethereum [`0x28fd4c...9c41fd`](./contracts/ethereum-1/0x28fd4c04620d95c4bec9397e2d303937779c41fd/); ethereum `0x74ff5c...d43655` | ⚠️ Unaudited |
| TokenStakingNodesManager | governance | ethereum | 2 deployments: ethereum [`0x29ac77...747b6b`](./contracts/ethereum-1/0x29ac770abfa12b0ab726c5e6eb38124061747b6b/); ethereum `0x6fbd79...6adb2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 38 deployments: ethereum `0x42fb68...b8baab`; bsc [`0x0a4f24...06701d`](./contracts/bsc-56/0x0a4f2471aba6809e34aa9f6476d0835a7406701d/); bsc `0x1b7475...61eab4`; bsc `0x30d5a4...4318f0`; bsc `0x310e54...9c2b5f`; bsc `0x31280a...a05663`; bsc `0x3cd882...1c9e44`; bsc `0x3f574f...c31e58`; bsc `0x459265...72ba6e`; bsc `0x4e6272...f8c1a7`; bsc `0x552ab7...615578`; bsc `0x5e6a35...97474e`; bsc `0x61097d...69ed47`; bsc `0x633b17...8f24e0`; bsc `0x63b446...3fee43`; bsc `0x67aec6...905246`; bsc `0x6a60e6...699836`; bsc `0x76ee68...83b4a7`; bsc `0x7c81ee...162e6d`; bsc `0x7e0cfb...882fbc`; bsc `0x878546...9a9c9a`; bsc `0x91597e...8a16bb`; bsc `0x9bb84d...3fbe75`; bsc `0xae0b0e...cf30e1`; bsc `0xae8cf1...d1a726`; bsc `0xb1cfb0...c89059`; bsc `0xb240f4...e7e0b9`; bsc `0xb35c64...e6ca41`; bsc `0xba0738...016fd9`; bsc `0xc60268...26f801`; bsc `0xc82bfd...8d9748`; bsc `0xd38855...1585f1`; bsc `0xd3e7e4...01de56`; bsc `0xd58d73...571bc1`; bsc `0xd77621...4f25e2`; bsc `0xe840d5...961529`; bsc `0xf989ab...217d02`; bsc `0xfa9f90...9ad2de` | ⚠️ Unaudited |
| VaultLib | core_logic | ethereum | 3 deployments: ethereum [`0x5f0efd...76f235`](./contracts/ethereum-1/0x5f0efd70e5bb1862bb6e106bdc084a6b6476f235/); bsc `0xb85924...8c0614`; bsc `0xd19c84...85231b` | ⚠️ Unaudited |
| WithdrawalsProcessor | operational_periphery | ethereum | 3 deployments: ethereum [`0x487d9a...d7930d`](./contracts/ethereum-1/0x487d9a14941e34723bde973cabae3894bed7930d/); ethereum `0x4b2552...d5620f`; ethereum `0xd1cc0f...3a3fa7` | ⚠️ Unaudited |
| XReferralAdapter | adapter | bsc | [`0x8b890f...8cc60d`](./contracts/bsc-56/0x8b890f5498e5ef979ef872f43466dfbab68cc60d/) | ⚠️ Unaudited |
| YND | unknown | ethereum | 7 deployments: ethereum [`0x6770f0...fe7c74`](./contracts/ethereum-1/0x6770f0c1757ec7bb940b0e417ce16536fafe7c74/); ethereum `0x7159cc...8a45ba`; ethereum `0x8532da...b0f2fe`; ethereum `0x927679...dbcaac`; ethereum `0xa7d2f6...2f977e`; ethereum `0xa8c939...b23ff8`; ethereum `0xe746d2...282483` | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/) | ⚠️ Unaudited |
| ynETH | unknown | ethereum | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |
| ynViewer | periphery | ethereum | [`0xb088fe...08519d`](./contracts/ethereum-1/0xb088fe2ec4de9711390da7ca5a4bfd664b08519d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L2YnERC20Upgradeable | token | ethereum | 7 deployments: ethereum [`0x68589a...44ed5d`](./contracts/ethereum-1/0x68589adc7687a23ff2b06fb032b997f09b44ed5d/); optimism `0xdb8e54...af0511`; optimism `0xe231db...635a61`; bsc `0xdb8e54...af0511`; base `0xdb8e54...af0511`; arbitrum `0xdb8e54...af0511`; berachain `0xdb8e54...af0511` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2ed0eb...327557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc26328...8243c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd07049...f3dadd` | ❓ Unverified |
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
| ethereum | [`0x031ae4...9d6879`](./contracts/ethereum-1/0x031ae4a8a09b1779dbf69828356945fdf59d6879/) | AssetRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f503d...8bf0b3`](./contracts/bsc-56/0x0f503d3b3929d421b0a1c8b1fbf38e029f8bf0b3/) | BscContracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe77f43...9f4eaf`](./contracts/bsc-56/0xe77f4398a06bc83863f45b6b7101bc46c29f4eaf/) | ClisBnbStrategyRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20fc8d...cd9e7b`](./contracts/bsc-56/0x20fc8db0bee4cf37871db208182f03a10bcd9e7b/) | KernelClisVaultViewer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05f626...9ecfbd`](./contracts/bsc-56/0x05f6266941536b00127e18fd376bf7b6899ecfbd/) | KernelVaultViewer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e7149...45b6f2`](./contracts/ethereum-1/0x0e71498a5acfb68900c0154baed9a36a2c45b6f2/) | L1Contracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032953...339eca`](./contracts/bsc-56/0x0329538ed2a6b442a65c3fc3d32fea5a06339eca/) | MainnetActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ec3e...28e0c1`](./contracts/bsc-56/0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1/) | MainnetKernelActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x084c21...62ec85`](./contracts/ethereum-1/0x084c2159ec1612a82b16711cc45a003ea162ec85/) | Provider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/) | ProxyUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56d43f...857117`](./contracts/ethereum-1/0x56d43f8c6c3891d081ad93b27419c37394857117/) | StakingNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28fd4c...9c41fd`](./contracts/ethereum-1/0x28fd4c04620d95c4bec9397e2d303937779c41fd/) | TokenStakingNode | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29ac77...747b6b`](./contracts/ethereum-1/0x29ac770abfa12b0ab726c5e6eb38124061747b6b/) | TokenStakingNodesManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f0efd...76f235`](./contracts/ethereum-1/0x5f0efd70e5bb1862bb6e106bdc084a6b6476f235/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x487d9a...d7930d`](./contracts/ethereum-1/0x487d9a14941e34723bde973cabae3894bed7930d/) | WithdrawalsProcessor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6770f0...fe7c74`](./contracts/ethereum-1/0x6770f0c1757ec7bb940b0e417ce16536fafe7c74/) | YND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb088fe...08519d`](./contracts/ethereum-1/0xb088fe2ec4de9711390da7ca5a4bfd664b08519d/) | ynViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 1 |
| standard_library | 18 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
