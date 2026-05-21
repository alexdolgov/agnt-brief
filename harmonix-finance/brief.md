# Agentic Audit Brief: Harmonix Finance

## Project Overview

- Project: Harmonix Finance (`harmonix-finance`)
- Website: [https://app.harmonix.fi/?ref=s4rk2Hrs](https://app.harmonix.fi/?ref=s4rk2Hrs)
- Lifecycle: active (Tier 0, 73.5% below peak)
- Generated: 2026-05-21T22:10:52.518Z
- Pipeline run: v2-pipeline-2026-05-21-75f656-5fed
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 127 unique implementations (186 raw deployments)
- DeFi Llama TVL: $4,888,105.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Harmonix Finance is a yield optimization protocol that offers delta-neutral vaults and staking products. It leverages strategies like Kelp restaking and Pendle hedging to generate yield for users.

### Architecture

All product families share the same proxy infrastructure (TransparentUpgradeableProxy and ERC1967Proxy) for upgradeability. The PoolFactory registries manage vault deployments, while HAR token likely serves as the protocol's governance or reward token across vaults and staking.

## Audit Coverage Summary

- Verified implementations audited: 1/10 (10.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 1
- Unverified implementations: 117
- Unique implementations: 127
- Raw deployments: 186
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Verichains | Tier 2 | 1 | 10.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KelpRestakingDeltaNeutralVault | core_logic | ethereum | 7 deployments: ethereum [`0x09f2b4...4429df`](./contracts/ethereum-1/0x09f2b45a6677858f016ebef1e8f141d6944429df/); arbitrum `0x3c610c...779058`; arbitrum `0x554ef8...815d95`; arbitrum `0x9e2d37...2ea13a`; arbitrum `0xa50169...116b20`; arbitrum `0xbbff0a...07f855`; arbitrum `0xfadf54...d2ac61` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | hyperliquid | [`0x3d9148...dc1eaa`](./contracts/hyperliquid-999/0x3d91485d7eaec6dd4e5ec0cb1122c8d80cdc1eaa/) | ⚠️ Unaudited |
| HAR | unknown | hyperliquid | 2 deployments: hyperliquid [`0x391121...a2af18`](./contracts/hyperliquid-999/0x391121d817da42ed3434d281aedbbcc416a2af18/); hyperliquid `0xdceabc...f92744` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | hyperliquid | 4 deployments: hyperliquid [`0x02a1d5...f00520`](./contracts/hyperliquid-999/0x02a1d5fba537c7156f5374d2c740fab4bdf00520/); hyperliquid `0x0d4033...2cc429`; hyperliquid `0x9938db...32be1c`; hyperliquid `0xf25d52...eb4e80` | ⚠️ Unaudited |
| MultiVestingDistributorMock | operational_periphery | hyperliquid | 5 deployments: hyperliquid [`0x30c9fc...a2111f`](./contracts/hyperliquid-999/0x30c9fc26028c3065e0bfd9b7ba1c7c9984a2111f/); hyperliquid `0x45de26...a27f0f`; hyperliquid `0x7bc78c...ad335f`; hyperliquid `0x7ee84a...e912b6`; hyperliquid `0x8d8c70...d4b24a` | ⚠️ Unaudited |
| PendleHedgeVault | core_logic | arbitrum | 3 deployments: arbitrum [`0x0110bb...bfabe0`](./contracts/arbitrum-42161/0x0110bb8d3e530eb9a53f92fe848a06f2c5bfabe0/); arbitrum `0x561b08...9979fc`; arbitrum `0xc0fa1d...cb50ee` | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | [`0x7c95d4...706ada`](./contracts/hyperliquid-999/0x7c95d4c96c410a6e7dedf4bc78eb93b916706ada/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 35 deployments: ethereum `0xcf8be3...dbc820`; arbitrum [`0x05427a...4db7c5`](./contracts/arbitrum-42161/0x05427aa001303115b14634673dd3ff53e94db7c5/); arbitrum `0x0866af...11334e`; arbitrum `0x09873c...44cdf1`; arbitrum `0x13f093...8f3a4c`; arbitrum `0x14d9ed...a5e1df`; arbitrum `0x1d47ca...8e3688`; arbitrum `0x1ef01c...dc31a8`; arbitrum `0x236a88...cdf331`; arbitrum `0x27c6cf...384499`; arbitrum `0x3363a8...420135`; arbitrum `0x346c29...22e322`; arbitrum `0x3b584a...48affd`; arbitrum `0x4d5d7d...b1ec86`; arbitrum `0x58ec43...f553e8`; arbitrum `0x613545...155c23`; arbitrum `0x63cbb4...ba953f`; arbitrum `0x6a0755...f04a13`; arbitrum `0x72b054...179b9d`; arbitrum `0x74cf10...f7f4a2`; arbitrum `0x75fa7c...62c2c6`; arbitrum `0x7d79c8...4a09a3`; arbitrum `0x862102...96c200`; arbitrum `0x89c45b...c81cd4`; arbitrum `0x8f1cb3...de2b87`; arbitrum `0xa28557...d1dc98`; arbitrum `0xbd8c05...7e8d34`; arbitrum `0xc2b64d...efe6dd`; arbitrum `0xc5d824...a64d1b`; arbitrum `0xc61c90...e4ac73`; arbitrum `0xc71ba0...bc590b`; arbitrum `0xc75dee...dc3b74`; arbitrum `0xc96648...66d2c2`; arbitrum `0xca5bff...c9cce5`; arbitrum `0xe46c3b...000705` | ⚠️ Unaudited |
| WstEthStakingDeltaNeutralVault | core_logic | base | 2 deployments: base [`0x09f2b4...4429df`](./contracts/base-8453/0x09f2b45a6677858f016ebef1e8f141d6944429df/); base `0xabfa47...57ed86` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolFactory | registry | base | 9 deployments: ethereum `0xc7c8cd...a9473b`; ethereum `0xe18567...c4a9c3`; base [`0x211876...7c271f`](./contracts/base-8453/0x2118769fd42b6884641d9f0e33278bb5d67c271f/); base `0x2ea3b5...55f6c7`; base `0x45dc73...3e4c31`; arbitrum `0x727446...2e6285`; arbitrum `0x81302b...1b70c1`; arbitrum `0xa6dc78...74d19b`; arbitrum `0xde80f4...ba5d98` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (117)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x083050...59ab73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bcf1f...ffbc44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3893b2...1455fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4577f6...5fd0a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62cc48...d58265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c3c1a...714d62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x725004...a246a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaed44e...bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1a201...9db69b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4ae01...0a71ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf36c7d...5c46b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfce1db...1e197b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x057f4e...a310f8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x143a2d...2d7c66` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3b76ba...3a0621` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4d312e...a06df5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x650ea9...c98cc5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x75c80a...1efe4d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7b5e2d...ff2f82` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7d05a1...97df74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x884a7e...ac7338` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x92ae81...9f62e7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa3af27...c22086` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb869de...8573b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc6fbb0...d5468e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x85487b...a2189c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb114e0...99a928` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc7c8cd...a9473b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe18567...c4a9c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xecc400...021f76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0530f9...f0805d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x067610...f44aa2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x092ece...1b40a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f812e...aeeb07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x14352d...d0e164` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1453b9...cca767` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17ee33...fe87fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1dff18...5506da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1ea6bf...07ae7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2614dd...567fe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x26c45f...61055b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x299ebc...a200f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2a1745...104ee9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2cbb40...268177` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2d0741...5b54bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3056d6...0d78a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x347eae...0ade91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x36dd11...464f08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x37ff35...01704b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3c983b...6fc407` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3cfd18...d2bcf4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d502f...cfd685` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4325d1...15962f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x43aeef...640695` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x488440...7efce1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d2000...340e65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4eadd7...5b93ad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4ff8d6...abbba7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50e2d3...f06482` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x59f3f6...3679af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5dc9e7...f24312` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5dcd79...b607b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x616e10...afd5b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66299c...50e436` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x68387f...af7a03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69753e...7b8944` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6f7a38...3da3be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x730922...3b54f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7689ba...ab133a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x76c43c...d2b327` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7a74a0...396a64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8005bf...191e37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x843329...49090b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x86c3f3...8894d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x88c66b...e994c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x88d4b2...f939a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8ad3e1...dda865` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c488f...6833b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8d7c63...d8c9f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9032c1...45c9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x917d63...d3a538` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x95c40e...3fddf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x97d501...4c5086` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x988297...8cd9ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9b30af...3b1181` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9be0ec...e86993` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e5785...42898c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9efd0b...80253c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9f907c...06eb2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa48391...114dac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaae0ab...f058c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xab0776...89bfdd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xabc7ec...1e2316` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaed44e...bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaf89e8...4062fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb2db8e...0ad762` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb30693...8e8855` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb39a04...356e13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba5f28...8a0293` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbca7c5...d4b7b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc00e16...aea7b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc03226...e6f6ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc1169a...9dcf4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc2f10f...9f87ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc5463b...9f3080` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc5b144...3eb261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc5b919...55c514` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc927fe...1e14c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd46cf5...372699` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd85cea...d0cb71` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xda6b3c...99a2d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe1a201...9db69b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xebd56c...4fe5e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xefaebf...82aafb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf37b1a...1ea557` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf40859...d4c83c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfe0dcb...18eb25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---:|---|
| [Harmonix Finance - Zenith Audit Report.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Harmonix%20Finance%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [HarmonixFinance-Hyperliquid-Security-Review.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/HarmonixFinance-Hyperliquid-Security-Review.pdf) | Hyperliquid | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Verichains Public Report - HarmonixFinance.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20HarmonixFinance.pdf) | Verichains | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |
| [Verichains Public Report - Kelp Delta.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20Kelp%20Delta.pdf) | Verichains | Audit | 2024-08 | aging | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x30c9fc...a2111f`](./contracts/hyperliquid-999/0x30c9fc26028c3065e0bfd9b7ba1c7c9984a2111f/) | MultiVestingDistributorMock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x211876...7c271f`](./contracts/base-8453/0x2118769fd42b6884641d9f0e33278bb5d67c271f/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09f2b4...4429df`](./contracts/base-8453/0x09f2b45a6677858f016ebef1e8f141d6944429df/) | WstEthStakingDeltaNeutralVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 117 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=7

Zero-match audit list:

- [1750] Harmonix Finance - Zenith Audit Report.pdf
- [1751] HarmonixFinance-Hyperliquid-Security-Review.pdf
- [1752] Verichains Public Report - HarmonixFinance.pdf

Fork inheritance lineage and inherited audits are included when available.
