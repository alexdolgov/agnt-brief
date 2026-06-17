# Agentic Audit Brief: MM Finance

⚠️ Lifecycle status: DECLINING - TVL changed 0.2% over 90 days

## Project Overview

- Project: MM Finance (`mm-finance`)
- Lifecycle: declining (Tier 0, 99.9% below peak)
- Generated: 2026-06-17T07:00:49.632Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, cronos, polygon
- Contract surface: 157 unique implementations (175 raw deployments)
- DeFi Llama TVL: $1,262,238.00
- On-chain TVL (included contracts): $1,848,184.55
- TVL by chain: Polygon $1,741,985.81 | Arbitrum $106,198.73

## Project Description

MM Finance is a DeFi protocol with deployed contracts across chains including Polygon and Cronos, with verified contract evidence showing DEX/router, factory, liquidity/staking, token, proxy/admin, oracle, and GMX-style periphery components. Claims about additional products such as METF, Savanna, algorithmic stablecoins, launchpad functionality, or automated yield strategies should be treated as unverified unless supported by primary documentation or included in accessible audited contract scope.

### Architecture

The families share a common deployer cluster and proxy infrastructure, indicating a unified development team. MM Finance Arbitrum and Polygon both use MeerkatToken, while MM Optimizer Polygon and MM Stableswap Polygon extend the Polygon ecosystem with specialized products. METF Finance and Savanna Finance appear as separate but related ventures under the same umbrella.

## Contract Surface Quality

- Indexed contracts: 262; live-surface contracts included: 175 (0 live, 175 unknown).
- Excluded by liveness: 0 inactive, 87 singleton, 0 uninitialized.
- Deployment units: 0/36 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/6.

## Audit Coverage Summary

- Verified implementations audited: 1/20 (5.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 137
- Unique implementations: 157
- Raw deployments: 175
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,848,184.55
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,848,184.55 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 5.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MeerkatFactory | registry | polygon | n/a | 2 deployments: polygon [`0x7cfb78...7d47a5`](./contracts/polygon-137/0x7cfb780010e9c861e03bcbc7ac12e013137d47a5/); arbitrum `0xfe3699...c33f22` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MeerkatToken | token | polygon | n/a | 3 deployments: polygon [`0x22a31b...3e9481`](./contracts/polygon-137/0x22a31bd4cb694433b6de19e0acc2899e553e9481/); arbitrum `0x56b251...2d2326`; arbitrum `0x7d10fb...7f1711` | ⚠️ Unaudited |
| MMOToken | token | polygon | n/a | [`0x859a50...b1cd5b`](./contracts/polygon-137/0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b/) | ⚠️ Unaudited |
| AmplificationUtils | unknown | polygon | n/a | [`0xff8964...431d10`](./contracts/polygon-137/0xff89646fe7ee62ea96050379a7a8c532dd431d10/) | ⚠️ Unaudited |
| BatchSender | periphery | polygon | n/a | [`0x40d87d...eba807`](./contracts/polygon-137/0x40d87d548743d3f5242d6eae2199e8c064eba807/) | ⚠️ Unaudited |
| LPToken | token | polygon | n/a | [`0x07a9aa...70b5a0`](./contracts/polygon-137/0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0/) | ⚠️ Unaudited |
| MadMeerkatBurrowPoly | unknown | polygon | n/a | [`0x2f5b31...ca1d0c`](./contracts/polygon-137/0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c/) | ⚠️ Unaudited |
| MasterMeerkat | unknown | polygon | n/a | 2 deployments: polygon [`0xa2b417...834764`](./contracts/polygon-137/0xa2b417088d63400d211a4d5eb3c4c5363f834764/); arbitrum `0xa73ae6...04557a` | ⚠️ Unaudited |
| MeerkatRouter02 | adapter | polygon | n/a | 5 deployments: polygon [`0x315bdf...aba565`](./contracts/polygon-137/0x315bdf3d88b5a28b9e02b366f9c39a4588aba565/); polygon `0x51aba4...eb1a17`; polygon `0x5686c0...9c5edc`; arbitrum `0x4f879a...d04139`; arbitrum `0xf0603a...f54980` | ⚠️ Unaudited |
| MeerkatRouter03 | adapter | polygon | n/a | [`0x7e5e59...35f8bf`](./contracts/polygon-137/0x7e5e5957de93d00c352df75159fbc37d5935f8bf/) | ⚠️ Unaudited |
| OmniInterfaceMulticall | periphery | arbitrum | n/a | [`0xfa34f4...37c85e`](./contracts/arbitrum-42161/0xfa34f4e90bb251e845d2ff8ced49c6454737c85e/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 7 deployments: polygon `0x2cceb6...f350d3`; polygon `0x490d03...78a87f`; polygon `0x8534c7...2561d3`; polygon `0x952ecd...03ba14`; arbitrum [`0x0b22ac...1a71c6`](./contracts/arbitrum-42161/0x0b22ac6c106e519d053b88e92b4937ba701a71c6/); arbitrum `0x14d54a...d19d38`; arbitrum `0x4d319d...669760` | ⚠️ Unaudited |
| ReferralStorage | token | polygon | n/a | [`0xe3eb5d...cc762f`](./contracts/polygon-137/0xe3eb5d1d601885113caa6a55372f8e0b2ccc762f/) | ⚠️ Unaudited |
| Router | adapter | polygon | n/a | [`0xa2508c...bec785`](./contracts/polygon-137/0xa2508cc3185f4a9bb6fb5c5b8515e4ce05bec785/) | ⚠️ Unaudited |
| SmartChefFactory | registry | polygon | n/a | [`0x3b9857...29dc78`](./contracts/polygon-137/0x3b98577213bc7f595d25c0ce8f29abe0a829dc78/) | ⚠️ Unaudited |
| Swap | unknown | polygon | n/a | 2 deployments: polygon [`0x45e46c...b22368`](./contracts/polygon-137/0x45e46c9dc647d0f89b8e692f327553e5bab22368/); polygon `0x690bba...2a5350` | ⚠️ Unaudited |
| SwapDeployer | unknown | polygon | n/a | [`0x95d5d4...a3a85d`](./contracts/polygon-137/0x95d5d401d3c4eacf12d71b4f98995076d6a3a85d/) | ⚠️ Unaudited |
| SwapUtils | unknown | polygon | n/a | [`0x855ccb...6017a5`](./contracts/polygon-137/0x855ccb701117dd34e30cfc0741c96cf8f56017a5/) | ⚠️ Unaudited |
| Vyper_contract | unknown | polygon | n/a | 4 deployments: polygon [`0x1eb430...8fa87d`](./contracts/polygon-137/0x1eb430cac0ab8f84bbc646099a27955a688fa87d/); polygon `0x3a720c...850ceb`; polygon `0xd8e873...493e9e`; polygon `0xdb650c...d75ddd` | ⚠️ Unaudited |
| xMeerkatToken | token | arbitrum | n/a | [`0xb8635f...f57dbb`](./contracts/arbitrum-42161/0xb8635f1644422e7ebca07c06b839075a74f57dbb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (137)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x1a6ad4...c7ce0a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2ccbfd...c9d471` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2d03be...d11e03` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x3827ca...71c44d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x50c0c5...3c46a7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x654bac...45dca9` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x692db4...6887a7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x97749c...ed7656` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa51054...b2e2ed` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb6e170...bab8f0` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb8df27...9f4878` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xc924da...ebf677` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd7385f...8c05a7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe25737...1580be` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xf8b9fa...d6e1aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x01adf1...05c9b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03c8e5...f631d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x095bc6...f236f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c617f...90235d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cec53...d7ab2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0dff21...b966dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0faf67...2e884c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11ee70...ce6ec7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x15ec65...0858f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17ba35...1180ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x195ac6...3b6159` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fc858...f80ad3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x295d8c...3fd0be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ba9e5...6f300a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c456d...e40824` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c6978...12b4a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x308c22...5dccff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3392fb...e692b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x339f42...68f74b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d03db...f6e259` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e1402...d7749d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x443ec4...f9cf41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x48f274...8280af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bca9c...02f482` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ed9be...f1f526` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59044e...fb5c53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a64e6...760c56` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67b462...35f14e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x699586...add3e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c5638...ebe76b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cc28c...26b0bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d4bed...a1fe88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d713b...af0c72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x705913...edd1a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x784085...540dda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x799b03...c4cc39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ae5b1...e22221` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7aebfc...f93c40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8504f0...92188d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a3ae5...d75298` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb9cc...faa4d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e0170...c97873` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x94ee02...47e481` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x961c1d...d07494` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x979ed6...449581` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98c65f...3270e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x996a3d...a187bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9bfd18...8341d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e91ee...04a694` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4dab5...ab4253` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa827b9...c8f275` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab51cb...4ff6e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb208c0...59fd84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb36424...638116` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9c4db...3ad137` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc67c7...2abc71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2e0cb...2ebba4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5a3be...eada5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc66477...3f3341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc67aa9...c849de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc82175...f928ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce6c2b...07306f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd0130f...934d8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd09fa8...be2d06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd32001...b9e302` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4cc2c...1a7612` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd6f8b2...a4f9bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd751f6...172252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda6605...6b4887` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdfaf6f...c42e02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe0d6b2...db0e5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe48105...b3437a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed871d...984f6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef71d2...5945a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef83cf...d3852f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf42de8...13c80d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4b8f6...5af225` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8eed9...5d833a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa461f...c2eac7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa4dd8...03e2a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfeece2...2e8047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a4bc0...c67cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b1d67...96a038` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20bcbf...076517` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x302b81...b5ad24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37e352...2f94a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39fe31...61fd19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b91d7...6be6e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48603e...c8515d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ac4e3...9a4f4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4de75d...b2ea55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c0959...a69e12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7438b5...59c5ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79f00f...29b007` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b07d5...b8974c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84cab6...a9cd08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85b6b4...a65033` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8629cf...9c8969` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c3302...bf03ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9092d6...13bb06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x940d14...13dd7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x974778...f400a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2998f...895ccd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa63c0f...9ebdd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa739cd...5b8985` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa761cb...d3f283` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb188e6...700bef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4e5e3...90d2bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce17f8...8609ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce8ef5...adb095` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3545f...5528db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd72087...43449c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda4212...3a5c02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda9b15...d1849a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc7b23...cbef81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1243f...c17c41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3bb7c...8a28bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4e391...1c2b20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea660d...eee69b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf18036...61529d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf60997...fbffe3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb3e47...974778` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<>](https://skynet.certik.com/projects/mmfinance) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [<>](https://paladinsec.co/projects/mmfinance) | Paladin | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [V1: <> (also discovered via alternate URL)](https://www.slowmist.com/en/security-audit-certificate.html?id=765046458bfbfbdf114db4689625c2fd215c08f5175545d8b4bdc01cc4e140d3) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x22a31b...3e9481`](./contracts/polygon-137/0x22a31bd4cb694433b6de19e0acc2899e553e9481/) | MeerkatToken | token | $1,757,219.28 | Verified native implementation with $1,757,219.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x859a50...b1cd5b`](./contracts/polygon-137/0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b/) | MMOToken | token | $90,965.27 | Verified native implementation with $90,965.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xff8964...431d10`](./contracts/polygon-137/0xff89646fe7ee62ea96050379a7a8c532dd431d10/) | AmplificationUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40d87d...eba807`](./contracts/polygon-137/0x40d87d548743d3f5242d6eae2199e8c064eba807/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07a9aa...70b5a0`](./contracts/polygon-137/0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2f5b31...ca1d0c`](./contracts/polygon-137/0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c/) | MadMeerkatBurrowPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2b417...834764`](./contracts/polygon-137/0xa2b417088d63400d211a4d5eb3c4c5363f834764/) | MasterMeerkat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x315bdf...aba565`](./contracts/polygon-137/0x315bdf3d88b5a28b9e02b366f9c39a4588aba565/) | MeerkatRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7e5e59...35f8bf`](./contracts/polygon-137/0x7e5e5957de93d00c352df75159fbc37d5935f8bf/) | MeerkatRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe3eb5d...cc762f`](./contracts/polygon-137/0xe3eb5d1d601885113caa6a55372f8e0b2ccc762f/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2508c...bec785`](./contracts/polygon-137/0xa2508cc3185f4a9bb6fb5c5b8515e4ce05bec785/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3b9857...29dc78`](./contracts/polygon-137/0x3b98577213bc7f595d25c0ce8f29abe0a829dc78/) | SmartChefFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x45e46c...b22368`](./contracts/polygon-137/0x45e46c9dc647d0f89b8e692f327553e5bab22368/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x95d5d4...a3a85d`](./contracts/polygon-137/0x95d5d401d3c4eacf12d71b4f98995076d6a3a85d/) | SwapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x855ccb...6017a5`](./contracts/polygon-137/0x855ccb701117dd34e30cfc0741c96cf8f56017a5/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1eb430...8fa87d`](./contracts/polygon-137/0x1eb430cac0ab8f84bbc646099a27955a688fa87d/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb8635f...f57dbb`](./contracts/arbitrum-42161/0xb8635f1644422e7ebca07c06b839075a74f57dbb/) | xMeerkatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3064] <>
- [3066] V1: <>

Fork inheritance lineage and inherited audits are included when available.
