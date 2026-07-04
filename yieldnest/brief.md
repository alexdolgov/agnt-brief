# Agentic Audit Brief: YieldNest

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.709Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 65 unique implementations (235 raw deployments)
- DeFi Llama TVL: $18,891,692.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 89 project-authored contract(s) across 3 chain(s); 3 ERC4626 vaults, 7 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 23 common project-authored base contract(s) (proxy, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 293; live-surface contracts included: 234 (224 live, 10 unknown).
- Excluded by liveness: 59 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/51 (29.4%)
- Deployed-live implementations: 56 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/56
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 65
- Raw deployments: 235
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 7.8% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 13 | 23.2% | 2025-05 |
| ChainSecurity | Tier 1 | 4 | 7.1% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClisBnbStrategy | unknown | bsc | n/a | 2 deployments: bsc [`0x1cbfbc...5e2252`](./contracts/bsc-56/0x1cbfbc3cb909fb0bf0e511afae6cdba6ba5e2252/); bsc `0xa9ff5a...ced71e` | ✅ Audited |
| KernelStrategy | core_logic | bsc | n/a | 2 deployments: bsc [`0x78839c...606a56`](./contracts/bsc-56/0x78839ce14a8213779128ee4da6d75e1326606a56/); bsc `0xa40870...30782b` | ✅ Audited |
| Provider | unknown | ethereum | n/a | 9 deployments: ethereum [`0x084c21...62ec85`](./contracts/ethereum-1/0x084c2159ec1612a82b16711cc45a003ea162ec85/); ethereum `0xb03299...b6fca3`; bsc `0x0b26d0...e3ee35`; bsc `0x233838...9a1499`; bsc `0x75cdf9...1b8c36`; bsc `0xcff9d3...147d59`; bsc `0xd84cc5...a6a739`; bsc `0xe3522c...93d15c`; bsc `0xe5e9f6...71d0f4` | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | n/a | [`0x40d5ff...652351`](./contracts/ethereum-1/0x40d5ff3e218f54f4982661a0464a298cf6652351/) | ✅ Audited |
| RewardsReceiver | unknown | ethereum | n/a | [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/) | ✅ Audited |
| StakingNode | unknown | ethereum | n/a | [`0x79388c...e65e1e`](./contracts/ethereum-1/0x79388c8cc46069c0e3f285f053692d7397e65e1e/) | ✅ Audited |
| StakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e0b49...4d41ab`](./contracts/ethereum-1/0x8e0b49b4a4384d812bc6f55fa6412547524d41ab/); ethereum `0xf1eb27...55a7ce` | ✅ Audited |
| TokenStakingNode | unknown | ethereum | n/a | [`0x74ff5c...d43655`](./contracts/ethereum-1/0x74ff5c9f93080d20d505ffa3cc291f5bfad43655/) | ✅ Audited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x29ac77...747b6b`](./contracts/ethereum-1/0x29ac770abfa12b0ab726c5e6eb38124061747b6b/); ethereum `0x6fbd79...6adb2c` | ✅ Audited |
| Vault | core_logic | ethereum | n/a | [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/) | ✅ Audited |
| Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3db228...ddcb4b`](./contracts/ethereum-1/0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b/); ethereum `0x657d9a...c96dcb` | ✅ Audited |
| Vault | core_logic | bsc | n/a | [`0x32c830...0a2c5f`](./contracts/bsc-56/0x32c830f5c34122c6afb8ae87aba541b7900a2c5f/) | ✅ Audited |
| VaultLib | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5f0efd...76f235`](./contracts/ethereum-1/0x5f0efd70e5bb1862bb6e106bdc084a6b6476f235/); bsc `0xb85924...8c0614`; bsc `0xd19c84...85231b` | ✅ Audited |
| ynEigen | unknown | ethereum | n/a | [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/) | ✅ Audited |
| ynETH | unknown | ethereum | n/a | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626WrapperStrategy | core_logic | ethereum | n/a | [`0xd1573d...cff141`](./contracts/ethereum-1/0xd1573de52fff44dd92d275e20fdab0296ccff141/) | ⚠️ Unaudited |
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
| MainnetActors | unknown | bsc | n/a | 15 deployments: ethereum `0x2ddcee...9429e2`; ethereum `0xccfdbf...7cb385`; bsc [`0x032953...339eca`](./contracts/bsc-56/0x0329538ed2a6b442a65c3fc3d32fea5a06339eca/); bsc `0x29a1e5...fa3153`; bsc `0x333ca7...a0af4f`; bsc `0x4baf25...76dce4`; bsc `0x5ba7c7...a21d02`; bsc `0x5db73f...8df880`; bsc `0x989c5e...4041b4`; bsc `0x9a9972...a01788`; bsc `0xa4a1ef...1899ca`; bsc `0xcc1140...e84add`; bsc `0xcfa76b...2466b4`; bsc `0xdbed1f...ffd93a`; bsc `0xedea31...584ca0` | ⚠️ Unaudited |
| MainnetKernelActors | unknown | bsc | n/a | 14 deployments: bsc [`0x04ec3e...28e0c1`](./contracts/bsc-56/0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1/); bsc `0x1c54f2...a725ad`; bsc `0x21f4a7...3dac66`; bsc `0x330164...c6a801`; bsc `0x3e2d6d...9df4eb`; bsc `0x5bda4d...71588d`; bsc `0x7206de...fc6620`; bsc `0x93fd6d...273d5f`; bsc `0x9a44dd...4aa146`; bsc `0xa4e3c8...765e13`; bsc `0xaff40d...a7d0b5`; bsc `0xb3c384...16b27c`; bsc `0xd9963d...52406c`; bsc `0xe3d8c3...e43e69` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x38585e...df5e8b`](./contracts/ethereum-1/0x38585e32b66961c02abacbb4db76825a00df5e8b/); ethereum `0x84fe8e...9b574f` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x615635...e5c534`](./contracts/ethereum-1/0x615635789e849ab468f721ea4d470eaff4e5c534/); ethereum `0x632e20...1e0ac5` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | bsc | n/a | 2 deployments: bsc [`0x2f8fac...7d2985`](./contracts/bsc-56/0x2f8facc60511016fbd9a37f8533ad852447d2985/); bsc `0x4c9084...4cce49` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | n/a | 2 deployments: ethereum [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/); bsc `0xe5ae49...f6a744` | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0x7b4b43...86fcaf`](./contracts/bsc-56/0x7b4b43f00cf80aabda8f72d61b129f1e7f86fcaf/) | ⚠️ Unaudited |
| SingleVault | core_logic | bsc | n/a | [`0x304b58...74b509`](./contracts/bsc-56/0x304b5845b9114182ecb4495be4c91a273b74b509/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | 31 deployments: ethereum `0x16748a...a319b3`; ethereum `0x739711...db132d`; bsc [`0x054dda...3262c1`](./contracts/bsc-56/0x054dda05505694ca92f3af0f51f93eb5f53262c1/); bsc `0x1db000...4fc974`; bsc `0x2f3fed...ca1f40`; bsc `0x422e63...acc5ce`; bsc `0x437794...8bf9aa`; bsc `0x49f08d...cf965f`; bsc `0x4cffbf...da0e70`; bsc `0x4ec7ad...ee94e4`; bsc `0x527c69...5abcb2`; bsc `0x53b40d...5981c1`; bsc `0x540af4...43d5c8`; bsc `0x58ec65...774aa2`; bsc `0x5e5f6a...01f292`; bsc `0x62201c...2ed81b`; bsc `0x81f34d...801b1f`; bsc `0x870fe5...5a7edb`; bsc `0xa1ece8...477cdd`; bsc `0xa6c9fc...20870b`; bsc `0xb97f60...f6f973`; bsc `0xbea8b8...94320e`; bsc `0xcade25...4cf9f9`; bsc `0xced6a6...90de5b`; bsc `0xcf48d2...d91234`; bsc `0xd7c83d...7ed06c`; bsc `0xdbab6c...e03d49`; bsc `0xdbf332...225040`; bsc `0xe698e3...4ab856`; bsc `0xe7f2ce...b90f1a`; bsc `0xf8d764...5e5958` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42fb68...b8baab`](./contracts/ethereum-1/0x42fb68291c17c4e2ebdb811dff9f741465b8baab/); ethereum `0xd07049...f3dadd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 37 deployments: bsc [`0x0a4f24...06701d`](./contracts/bsc-56/0x0a4f2471aba6809e34aa9f6476d0835a7406701d/); bsc `0x1b7475...61eab4`; bsc `0x30d5a4...4318f0`; bsc `0x310e54...9c2b5f`; bsc `0x31280a...a05663`; bsc `0x3cd882...1c9e44`; bsc `0x3f574f...c31e58`; bsc `0x459265...72ba6e`; bsc `0x4e6272...f8c1a7`; bsc `0x552ab7...615578`; bsc `0x5e6a35...97474e`; bsc `0x61097d...69ed47`; bsc `0x633b17...8f24e0`; bsc `0x63b446...3fee43`; bsc `0x67aec6...905246`; bsc `0x6a60e6...699836`; bsc `0x76ee68...83b4a7`; bsc `0x7c81ee...162e6d`; bsc `0x7e0cfb...882fbc`; bsc `0x878546...9a9c9a`; bsc `0x91597e...8a16bb`; bsc `0x9bb84d...3fbe75`; bsc `0xae0b0e...cf30e1`; bsc `0xae8cf1...d1a726`; bsc `0xb1cfb0...c89059`; bsc `0xb240f4...e7e0b9`; bsc `0xb35c64...e6ca41`; bsc `0xba0738...016fd9`; bsc `0xc60268...26f801`; bsc `0xc82bfd...8d9748`; bsc `0xd38855...1585f1`; bsc `0xd3e7e4...01de56`; bsc `0xd58d73...571bc1`; bsc `0xd77621...4f25e2`; bsc `0xe840d5...961529`; bsc `0xf989ab...217d02`; bsc `0xfa9f90...9ad2de` | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | 5 deployments: ethereum `0x3be73e...9c4e73`; bsc [`0x1095f8...064cf5`](./contracts/bsc-56/0x1095f85e7f31f0d3d94612738f13152763064cf5/); bsc `0x741ab3...d02bdf`; bsc `0xce11f5...0f4978`; bsc `0xf661a9...f02d0f` | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | 2 deployments: bsc [`0x41f928...216ed4`](./contracts/bsc-56/0x41f92836f8d7a5866991686aa60e1f7c28216ed4/); bsc `0xffc262...3fe84c` | ⚠️ Unaudited |
| XReferralAdapter | unknown | bsc | n/a | [`0x8b890f...8cc60d`](./contracts/bsc-56/0x8b890f5498e5ef979ef872f43466dfbab68cc60d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x30433f40303a4f520b0df00be5a9970d000fd9b4) | proxy | berachain | n/a | `0xdb8e54...af0511` | ❓ Unverified |
| Proxy (impl: 0x51e47f6739a9a6fce4817aa7bce388e78de50574) | proxy | arbitrum | n/a | `0xdb8e54...af0511` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed0eb...327557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc26328...8243c9` | ❓ Unverified |
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
| [yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 12 | high |
| [zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 3 | n/a |
| [zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 6 | high |
| [zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd1573d...cff141`](./contracts/ethereum-1/0xd1573de52fff44dd92d275e20fdab0296ccff141/) | ERC4626WrapperStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032769...667834`](./contracts/bsc-56/0x03276919f8b6ee37ba8ee4ee68a1c5f48b667834/) | KernelClisStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a21a9...c05829`](./contracts/bsc-56/0x2a21a955191f83b7255a21e752cd5a5356c05829/) | KernelClisStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x532774...c76f71`](./contracts/bsc-56/0x532774c8ed528edbebbaccda9257bfe167c76f71/) | KernelClisStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20fc8d...cd9e7b`](./contracts/bsc-56/0x20fc8db0bee4cf37871db208182f03a10bcd9e7b/) | KernelClisVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0eefc...81fe77`](./contracts/bsc-56/0xc0eefcc27b22c3e4304b3df95649d871f681fe77/) | KernelClisVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x073929...05b6ae`](./contracts/bsc-56/0x073929c230f2898f227f765c135204fa9b05b6ae/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e6464...05acb3`](./contracts/bsc-56/0x0e64643d8073b82ac6d6a9e7d1d6b6689a05acb3/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x132376...adf547`](./contracts/bsc-56/0x132376b153d3cff94615fe25712db12caaadf547/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d9279...87287d`](./contracts/bsc-56/0x1d92795cfdeb1340a5a5a9493de752b39287287d/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43a224...a16119`](./contracts/bsc-56/0x43a22463517b57ce4fd52dc6b33f7d58b8a16119/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x504a89...e7315b`](./contracts/bsc-56/0x504a89a3ed6a51d17d4f936e58476c779ee7315b/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a786b...6a26e1`](./contracts/bsc-56/0x6a786b8047aec8cc6b05f31351377404286a26e1/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99155a...c0ee81`](./contracts/bsc-56/0x99155a7fc5d76114dbb71d7ebcf412ee2fc0ee81/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa0f29c...27e04d`](./contracts/bsc-56/0xa0f29c1ef5c43fd213a6cd788f72c9abbc27e04d/) | KernelStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05f626...9ecfbd`](./contracts/bsc-56/0x05f6266941536b00127e18fd376bf7b6899ecfbd/) | KernelVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e4ffa...deaed8`](./contracts/bsc-56/0x0e4ffaaf990b1398e5ae9407602473a793deaed8/) | KernelVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x209fa3...d60e28`](./contracts/bsc-56/0x209fa3da991189fa7d2054c69004a5d2d1d60e28/) | KernelVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26b69e...1c5af3`](./contracts/bsc-56/0x26b69ee6fca1e0cd60ea13d198aeef18581c5af3/) | KernelVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x545a2c...974e88`](./contracts/bsc-56/0x545a2c7cdc386057978375583e662b01c0974e88/) | KernelVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x728f22...743839`](./contracts/bsc-56/0x728f22ec99bc2f949243369e9ddc95ad1b743839/) | KernelVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xdb8e54...af0511`](./contracts/optimism-10/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe231db...635a61`](./contracts/optimism-10/0xe231db5f348d709239ef1741ea30961b3b635a61/) | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdb8e54...af0511`](./contracts/bsc-56/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdb8e54...af0511`](./contracts/base-8453/0xdb8e54f39aff243b25a41e4747957ed517af0511/) | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032953...339eca`](./contracts/bsc-56/0x0329538ed2a6b442a65c3fc3d32fea5a06339eca/) | MainnetActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ec3e...28e0c1`](./contracts/bsc-56/0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1/) | MainnetKernelActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38585e...df5e8b`](./contracts/ethereum-1/0x38585e32b66961c02abacbb4db76825a00df5e8b/) | MaxVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x615635...e5c534`](./contracts/ethereum-1/0x615635789e849ab468f721ea4d470eaff4e5c534/) | MaxVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f8fac...7d2985`](./contracts/bsc-56/0x2f8facc60511016fbd9a37f8533ad852447d2985/) | MaxVaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066b29...225776`](./contracts/ethereum-1/0x066b290542487dd826a6e05c2439c98432225776/) | ProxyUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x304b58...74b509`](./contracts/bsc-56/0x304b5845b9114182ecb4495be4c91a273b74b509/) | SingleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1095f8...064cf5`](./contracts/bsc-56/0x1095f85e7f31f0d3d94612738f13152763064cf5/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x41f928...216ed4`](./contracts/bsc-56/0x41f92836f8d7a5866991686aa60e1f7c28216ed4/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b890f...8cc60d`](./contracts/bsc-56/0x8b890f5498e5ef979ef872f43466dfbab68cc60d/) | XReferralAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 9 |

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
