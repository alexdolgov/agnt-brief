# Agentic Audit Brief: MM Finance

## Project Overview

- Project: MM Finance (`mm-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:27.660Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, cronos, polygon
- Contract surface: 170 unique implementations (202 raw deployments)
- DeFi Llama TVL: $1,184,067.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 41 project-authored contract(s) across 2 chain(s); 9 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 14 common project-authored base contract(s) (governable, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 292; live-surface contracts included: 202 (31 live, 171 unknown).
- Excluded by liveness: 90 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/13 (7.7%)
- Deployed-live implementations: 13 of 170 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/13
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 157
- Unique implementations: 170
- Raw deployments: 202
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 7.7% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MeerkatFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x7cfb78...7d47a5`](./contracts/polygon-137/0x7cfb780010e9c861e03bcbc7ac12e013137d47a5/); arbitrum `0xfe3699...c33f22` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmplificationUtils | unknown | polygon | n/a | [`0xff8964...431d10`](./contracts/polygon-137/0xff89646fe7ee62ea96050379a7a8c532dd431d10/) | ⚠️ Unaudited |
| LPToken | unknown | polygon | n/a | [`0x07a9aa...70b5a0`](./contracts/polygon-137/0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0/) | ⚠️ Unaudited |
| MadMeerkatBurrowPoly | unknown | polygon | n/a | [`0x2f5b31...ca1d0c`](./contracts/polygon-137/0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c/) | ⚠️ Unaudited |
| MasterMeerkat | unknown | polygon | n/a | 2 deployments: polygon [`0xa2b417...834764`](./contracts/polygon-137/0xa2b417088d63400d211a4d5eb3c4c5363f834764/); arbitrum `0xa73ae6...04557a` | ⚠️ Unaudited |
| MeerkatPair | unknown | polygon | n/a | 13 deployments: polygon [`0x1aec8f...614172`](./contracts/polygon-137/0x1aec8ff1c39c34338327a32bbb35011432614172/); polygon `0x384c1b...ddd724`; polygon `0x8ab477...236790`; polygon `0x8c2625...e8cd3c`; polygon `0xa78932...705b0f`; polygon `0xb965c1...87273b`; polygon `0xd15eb8...9cc86e`; arbitrum `0x1fba52...bedb17`; arbitrum `0x32481a...041787`; arbitrum `0x4119fe...78546e`; arbitrum `0x446822...cf06bc`; arbitrum `0x590ff6...8786da`; arbitrum `0xc08239...4177df` | ⚠️ Unaudited |
| MeerkatRouter02 | adapter | arbitrum | n/a | 2 deployments: polygon `0x51aba4...eb1a17`; arbitrum [`0x4f879a...d04139`](./contracts/arbitrum-42161/0x4f879a9d95e01041ddaa607a65f04e0edbd04139/) | ⚠️ Unaudited |
| MeerkatRouter03 | adapter | polygon | n/a | [`0x7e5e59...35f8bf`](./contracts/polygon-137/0x7e5e5957de93d00c352df75159fbc37d5935f8bf/) | ⚠️ Unaudited |
| MeerkatToken | token | polygon | n/a | 2 deployments: polygon [`0x22a31b...3e9481`](./contracts/polygon-137/0x22a31bd4cb694433b6de19e0acc2899e553e9481/); arbitrum `0x56b251...2d2326` | ⚠️ Unaudited |
| MMOToken | token | polygon | n/a | [`0x859a50...b1cd5b`](./contracts/polygon-137/0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b/) | ⚠️ Unaudited |
| Swap | unknown | polygon | n/a | 3 deployments: polygon [`0x45e46c...b22368`](./contracts/polygon-137/0x45e46c9dc647d0f89b8e692f327553e5bab22368/); polygon `0x690bba...2a5350`; polygon `0x9ee579...5dab56` | ⚠️ Unaudited |
| SwapUtils | unknown | polygon | n/a | [`0x855ccb...6017a5`](./contracts/polygon-137/0x855ccb701117dd34e30cfc0741c96cf8f56017a5/) | ⚠️ Unaudited |
| xMeerkatToken | token | arbitrum | n/a | [`0xb8635f...f57dbb`](./contracts/arbitrum-42161/0xb8635f1644422e7ebca07c06b839075a74f57dbb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (157)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | 15 deployments: cronos `0x1a6ad4...c7ce0a`; cronos `0x2ccbfd...c9d471`; cronos `0x2d03be...d11e03`; cronos `0x3827ca...71c44d`; cronos `0x50c0c5...3c46a7`; cronos `0x654bac...45dca9`; cronos `0x692db4...6887a7`; cronos `0x97749c...ed7656`; cronos `0xa51054...b2e2ed`; cronos `0xb6e170...bab8f0`; cronos `0xb8df27...9f4878`; cronos `0xc924da...ebf677`; cronos `0xd7385f...8c05a7`; cronos `0xe25737...1580be`; cronos `0xf8b9fa...d6e1aa` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0x2ef58f...1d38c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x308c22...5dccff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3392fb...e692b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x339f42...68f74b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34b0bd...8679b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d03db...f6e259` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e1402...d7749d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x443ec4...f9cf41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x446e64...82e95e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4724ad...8356fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47f6d9...45258a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x48f274...8280af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a114b...f39a2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bca9c...02f482` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ed9be...f1f526` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x567e7e...296b04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59044e...fb5c53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a64e6...760c56` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c7658...31d147` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67b462...35f14e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x692db4...6887a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x699586...add3e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c5638...ebe76b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cc28c...26b0bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d4bed...a1fe88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d713b...af0c72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6e6175...2ce1a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x705913...edd1a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x784085...540dda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x799b03...c4cc39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ae5b1...e22221` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7aebfc...f93c40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7bb98a...5fc052` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e4129...b69545` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8504f0...92188d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8523e6...2e30fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a3ae5...d75298` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb9cc...faa4d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e0170...c97873` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91b50e...b4993b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x94ee02...47e481` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x961c1d...d07494` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9629a0...5b8d01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x979ed6...449581` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98c65f...3270e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x996a3d...a187bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9bfd18...8341d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c5dc5...8badda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e91ee...04a694` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4dab5...ab4253` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa5cf7d...5afd6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7896e...84469b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa827b9...c8f275` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab51cb...4ff6e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac5c85...8f9f5d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb208c0...59fd84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb36424...638116` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb64754...80e6b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb7e97c...6a3ccb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9c4db...3ad137` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc67c7...2abc71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbeb921...8a0bcd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2e0cb...2ebba4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4ba95...e0d254` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0xf0364d...64c55f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf42de8...13c80d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4b8f6...5af225` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8eed9...5d833a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa461f...c2eac7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa4dd8...03e2a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfeece2...2e8047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c042a...9cfd51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a4bc0...c67cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b1d67...96a038` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20bcbf...076517` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x302b81...b5ad24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37e352...2f94a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39fe31...61fd19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b91d7...6be6e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cb693...936a8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4325a5...3a1915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48603e...c8515d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49650f...fd977a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ac4e3...9a4f4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d90b9...051d8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4de75d...b2ea55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f0521...300a5e` | ❓ Unverified |
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
| UnnamedContract | unknown | arbitrum | n/a | `0xa93dd6...596e47` | ❓ Unverified |
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
| UnnamedContract | unknown | arbitrum | n/a | `0xe77c4a...e15b83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea660d...eee69b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf18036...61529d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf60997...fbffe3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa1bdc...7d687d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb3e47...974778` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd9c60...1b3982` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/mmfinance](https://skynet.certik.com/projects/mmfinance) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [paladinsec.co/projects/mmfinance](https://paladinsec.co/projects/mmfinance) | Paladin | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [security-audit-certificate.html](https://www.slowmist.com/en/security-audit-certificate.html?id=765046458bfbfbdf114db4689625c2fd215c08f5175545d8b4bdc01cc4e140d3) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 170 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3064] skynet.certik.com/projects/mmfinance
- [3066] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
