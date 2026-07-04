# Agentic Audit Brief: YieldNest

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:17.849Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 141 unique implementations (418 raw deployments)
- DeFi Llama TVL: $18,891,692.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 89 project-authored contract(s) across 3 chain(s); 3 ERC4626 vaults, 7 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 23 common project-authored base contract(s) (proxy, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 502; live-surface contracts included: 388 (366 live, 22 unknown).
- Excluded by liveness: 114 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 30/123 (24.4%)
- Deployed-live implementations: 123 of 141 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 30/123
- Verified + Unaudited implementations: 93
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 141
- Raw deployments: 418
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 22 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 3.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 28 | 22.8% | 2025-05 |
| ChainSecurity | Tier 1 | 4 | 3.3% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AsyncWithdrawalLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4ce33...16610c`](./contracts/ethereum-1/0xa4ce33a1e22c79330873ba8010e69f0bd016610c/); ethereum `0xee25e8...322684` | ✅ Audited |
| ClisBnbStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x1cbfbc...5e2252`](./contracts/bsc-56/0x1cbfbc3cb909fb0bf0e511afae6cdba6ba5e2252/); bsc `0xa9ff5a...ced71e` | ✅ Audited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0x7390cd...5701e5`](./contracts/ethereum-1/0x7390cdfff38c8871ccb80e9b38ff88fe735701e5/) | ✅ Audited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0x92d904...5a68fc`](./contracts/ethereum-1/0x92d904019a92b0cafce3492abb95577c285a68fc/) | ✅ Audited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0xb1c635...36e94d`](./contracts/ethereum-1/0xb1c63581929d372f35c26327385e9ff6c636e94d/) | ✅ Audited |
| KernelStrategy | core_logic | bsc | n/a | 2 deployments: bsc [`0x78839c...606a56`](./contracts/bsc-56/0x78839ce14a8213779128ee4da6d75e1326606a56/); bsc `0xa40870...30782b` | ✅ Audited |
| OriginWithdrawalLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24c870...d48061`](./contracts/ethereum-1/0x24c8706ee3ef603929cb0d4467268b83c2d48061/); ethereum `0xa68479...4783a4` | ✅ Audited |
| Provider | unknown | ethereum | n/a | 15 deployments: ethereum [`0x084c21...62ec85`](./contracts/ethereum-1/0x084c2159ec1612a82b16711cc45a003ea162ec85/); ethereum `0x5a081b...38d7ff`; ethereum `0x671698...a142b1`; ethereum `0x977ff7...e562d7`; ethereum `0xb03299...b6fca3`; ethereum `0xd5bf05...f3b01d`; ethereum `0xe141be...382d5a`; ethereum `0xeb4dbb...dac508`; bsc `0x0b26d0...e3ee35`; bsc `0x233838...9a1499`; bsc `0x75cdf9...1b8c36`; bsc `0xcff9d3...147d59`; bsc `0xd84cc5...a6a739`; bsc `0xe3522c...93d15c`; bsc `0xe5e9f6...71d0f4` | ✅ Audited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x306ebe...eb5f72`](./contracts/ethereum-1/0x306ebed66642867b94b29752be37b8f20feb5f72/); ethereum `0x40d5ff...652351` | ✅ Audited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/); ethereum `0x863ba8...ff159b` | ✅ Audited |
| StakingNode | unknown | ethereum | n/a | 8 deployments: ethereum [`0x1bbcf4...a06402`](./contracts/ethereum-1/0x1bbcf4de1ef3ff0ee717d856fa8e603480a06402/); ethereum `0x3ee37b...0fbe2b`; ethereum `0x6a28af...fe5942`; ethereum `0x6a786b...6a26e1`; ethereum `0x79388c...e65e1e`; ethereum `0x98fc02...f4ace0`; ethereum `0xa8bd8f...fe929d`; ethereum `0xf8a37f...1d237b` | ✅ Audited |
| StakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21e86b...0ea06d`](./contracts/ethereum-1/0x21e86b28b0afec2c3f570a924a8ec969fc0ea06d/); ethereum `0x540af4...43d5c8` | ✅ Audited |
| StakingNodesManager | unknown | ethereum | n/a | 9 deployments: ethereum [`0x33ffb7...100626`](./contracts/ethereum-1/0x33ffb713c73cdf668b11296bb9b1c9a0c3100626/); ethereum `0x4b3fb7...40cdb7`; ethereum `0x6de59b...ea224b`; ethereum `0x7e020a...65b4cd`; ethereum `0x8e0b49...4d41ab`; ethereum `0x956b96...6967e5`; ethereum `0x98d664...a400d5`; ethereum `0xabd3a7...4cc811`; ethereum `0xdbf332...225040` | ✅ Audited |
| StakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c33a1...59cd7d`](./contracts/ethereum-1/0x8c33a1d6d062db7b51f79702355771d44359cd7d/); ethereum `0xf1eb27...55a7ce` | ✅ Audited |
| TokenStakingNode | unknown | ethereum | n/a | 4 deployments: ethereum [`0x74ff5c...d43655`](./contracts/ethereum-1/0x74ff5c9f93080d20d505ffa3cc291f5bfad43655/); ethereum `0x7573ee...e16f5c`; ethereum `0xc60268...26f801`; ethereum `0xc82bfd...8d9748` | ✅ Audited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x17e77f...8206da`](./contracts/ethereum-1/0x17e77f964538fed3adec3e8dbb6147da258206da/); ethereum `0x29ac77...747b6b`; ethereum `0x81f34d...801b1f` | ✅ Audited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22417e...006310`](./contracts/ethereum-1/0x22417e36dd2290f5a36d50112790bf6b61006310/); ethereum `0x592d1e...4ec647` | ✅ Audited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40edd9...46def4`](./contracts/ethereum-1/0x40edd919c65373eed356d26c6d7561569346def4/); ethereum `0xb03146...88243f` | ✅ Audited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b566c...30a0c3`](./contracts/ethereum-1/0x6b566cb6cddf7d140c59f84594756a151030a0c3/); ethereum `0x6fbd79...6adb2c` | ✅ Audited |
| Vault | core_logic | ethereum | n/a | [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/) | ✅ Audited |
| Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3db228...ddcb4b`](./contracts/ethereum-1/0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b/); ethereum `0x657d9a...c96dcb` | ✅ Audited |
| Vault | core_logic | bsc | n/a | [`0x32c830...0a2c5f`](./contracts/bsc-56/0x32c830f5c34122c6afb8ae87aba541b7900a2c5f/) | ✅ Audited |
| VaultLib | unknown | ethereum | n/a | 10 deployments: ethereum [`0x1894d6...ea9e11`](./contracts/ethereum-1/0x1894d6f986fcc8564b12f2fb2b8296531fea9e11/); ethereum `0x24024c...5b70f9`; ethereum `0x5f0efd...76f235`; ethereum `0x64096a...82c58b`; ethereum `0xb59f18...25c300`; ethereum `0xc6d480...0098d6`; ethereum `0xc89de4...35d8c6`; ethereum `0xe46adc...26a6b6`; bsc `0xb85924...8c0614`; bsc `0xd19c84...85231b` | ✅ Audited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1da2a0...b7e92b`](./contracts/ethereum-1/0x1da2a0fef0407974d00335ee623098082cb7e92b/); ethereum `0xea03aa...1e04fc` | ✅ Audited |
| Withdrawer | unknown | ethereum | n/a | [`0x2ad086...268fed`](./contracts/ethereum-1/0x2ad086e5e815bcb827336bd820bd39bf76268fed/) | ✅ Audited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x352766...8e88d5`](./contracts/ethereum-1/0x3527663fa14f1799ffdf54fdc7e721d2fb8e88d5/); ethereum `0xe4d258...209cd7` | ✅ Audited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fc377...873b4a`](./contracts/ethereum-1/0x3fc3771cf29b96069644ea249f3f036069873b4a/); ethereum `0xa55dc4...9b44f7` | ✅ Audited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb64524...3deb54`](./contracts/ethereum-1/0xb64524af495465c7586337257259b0b2503deb54/); ethereum `0xe83289...75d6c7` | ✅ Audited |
| ynEigen | unknown | ethereum | n/a | [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/) | ✅ Audited |
| ynETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/); ethereum `0x87e2a5...43710a` | ✅ Audited |

### ⚠️ Verified + Unaudited (93)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingModule | unknown | ethereum | n/a | [`0x77fb6f...de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | ⚠️ Unaudited |
| AccountingToken | unknown | ethereum | n/a | [`0xb39822...071421`](./contracts/ethereum-1/0xb39822a4212b63c90c674a5e608cecbf4b071421/) | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x031ae4...9d6879`](./contracts/ethereum-1/0x031ae4a8a09b1779dbf69828356945fdf59d6879/); ethereum `0x323c93...4270fd` | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0734ca...904101`](./contracts/ethereum-1/0x0734ca72aa1b8f42e1364924c8ae01ffdb904101/); ethereum `0x54ab85...5bafce` | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x081755...20f4a9`](./contracts/ethereum-1/0x081755f41f20697cbabaef7315a964bf3620f4a9/); ethereum `0xedb597...f62576` | ⚠️ Unaudited |
| BaseRules | unknown | ethereum | n/a | [`0x3f582d...0d2410`](./contracts/ethereum-1/0x3f582d92e96cd5d61a29fac2badf8d1e4f0d2410/) | ⚠️ Unaudited |
| Connector | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc98dce...0919cb`](./contracts/ethereum-1/0xc98dce50f707f7563ec8ba0274b43bcf940919cb/); ethereum `0xd4f8cc...eb514d` | ⚠️ Unaudited |
| ERC4626WrapperStrategy | core_logic | ethereum | n/a | [`0xd1573d...cff141`](./contracts/ethereum-1/0xd1573de52fff44dd92d275e20fdab0296ccff141/) | ⚠️ Unaudited |
| FlexStrategy | unknown | ethereum | n/a | [`0xf151b8...e29153`](./contracts/ethereum-1/0xf151b80d9be891fdc97279f373eefd6289e29153/) | ⚠️ Unaudited |
| FlexStrategyDeployer | unknown | ethereum | n/a | [`0x7f275b...d36938`](./contracts/ethereum-1/0x7f275b3c502f0b685ef477a1357093c88ed36938/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 4 deployments: ethereum [`0x8e20ea...c4de2e`](./contracts/ethereum-1/0x8e20eaf121154b69b7b880fa6c617c0175c4de2e/); ethereum `0xa08f39...6141c3`; ethereum `0xdf51b7...0028ef`; ethereum `0xfcad67...5d6975` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x721688...85d436`](./contracts/bsc-56/0x721688652dea9cabec70bd99411eaeab9485d436/) | ⚠️ Unaudited |
| KernelClisStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x032769...667834`](./contracts/bsc-56/0x03276919f8b6ee37ba8ee4ee68a1c5f48b667834/); bsc `0x445af1...3cd980` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x2a21a9...c05829`](./contracts/bsc-56/0x2a21a955191f83b7255a21e752cd5a5356c05829/); bsc `0xf98f91...8c7762` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | bsc | n/a | 4 deployments: bsc [`0x532774...c76f71`](./contracts/bsc-56/0x532774c8ed528edbebbaccda9257bfe167c76f71/); bsc `0xbdeb0b...dc4235`; bsc `0xdf4e25...60e835`; bsc `0xf5999f...f364fc` | ⚠️ Unaudited |
| KernelClisVaultViewer | unknown | bsc | n/a | 4 deployments: bsc [`0x20fc8d...cd9e7b`](./contracts/bsc-56/0x20fc8db0bee4cf37871db208182f03a10bcd9e7b/); bsc `0x3afcd6...0a043d`; bsc `0xccf06a...d7eff3`; bsc `0xddb4eb...0fa8f1` | ⚠️ Unaudited |
| KernelClisVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0xc0eefc...81fe77`](./contracts/bsc-56/0xc0eefcc27b22c3e4304b3df95649d871f681fe77/); bsc `0xe8bea9...d8d6ee` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 14 deployments: bsc [`0x073929...05b6ae`](./contracts/bsc-56/0x073929c230f2898f227f765c135204fa9b05b6ae/); bsc `0x1776de...731e85`; bsc `0x315840...69db9a`; bsc `0x3936ad...228dcc`; bsc `0x40eaa8...f1dc22`; bsc `0x58e11a...13add9`; bsc `0x5de8c7...29762c`; bsc `0x6254fa...6e30bd`; bsc `0x92e009...d47f97`; bsc `0xa5a7a2...dc186d`; bsc `0xaa33d2...f6465c`; bsc `0xb6582f...f6822f`; bsc `0xef2f5b...b9b9bd`; bsc `0xff2501...787735` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x0e6464...05acb3`](./contracts/bsc-56/0x0e64643d8073b82ac6d6a9e7d1d6b6689a05acb3/); bsc `0x1b0157...224ab7` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x132376...adf547`](./contracts/bsc-56/0x132376b153d3cff94615fe25712db12caaadf547/); bsc `0x835349...c98a76` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x1d9279...87287d`](./contracts/bsc-56/0x1d92795cfdeb1340a5a5a9493de752b39287287d/); bsc `0x517fa7...bcc802` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x43a224...a16119`](./contracts/bsc-56/0x43a22463517b57ce4fd52dc6b33f7d58b8a16119/); bsc `0x6ec6b7...9d59a1` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x504a89...e7315b`](./contracts/bsc-56/0x504a89a3ed6a51d17d4f936e58476c779ee7315b/); bsc `0x5a04d4...b81cf8` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x6a786b...6a26e1`](./contracts/bsc-56/0x6a786b8047aec8cc6b05f31351377404286a26e1/); bsc `0x7e020a...65b4cd` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x99155a...c0ee81`](./contracts/bsc-56/0x99155a7fc5d76114dbb71d7ebcf412ee2fc0ee81/); bsc `0xebdb33...de4b5c` | ⚠️ Unaudited |
| KernelStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0xa0f29c...27e04d`](./contracts/bsc-56/0xa0f29c1ef5c43fd213a6cd788f72c9abbc27e04d/); bsc `0xc64f2b...37581d` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | bsc | n/a | 15 deployments: bsc [`0x05f626...9ecfbd`](./contracts/bsc-56/0x05f6266941536b00127e18fd376bf7b6899ecfbd/); bsc `0x0c12a3...c6f0e5`; bsc `0x0e5bc7...fb9229`; bsc `0x1f18d0...6fe250`; bsc `0x2275fe...1762b5`; bsc `0x29fd26...d7d151`; bsc `0x40391c...1835f0`; bsc `0x5b59f9...7b006f`; bsc `0x6cce89...55ee98`; bsc `0xa70da4...01edf4`; bsc `0xb45c74...cba5e3`; bsc `0xcd14b7...a945e7`; bsc `0xd25b69...08b622`; bsc `0xda6bc0...34b93e`; bsc `0xec9063...c73d95` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0x0e4ffa...deaed8`](./contracts/bsc-56/0x0e4ffaaf990b1398e5ae9407602473a793deaed8/); bsc `0x39c6ac...5eec5a` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0x209fa3...d60e28`](./contracts/bsc-56/0x209fa3da991189fa7d2054c69004a5d2d1d60e28/); bsc `0x7cb1e7...124d11` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0x26b69e...1c5af3`](./contracts/bsc-56/0x26b69ee6fca1e0cd60ea13d198aeef18581c5af3/); bsc `0x849a31...00877f` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0x545a2c...974e88`](./contracts/bsc-56/0x545a2c7cdc386057978375583e662b01c0974e88/); bsc `0x77c601...3432b7` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0x728f22...743839`](./contracts/bsc-56/0x728f22ec99bc2f949243369e9ddc95ad1b743839/); bsc `0x7c984e...28e183` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | optimism | n/a | [`0xdb8e54...af0511`](./contracts/optimism-10/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | optimism | n/a | [`0xe231db...635a61`](./contracts/optimism-10/0xe231db5f348d709239ef1741ea30961b3b635a61/) | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | bsc | n/a | [`0xdb8e54...af0511`](./contracts/bsc-56/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | base | n/a | [`0xdb8e54...af0511`](./contracts/base-8453/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x345f73...9f5b18`](./contracts/ethereum-1/0x345f73efd1cef9912340010e8f7e8192b49f5b18/); ethereum `0x3e30b4...4ea070` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaedc83...5bba01`](./contracts/ethereum-1/0xaedc83f607126b4d2437f79285e2c635685bba01/); ethereum `0xb658cf...9f20d9` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | [`0xc5ba40...e2d214`](./contracts/ethereum-1/0xc5ba40447f057d28442dc7d2ca7b2d7cf4e2d214/) | ⚠️ Unaudited |
| LSDWrapper | unknown | ethereum | n/a | [`0x99db76...1d6992`](./contracts/ethereum-1/0x99db7619c018d61dbc2822767b63240d311d6992/) | ⚠️ Unaudited |
| MainnetActors | unknown | bsc | n/a | 21 deployments: ethereum `0x2ddcee...9429e2`; ethereum `0x447aad...d669c5`; ethereum `0x51ad86...401bc3`; ethereum `0x71635d...80393c`; ethereum `0xba4cc4...eb64fb`; ethereum `0xccfdbf...7cb385`; ethereum `0xd9e79b...0adfa2`; ethereum `0xdd6f2c...7a9d0d`; bsc [`0x032953...339eca`](./contracts/bsc-56/0x0329538ed2a6b442a65c3fc3d32fea5a06339eca/); bsc `0x29a1e5...fa3153`; bsc `0x333ca7...a0af4f`; bsc `0x4baf25...76dce4`; bsc `0x5ba7c7...a21d02`; bsc `0x5db73f...8df880`; bsc `0x989c5e...4041b4`; bsc `0x9a9972...a01788`; bsc `0xa4a1ef...1899ca`; bsc `0xcc1140...e84add`; bsc `0xcfa76b...2466b4`; bsc `0xdbed1f...ffd93a`; bsc `0xedea31...584ca0` | ⚠️ Unaudited |
| MainnetKernelActors | unknown | bsc | n/a | 14 deployments: bsc [`0x04ec3e...28e0c1`](./contracts/bsc-56/0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1/); bsc `0x1c54f2...a725ad`; bsc `0x21f4a7...3dac66`; bsc `0x330164...c6a801`; bsc `0x3e2d6d...9df4eb`; bsc `0x5bda4d...71588d`; bsc `0x7206de...fc6620`; bsc `0x93fd6d...273d5f`; bsc `0x9a44dd...4aa146`; bsc `0xa4e3c8...765e13`; bsc `0xaff40d...a7d0b5`; bsc `0xb3c384...16b27c`; bsc `0xd9963d...52406c`; bsc `0xe3d8c3...e43e69` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f2b81...bea74e`](./contracts/ethereum-1/0x0f2b81368781f1c846c8b2ad48bacb45a0bea74e/); ethereum `0xeed274...9e5c81` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x38585e...df5e8b`](./contracts/ethereum-1/0x38585e32b66961c02abacbb4db76825a00df5e8b/); ethereum `0x84fe8e...9b574f` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x615635...e5c534`](./contracts/ethereum-1/0x615635789e849ab468f721ea4d470eaff4e5c534/); ethereum `0x632e20...1e0ac5` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0x2f8fac...7d2985`](./contracts/bsc-56/0x2f8facc60511016fbd9a37f8533ad852447d2985/); bsc `0x4c9084...4cce49` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | n/a | 7 deployments: ethereum [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/); ethereum `0x08d8bc...23db89`; ethereum `0x39300e...3bf326`; ethereum `0x7b3922...a95ab9`; ethereum `0xc32ff5...217a63`; ethereum `0xe96221...504903`; bsc `0xe5ae49...f6a744` | ⚠️ Unaudited |
| RedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x73bc33...88d55e`](./contracts/ethereum-1/0x73bc33999c34a5126ca19dc900f22690c288d55e/); ethereum `0x9892a4...a6f14a` | ⚠️ Unaudited |
| ReferralDepositAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41e60c...21c3d7`](./contracts/ethereum-1/0x41e60cf98075315e4d6133a9dc25a2847b21c3d7/); ethereum `0xd6bba2...68b4a1` | ⚠️ Unaudited |
| ReferralDepositAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x86149f...232e00`](./contracts/ethereum-1/0x86149f5a512c3b7ec123d081e5e6193a63232e00/); ethereum `0xe8edf9...bd8a37` | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77b26a...9d6f99`](./contracts/ethereum-1/0x77b26a2ebb73ce9bdf5c8c44cb98e98f089d6f99/); ethereum `0xa469cd...74f2ec` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4975e6...7b7dc7`](./contracts/ethereum-1/0x4975e6c808ddb8fc6a9bc48f6dfd4398bf7b7dc7/); ethereum `0x5de8c7...29762c` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa98e86...b91582`](./contracts/ethereum-1/0xa98e8652daf2407839b18f4e215d86d88eb91582/); ethereum `0xe439fe...26536e` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd3e7e4...01de56`](./contracts/ethereum-1/0xd3e7e46c62b0fea4cd73920c65971b67ea01de56/); ethereum `0xd47b9c...0b17bf` | ⚠️ Unaudited |
| RewardsSweeper | unknown | ethereum | n/a | [`0xb94b57...5fbde5`](./contracts/ethereum-1/0xb94b57c8c0c3151e7a3fad815e10e358215fbde5/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0x7b4b43...86fcaf`](./contracts/bsc-56/0x7b4b43f00cf80aabda8f72d61b129f1e7f86fcaf/) | ⚠️ Unaudited |
| SingleVault | core_logic | bsc | n/a | [`0x304b58...74b509`](./contracts/bsc-56/0x304b5845b9114182ecb4495be4c91a273b74b509/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | 43 deployments: ethereum `0x097162...5158f1`; ethereum `0x16748a...a319b3`; ethereum `0x24590b...65af94`; ethereum `0x3e469b...2edafe`; ethereum `0x4e1ba8...81a8a4`; ethereum `0x5671ae...b772c3`; ethereum `0x617ecc...4b2f70`; ethereum `0x67f1fc...5fcb9d`; ethereum `0x739711...db132d`; ethereum `0x8735dd...96566b`; ethereum `0x8b25ae...deee73`; ethereum `0xbb73f8...1d017a`; ethereum `0xc6ca36...42d46b`; ethereum `0xfec7e2...62c2bf`; bsc [`0x054dda...3262c1`](./contracts/bsc-56/0x054dda05505694ca92f3af0f51f93eb5f53262c1/); bsc `0x1db000...4fc974`; bsc `0x2f3fed...ca1f40`; bsc `0x422e63...acc5ce`; bsc `0x437794...8bf9aa`; bsc `0x49f08d...cf965f`; bsc `0x4cffbf...da0e70`; bsc `0x4ec7ad...ee94e4`; bsc `0x527c69...5abcb2`; bsc `0x53b40d...5981c1`; bsc `0x540af4...43d5c8`; bsc `0x58ec65...774aa2`; bsc `0x5e5f6a...01f292`; bsc `0x62201c...2ed81b`; bsc `0x81f34d...801b1f`; bsc `0x870fe5...5a7edb`; bsc `0xa1ece8...477cdd`; bsc `0xa6c9fc...20870b`; bsc `0xb97f60...f6f973`; bsc `0xbea8b8...94320e`; bsc `0xcade25...4cf9f9`; bsc `0xced6a6...90de5b`; bsc `0xcf48d2...d91234`; bsc `0xd7c83d...7ed06c`; bsc `0xdbab6c...e03d49`; bsc `0xdbf332...225040`; bsc `0xe698e3...4ab856`; bsc `0xe7f2ce...b90f1a`; bsc `0xf8d764...5e5958` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 7 deployments: ethereum [`0x237bc9...9a1119`](./contracts/ethereum-1/0x237bc92d4650fa44133dfe6369b5198da09a1119/); ethereum `0x686620...405dc2`; ethereum `0x8059c1...4d726e`; ethereum `0x97790d...98d0be`; ethereum `0xe7c675...9691b7`; ethereum `0xe7d43a...78a6fa`; ethereum `0xeafbb3...2ddf02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42fb68...b8baab`](./contracts/ethereum-1/0x42fb68291c17c4e2ebdb811dff9f741465b8baab/); ethereum `0xd07049...f3dadd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x514d0a...52f365`](./contracts/ethereum-1/0x514d0ac9bfaf631ac7b303564ba1c822bc52f365/); ethereum `0xcb45da...93cfce` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9633ff...15ee84`](./contracts/ethereum-1/0x9633ff38878a2dfe853cfc6067dd1a241015ee84/); ethereum `0xd56c14...56a4dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 37 deployments: bsc [`0x0a4f24...06701d`](./contracts/bsc-56/0x0a4f2471aba6809e34aa9f6476d0835a7406701d/); bsc `0x1b7475...61eab4`; bsc `0x30d5a4...4318f0`; bsc `0x310e54...9c2b5f`; bsc `0x31280a...a05663`; bsc `0x3cd882...1c9e44`; bsc `0x3f574f...c31e58`; bsc `0x459265...72ba6e`; bsc `0x4e6272...f8c1a7`; bsc `0x552ab7...615578`; bsc `0x5e6a35...97474e`; bsc `0x61097d...69ed47`; bsc `0x633b17...8f24e0`; bsc `0x63b446...3fee43`; bsc `0x67aec6...905246`; bsc `0x6a60e6...699836`; bsc `0x76ee68...83b4a7`; bsc `0x7c81ee...162e6d`; bsc `0x7e0cfb...882fbc`; bsc `0x878546...9a9c9a`; bsc `0x91597e...8a16bb`; bsc `0x9bb84d...3fbe75`; bsc `0xae0b0e...cf30e1`; bsc `0xae8cf1...d1a726`; bsc `0xb1cfb0...c89059`; bsc `0xb240f4...e7e0b9`; bsc `0xb35c64...e6ca41`; bsc `0xba0738...016fd9`; bsc `0xc60268...26f801`; bsc `0xc82bfd...8d9748`; bsc `0xd38855...1585f1`; bsc `0xd3e7e4...01de56`; bsc `0xd58d73...571bc1`; bsc `0xd77621...4f25e2`; bsc `0xe840d5...961529`; bsc `0xf989ab...217d02`; bsc `0xfa9f90...9ad2de` | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | 7 deployments: ethereum `0x3be73e...9c4e73`; ethereum `0xc1c5b1...bc62c8`; ethereum `0xd91fe1...4e0402`; bsc [`0x1095f8...064cf5`](./contracts/bsc-56/0x1095f85e7f31f0d3d94612738f13152763064cf5/); bsc `0x741ab3...d02bdf`; bsc `0xce11f5...0f4978`; bsc `0xf661a9...f02d0f` | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | 2 deployments: bsc [`0x41f928...216ed4`](./contracts/bsc-56/0x41f92836f8d7a5866991686aa60e1f7c28216ed4/); bsc `0xffc262...3fe84c` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0bc9bc...0aa67b`](./contracts/ethereum-1/0x0bc9bc81ad379810b36ad5cc95387112990aa67b/); ethereum `0x6ac38a...2185cd` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42d3ee...9360a1`](./contracts/ethereum-1/0x42d3eeb30ca4abe004ca5214b3d4177d149360a1/); ethereum `0x60d812...d9dcf3` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8face3...4d60b4`](./contracts/ethereum-1/0x8face3283e20b19d98a7a132274b69c1304d60b4/); ethereum `0xaac93a...0a5d64` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x131d4f...426643`](./contracts/ethereum-1/0x131d4f89b1e0387c0d2278e8c375f4c802426643/); ethereum `0x503895...e5b340` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b2552...d5620f`](./contracts/ethereum-1/0x4b2552e5b1cc75d5f499dd76b0317aaf0ad5620f/); ethereum `0x6d052c...6c5fba` | ⚠️ Unaudited |
| WithdrawerConfigurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf2c5c0...3d427a`](./contracts/ethereum-1/0xf2c5c018c983dc9455efeba22e3a0150143d427a/); ethereum `0xf8dad4...35d9d1` | ⚠️ Unaudited |
| WithdrawerConfigurer | unknown | ethereum | n/a | [`0x0a4a9c...68cf89`](./contracts/ethereum-1/0x0a4a9c17e20bed3e9fedc52f600e07f2bd68cf89/) | ⚠️ Unaudited |
| WrappedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f574f...c31e58`](./contracts/ethereum-1/0x3f574ff13a9540c3e7844704e962b1b186c31e58/); ethereum `0xda7d20...28e574` | ⚠️ Unaudited |
| XReferralAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x80ff99...cb234b`](./contracts/ethereum-1/0x80ff998869294238dc2ae0b8c643a59b44cb234b/); ethereum `0xdb7aa0...8e3fc0` | ⚠️ Unaudited |
| XReferralAdapter | unknown | bsc | n/a | [`0x8b890f...8cc60d`](./contracts/bsc-56/0x8b890f5498e5ef979ef872f43466dfbab68cc60d/) | ⚠️ Unaudited |
| YieldNestOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa96a27...2f1038`](./contracts/ethereum-1/0xa96a2716df5133b2fdc2ff367e51c609172f1038/); ethereum `0xf592cd...d4a59b` | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0x5cc73a...05d222`](./contracts/ethereum-1/0x5cc73aaa18045cebb41d7611ac1ff6298105d222/) | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0xb06084...57d189`](./contracts/ethereum-1/0xb060841150adc3707e4cd37f9a7833a2a957d189/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x0027da...20f827`](./contracts/ethereum-1/0x0027da0545fe5e5d4fb80e8e6fc78091ab20f827/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x6254fa...6e30bd`](./contracts/ethereum-1/0x6254faa72a40d8c1f4051fed8b33689f8d6e30bd/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x9e7215...6753c0`](./contracts/ethereum-1/0x9e72155d301a6555dc565315be72d295c76753c0/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0x9b933d...bef28f`](./contracts/ethereum-1/0x9b933d84fac0782f3b275d76b64a0dbf6fbef28f/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0xc16fef...2e64da`](./contracts/ethereum-1/0xc16fef607b58bb8fa4a1433ceb09663c9c2e64da/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0xc7cccf...a0ad29`](./contracts/ethereum-1/0xc7cccfebb13e1cabd716187aa6ce378d71a0ad29/) | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f503d...8bf0b3`](./contracts/ethereum-1/0x0f503d3b3929d421b0a1c8b1fbf38e029f8bf0b3/); ethereum `0xcebdee...fff482` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x151d63...27a936`](./contracts/ethereum-1/0x151d63b006516b2aa09771e94775cf10ff27a936/); ethereum `0xd64b76...390451` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d6e53...9c5caf`](./contracts/ethereum-1/0x5d6e53c42e3b37f82f693937bc508940769c5caf/); ethereum `0xe1a2a7...b0fed5` | ⚠️ Unaudited |
| YnETHx | unknown | ethereum | n/a | [`0xc46c1f...69299a`](./contracts/ethereum-1/0xc46c1f2d7b6c34ffd5c6cc92a071e1c7e069299a/) | ⚠️ Unaudited |
| YnETHxConfigurer | unknown | ethereum | n/a | [`0x3794d5...4ffb7b`](./contracts/ethereum-1/0x3794d53a890ee7e6b1515d7e053b2e51934ffb7b/) | ⚠️ Unaudited |
| ynLSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fd558...e43790`](./contracts/ethereum-1/0x7fd55817a481b192ca34998624d0d8eabce43790/); ethereum `0xe42de0...d9cf03` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cfab6...9ca36e`](./contracts/ethereum-1/0x2cfab6562507171bdc8294b156d3e1e5669ca36e/); ethereum `0x7ae221...3ed9f0` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa40565...d982f0`](./contracts/ethereum-1/0xa405650964a6cadb7b439cf9c202436fe8d982f0/); ethereum `0xc70c9b...6952e0` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | [`0xf0207f...c93ecf`](./contracts/ethereum-1/0xf0207ffa0b793e009df9df62fee95b8fc6c93ecf/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x30433f40303a4f520b0df00be5a9970d000fd9b4) | proxy | berachain | n/a | `0xdb8e54...af0511` | ❓ Unverified |
| Proxy (impl: 0x51e47f6739a9a6fce4817aa7bce388e78de50574) | proxy | arbitrum | n/a | `0xdb8e54...af0511` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed0eb...327557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60ee80...394769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x704906...394c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951fa1...a40949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7dd60...325912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc26328...8243c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc31432...25992f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcee58d...7db09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf36f2...4f27a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2886c...0b864f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaa59b...671d5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21cbb2...f6d46e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fda22...734871` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ed294...bc06a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x839325...a9b7b1` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x0ce01d...bc1576` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 3 | n/a |
| [2024-05-07-zokyo-yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-05-07-zokyo-yieldnest_protocol_audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 2 | n/a |
| [chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 3 | n/a |
| [chainsecurity_yieldnest_protocol_audit_aug_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 4 | n/a |
| [composable_security_yieldnest_jan_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 4 | n/a |
| [yieldnest_clisbnb_strategy_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [yieldnest_default_asset_index_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 3 | n/a |
| [yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 38 | high |
| [zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 3 | n/a |
| [zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 37 | high |
| [zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 141 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=23, extraction_exact=77

Zero-match audit list:

- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf
- [6078] zokyo_yneth_audit_yieldnest_april_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
