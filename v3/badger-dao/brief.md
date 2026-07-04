# Agentic Audit Brief: Badger DAO

⚠️ Lifecycle status: SUNSETTING - TVL dropped 13.1% over 90 days

## Project Overview

- Project: Badger DAO (`badger-dao`)
- Website: [https://badger.com/](https://badger.com/)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-07-03T21:05:32.622Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 939 unique implementations (965 raw deployments)
- DeFi Llama TVL: $7,273,487.84
- On-chain TVL (included contracts): $6,965,243.15
- TVL by chain: Ethereum $6,965,243.15

## Project Description

Yield Aggregator. Structurally: 26 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 6 common project-authored base contract(s) (upgradeabilityproxy, proxy, governableproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 965; live-surface contracts included: 965 (42 live, 923 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/26 (19.2%)
- Deployed-live implementations: 26 of 939 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/26
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 913
- Unique implementations: 939
- Raw deployments: 965
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $6,965,243.15
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 3.8% (Code4rena)
- Note: This protocol is classified as [sunsetting]. ASD of $6,965,243.15 represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 4 | 15.4% | 2022-01 |
| Code4rena | Tier 1 | 1 | 3.8% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BadgerSettPeak | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41671b...6be6e3`](./contracts/ethereum-1/0x41671ba1abcba387b9b2b752c205e22e916be6e3/); ethereum `0x56bb91...06002c` | ✅ Audited |
| BadgerYearnWbtcPeak | token | ethereum | n/a | [`0x825218...c50627`](./contracts/ethereum-1/0x825218bed8be0b30be39475755acee0250c50627/) | ✅ Audited |
| Core | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a8fac...3418a8`](./contracts/ethereum-1/0x2a8facc9d49fbc3ecff569847833c380a13418a8/); ethereum `0x374a69...adb1dc` | ✅ Audited |
| WrappedIbbtcEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x848a38...a0114f`](./contracts/ethereum-1/0x848a3803a34d5bb555263dedff106a9dffa0114f/); ethereum `0x8751d4...f04c15` | ✅ Audited |
| Zap | adapter | ethereum | n/a | [`0xe8e400...c07734`](./contracts/ethereum-1/0xe8e40093017a3a55b5c2bc3e9ca6a4d208c07734/) | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | token | ethereum | n/a | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| TheVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x37d9d2...0fcbd8`](./contracts/ethereum-1/0x37d9d2c6035b744849c15f1bfee8f268a20fcbd8/); ethereum `0x60c796...511784`; ethereum `0xba485b...107407` | ⚠️ Unaudited |
| Agent | unknown | ethereum | n/a | [`0x8de82c...d0ef9b`](./contracts/ethereum-1/0x8de82c4c968663a0284b01069dde6ef231d0ef9b/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | n/a | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | n/a | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| BadgerTreeV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x660802...6d787a`](./contracts/ethereum-1/0x660802fc641b154aba66a62137e71f331b6d787a/); ethereum `0xbe82a3...509cc3` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0xd366e0...022ad0`](./contracts/ethereum-1/0xd366e016ae0677cdce93472e603b75051e022ad0/) | ⚠️ Unaudited |
| CdpManager | governance | ethereum | n/a | [`0xc4cbae...711774`](./contracts/ethereum-1/0xc4cbae499bb4ca41e78f52f07f5d98c375711774/) | ⚠️ Unaudited |
| DiggSett | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f92ca...e49940`](./contracts/ethereum-1/0x0f92ca0fb07e420b2fed036a6bb023c6c9e49940/); ethereum `0x7e7e11...c38e1a` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x042b32...4b9276`](./contracts/ethereum-1/0x042b32ac6b453485e357938bdc38e0340d4b9276/); ethereum `0xd0a7a8...158e9e` | ⚠️ Unaudited |
| Kernel | unknown | ethereum | n/a | [`0x33d533...d3a639`](./contracts/ethereum-1/0x33d53383314190b0b885d1b6913b5a50e2d3a639/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/); arbitrum `0xda534b...681365` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | n/a | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c` | ⚠️ Unaudited |
| SettV1_1h | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1862a1...ef24a5`](./contracts/ethereum-1/0x1862a18181346ebd9edaf800804f89190def24a5/); ethereum `0x758a43...f2544d`; ethereum `0x881285...f2a9f6` | ⚠️ Unaudited |
| SettV1h | unknown | ethereum | n/a | 5 deployments: ethereum [`0x19d97d...dffc28`](./contracts/ethereum-1/0x19d97d8fa813ee2f51ad4b4e04ea08baf4dffc28/); ethereum `0x6def55...8c1545`; ethereum `0x9376b4...e8c481`; ethereum `0xb9d076...940334`; ethereum `0xd04c48...d998ec` | ⚠️ Unaudited |
| SettV4 | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x459189...f7ddeb`](./contracts/arbitrum-42161/0x4591890225394bf66044347653e112621af7ddeb/); arbitrum `0x60129b...623546`; arbitrum `0x800c92...79e955`; arbitrum `0xba418c...d71843`; arbitrum `0xe9c12f...20389c`; arbitrum `0xfc1320...8ac041` | ⚠️ Unaudited |
| SettV4h | unknown | ethereum | n/a | 5 deployments: ethereum [`0x27e98f...71e3b5`](./contracts/ethereum-1/0x27e98fc7d05f54e544d16f58c194c2d7ba71e3b5/); ethereum `0x2b5455...5819c0`; ethereum `0x53c8e1...a68e40`; ethereum `0xae96ff...8e40af`; ethereum `0xfd05d3...7e6305` | ⚠️ Unaudited |
| SimpleWrapperGatedUpgradeable | unknown | ethereum | n/a | [`0x4b92d1...8cd4d5`](./contracts/ethereum-1/0x4b92d19c11435614cd49af1b589001b7c08cd4d5/) | ⚠️ Unaudited |
| SortedCdps | unknown | ethereum | n/a | [`0x591acb...529be3`](./contracts/ethereum-1/0x591acb5ae192c147948c12651a0a5f24f0529be3/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | n/a | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (913)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0194b5...7402e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01d591...6baf8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0281b0...bdcdb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02aaa7...6f6d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02acf9...b05fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x046e32...075813` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x047e0c...ca2509` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x051c9b...b55727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x058ec2...e2162e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x059776...d918df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05ec43...736ac1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06466a...879967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06d756...3c1404` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06e218...5f395d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07c0e4...a50b42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07e4b3...6efdd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x085a93...80a6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08b641...3c571d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08ca5e...1690e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a2bc3...3b44c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b6198...abd04c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b7cb8...2068ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c41a8...75247f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c7940...7fe019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c9d22...0bcd48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d724e...ac7818` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dcde0...7ef3c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e9ddd...333698` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ea6a3...efcbaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ec330...49821e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10fc82...3172fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11a9d0...5140f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11c54c...daf995` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12097e...833d74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1233a3...55651c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124fd4...dbb3d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12e0f9...baf596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x134837...15d01c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x139a79...01950b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1432ec...5ea251` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14361a...d9cb53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x154c28...7992f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x155482...60c927` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1584ae...740963` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15bae0...eb229b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15cbc4...eeb47b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15e0ac...aea6ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16eaa9...128be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x175586...c67c5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17c118...0c4a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1843a2...7c04fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1905fd...a1eca1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x193310...149ca1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19a042...bb7add` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19be80...c1b1d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19d099...b4377f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19e4d8...110da5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a2a80...8eb9cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ac31c...f1dbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b4233...be2afe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bbce3...566a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bc148...2b1672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c1fd6...14033d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c3847...c0163e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cc373...ef71df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cd79d...d1256b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d2475...633c06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d45a6...a31afe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d563f...9cb2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1db258...217901` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x203e62...a8de09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20c36f...aa333a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20dce4...1777bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21b5da...9b763a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2231be...ee69b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2296f1...53ca15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22bafb...5077ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22dd10...7ca18d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22fd63...e1ab2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x235c9e...bf7ff1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x240b15...a0d1ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2437e2...68a457` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2496a9...d427da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x257c1d...8e9ff3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c9bd...bf4170` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x265664...9db674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26b8ef...64d518` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2785ec...6c4b1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27c896...ea5295` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29001e...27a0bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x299953...3c49dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d181...7d12b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a842e...3c7373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a8c7d...9c849f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2aeaa8...4b91bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bb864...26d138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cdc4d...7693c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d5813...57e7e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dc769...870c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eb647...bc6a03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2edc46...d61563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f2785...ccbbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x303194...301b82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x303926...ac3ec8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x303c32...76a4ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31e88b...49b2a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x327a78...e974c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32bdf2...8e9c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x330ef6...df3d5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x332937...c4af49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x340640...fbe12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x346e8e...3a6994` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34769b...bd6694` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x348fc0...775b09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x349fff...743864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34de5e...2bbd9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x353200...c88d2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x371b7c...955d5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x373361...c7d52c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x379105...4707a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38261f...c7414b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3841d8...8e67d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38677e...41652c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38b934...dac527` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x392c8d...c2f710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x394dcf...474543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3962d8...8ab354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x399137...4b8e72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a494d...8df7f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b8238...becaa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c0989...0e63b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c5f61...eb1f38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d23d1...6db419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d6994...f5ee03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d8b8d...b4ef71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d95f7...899090` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e9af8...7c6059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3eb64f...9b5087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3efc97...97eb17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f6134...43ba0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f98f3...764a22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ff634...66cea9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4055d3...4b5b91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40a3fb...ca7e4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x410ba3...a1a8b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41466b...4d52bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x416c35...cc45f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41b560...493f2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41b6ba...5cc02a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41d3e6...327daa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41e418...868fa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x424ed5...f6aec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42600c...8a4e1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42aa43...1c1b4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42aaf2...de5ff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x441e99...66b649` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x444177...d1f425` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x444b86...db7d88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4459a5...15c8b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x459189...f7ddeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4599f2...d7270d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x459d1c...ab59e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45c585...112598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x466b8d...ed7ce0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4701cb...eb8c19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x473948...2608a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4750ca...0122e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47744b...6c3e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48eb9b...1e4876` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f11a...58ff0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x499c3d...3dd1a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a7bd1...0b64b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a8444...216554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a8651...f39f62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ad3ba...ea423f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1035...c913dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b581c...0742a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c5d19...55f4f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d9ed3...311670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dc83b...d88ae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e3f56...0d1a6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ea268...b43f9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eac4c...ceb350` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f3e7a...d3e2a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f7d83...abe9cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fe70e...410a80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fe836...aee819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x500c5a...f3c5aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50dd8a...d8110a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518602...c1ff84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51b44f...19f381` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5217af...6b2728` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52212c...350f7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53a2ea...5fb811` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5543e2...769e5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55912d...cb1b17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55918a...9fa8c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55d916...b9a2f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5631ba...5d3405` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5640d6...f1fe12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56a24d...41b694` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56df16...21939b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56f01a...6e96d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x572806...424a8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57961a...83a849` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57c877...24dd72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57f0ab...613e3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58a312...f61b76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58cac1...4c6f8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x595238...e011bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x599d92...19f193` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a54ca...40bb61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a7081...a90dbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b6095...91c127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bafb0...c8b977` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bc25f...c23831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5cddfc...594f7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d852f...d1b3f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5db745...34bc27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dce29...5be4a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dd69c...66d388` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dde67...dbaa36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e7995...eafffa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e7a93...93376d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60875c...4f9bae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x608b6d...16e83c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60d6a9...69f8f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612f68...46eb65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61a18c...0d242f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61e16b...fc7071` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x621944...2fecd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x628fb5...4a4cc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62cc51...974f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62cf07...ef1477` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6354e7...102a36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63ad74...ec40b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63cf44...4d9682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64224d...004b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x647eeb...96827d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6497eb...ebeac7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x654f56...10e1f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x660fd8...44ae99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6615e6...e96386` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x663efc...d9e895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x665c3f...4f0bfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66a312...087486` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x684e4a...3f68ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68e8ef...2f9991` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a649c...6f6ef8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6af737...7aea22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b64e4...cf2623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b9436...8e91b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cd47f...09e1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d1de7...45a285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d4ba0...9f70d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d6bff...3a68b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d8bbe...5a8ccb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6da784...9d540a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dacce...a46fa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6df24e...0bc214` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f54b4...e26523` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f8773...1135d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f9712...fc9970` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70b0af...5b3fc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70e8d2...cc662d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70ec3d...74daf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x711555...0fe297` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x711a33...ab6cf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x717bcd...de1b52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x728354...348fdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7354d5...da9cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x737bb8...e8d3ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73adcd...89df11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73d230...8b6c84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74865c...eca4a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74f0ef...916d1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75055d...66453b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x752f5c...39a5ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x755478...3326d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75b8e2...944ee6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x763282...93a048` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x776a1f...f3ee61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7772d6...6dff47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77f07d...8a3572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x786e5d...6b8431` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7874c3...ca23a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78f1a6...511dfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x793aeb...42055d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x798d1b...a601c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79b9cb...854a21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a56d6...c452ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c2a95...aa8cab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c699a...367f95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d0398...88c385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dd08c...94189b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ecc60...51afc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ef30c...07eadd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f6fe2...ca988b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7feccc...132546` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80348f...053c1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x807ad2...fafe7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x809990...f6f1eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81b221...509147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81b53a...114f4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81b7cf...373727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82c9e7...a3a40b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82d747...84c12f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8317d3...c25991` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83897f...005694` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x844be1...f20827` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x859ade...b4b5a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x861468...d8059a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86ca55...3800bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x871e65...27f55b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87fb47...b1de13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x889d50...433102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88a390...512fe3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88ff54...6cb03d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x898111...274082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x898ebb...0fcc83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89df4e...ffe57f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a8ffe...e273de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8abd28...db9965` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b2a18...23af60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b6d0c...c0a780` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c26d9...e819ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c73e1...1dcbcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c7697...ca16c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbb86...193e24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cc484...a83c3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d7a5b...3c9408` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ddf22...ab1d9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8de00c...11502f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e8fd0...0847dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9159d3...b04d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91ba84...c02578` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92b30e...ed369d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9313cb...a84138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x937b8e...315551` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9419a5...2e4a96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x954888...ebf1f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95713d...124852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95826c...c60bbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x959927...827d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96596f...b2006d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9690c3...87be3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96b3f8...c0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96bc24...c20e9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x970b77...25e8df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98ca7a...e1ffe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98dd0c...56261a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99f39d...46c9b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a12a9...b89397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a3df9...06e3a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a7d40...61580c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ad014...d41e12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b4efa...0f8609` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c58b0...bae35a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cdfbb...d322d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e0742...a4790b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fc48e...38719e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa12106...6b36c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa207d6...7ba62d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa25523...334072` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa42acb...cd10eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa44607...38f4bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4772a...ac621d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa48442...25dc97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa49435...1fe809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa54d8a...05eb6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa577cd...fad5dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa69aa8...859ed7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71ebb...63860d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa76229...b4c9e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa773b1...2438df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7d6c4...e0c639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa89bd6...ad8986` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8acec...b90fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa94292...d7bf77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9a646...51e53d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa8ddd...06d08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa9845...f0c132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa9b71...b4cad7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaabf65...b09227` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaae82e...63e030` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab6adb...7370d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab6f4d...db2dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab73ec...1d3ffb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabf975...8feddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac429c...2fac29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadc8d7...3356cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae7930...4fda92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae8013...1c6be2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf5a1d...4a2a87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafa40d...5376c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb10b3a...25cdfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb16c5b...5ab93b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb18d0b...3dcaec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb18d7b...896c43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1a14f...e162af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2bf1d...385de2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3188e...13d0fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb35739...fd2b1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3b363...83046f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb45e51...1cebb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4a81a...6bf67a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4ec01...31117f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5b654...6712e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6791b...d62c0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6fb7c...ef3fa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7481b...73659b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7acd3...42b5d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb81fa2...b5b61c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb915a8...44cbe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb92a94...3e4447` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba77f6...28faa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba7d17...a44de6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba814b...f5ab20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba89fe...d3fda1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbaa935...a2dc06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbab7f9...c05674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbabf54...ef8d9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbad674...1cdc52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb3105...59ccef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5f55...93702d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc16bc...b44246` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcd8ba...ffb276` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd5d94...4192ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd7959...552fb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd82a0...698df6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd9c69...f28ccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbda3ac...cc3947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbde7bd...be8d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe08ef...4f2dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe838a...3184dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbed8f3...89246b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf0e27...cd75bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf3c12...087a34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf5a1d...213c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02e10...ed561e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0a972...9f9b30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc10bf5...c06023` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc16775...b02150` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc17078...e84714` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc259d2...c907e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2bc5f...5609cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3d9fe...6e769e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc43bd2...265340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4e159...a8b40f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5c893...0884be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc63d8a...e7516d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc66c9f...08efcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc67129...c02a14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc700de...04a8ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc797c9...783e26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc82007...9ed9e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8c53a...2e5ca4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8d3ca...887792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8e7c6...c25a64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9ed4b...1d018c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca4b98...b7abc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca8a28...402200` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca8d78...64fc7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaed73...bb7b35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc8f13...607e8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcce0d2...3d3a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd4cac...bb2cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd8e6d...f34608` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce456a...826756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0b1e9...2b6019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd27448...361b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd28128...8c4866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd34c1d...a9c8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd35ff2...670250` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3ac3e...c58ddb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3c7f1...965366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3ec27...a96145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4b273...74cc48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd601f6...8b56d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd62f34...a1afae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6f51f...38f672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd71ac3...8867a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd87f2c...31d927` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8d8ae...3a947e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9dbd1...80bbe9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9dbfe...ff079c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaf39c...ee64c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbda6f...0f6a1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd387f...af5e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd954f...2359e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde1576...71cea3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde1f57...b13521` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdea10f...ec4fa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf30a2...1c65bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf5adc...809a26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0cc3f...74c727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe143aa...481377` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2fa19...59403b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3641f...65ba50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe43857...5e81fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe449ca...8f88d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4aa1d...f6f657` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4ae30...a258a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe505f7...e8d4d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5399c...b3843a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe55fd1...ed6a7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58e03...39d1ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6153a...70d8be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe66db6...dee22a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6f726...bb42ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe71246...4a2725` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe83a79...5bf5f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8d0a7...c16e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe92261...e61b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9c74a...0191f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea37a3...2b5184` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea563b...76d1fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea7cf0...5b641c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea8567...378961` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaea37...42e316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb9c66...617c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec1c71...36b613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec26cd...f742b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec2736...606e2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec48d3...c9cc90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec8c00...251804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeca98b...e6afb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed0b7f...d56d5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed373a...d2602d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed5772...d161b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed5ed0...a664e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed6d51...9fd976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed743e...336010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb5a8...ba02b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee39e4...15832b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeff9a...b97120` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf06823...c9a924` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1b767...701b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1e6ab...bc6efb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2e434...d19744` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f3ab...a6680c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3202a...b05d37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf349c0...e28991` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3f666...97c38f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3ff1a...466a93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf51ef8...3ea6e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5e336...3ef0d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5f850...98460f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf60877...dc67b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6bc36...87d178` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c0a6...0091a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6d442...601247` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf770a6...489a0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf79b54...e81fcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf824d2...da8d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf89333...160b09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8f567...53c378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf92660...9f4d34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9512a...2d0ef1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaacbf...7df52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfabec0...4448ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb490b...5e4df9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbdb72...cba094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc1320...8ac041` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc357...b0695f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd1987...e97e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd6489...4ac0b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe41a8...4ddff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfecb58...d8f894` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff1215...538c7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff26f4...f27988` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff2f0c...eb002a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffd8be...28ac68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffe26b...d4f82f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x027da2...830a71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02a124...95194e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x086efc...e574c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0eaa78...53bd04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11e963...cd8033` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x144c0c...2f9f22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17f619...60172f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cae78...253067` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1deaee...32ef38` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20e260...73ceeb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31c818...c494eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36ac93...dab483` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37da0f...bea1ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x38d409...21c8a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x39acf8...68a98e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b4e26...fc0c5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c7a4e...fc2d32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x495682...e21b29` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x49a215...a3d89b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a9e97...f9ced2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e176b...40be01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51567c...aabc80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x533152...f60e6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53bae3...036d17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x582cc1...91deab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d4346...055dee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5dd9ba...654572` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb8ae...dcfa27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5fa81b...d0242e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x602817...525f4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61989e...a9372a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61b7bd...e60874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x643743...85d252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x654776...e88733` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65620c...187b62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67030a...1eb409` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6841c2...fa34d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7347c5...2aeaa0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ea728...f22681` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f7b23...563ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x807c4d...03cc10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88bf81...760643` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89d829...c48206` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99c1de...98d27e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c5765...d13eea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c9d29...377ebe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e98b8...ff5f8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa92c75...04b04d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadb1c7...2c0297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae9720...4868e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb09a88...2f36f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb43ad6...ea7877` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6dddf...947499` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc8722...4b8db2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe12ff...0b0395` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc26e54...ace833` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca4b64...b3509a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd3be99...5dd0ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd69fb7...fe7079` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd717db...f8296b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda4f3e...e4f86a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbb5f3...f4e46e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe457cd...0ef170` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5d2b9...fe6060` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeba805...5fccfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeca70a...9c3556` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeeee27...222c95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf40951...fa400d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf75687...9a2158` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbc177...2a3d1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbd96c...b63047` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3472a5...c6e53d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x76b8c3...34cbaa`; fantom `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x015ac2...3268f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0167b6...72f668` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02612d...8a3db3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02edb9...831606` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x062af6...db41f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08e353...878e2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0acaf4...24f684` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b9c52...98f427` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d724e...ac7818` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0dc368...58ec5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0dcde0...7ef3c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e01c2...bcd8b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12097e...833d74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1293a5...a15458` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x144a2b...accaf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14897d...dd40db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17c118...0c4a4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19be80...c1b1d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c3e7f...da1a56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cc155...0b6266` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d047d...ab149d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dd0aa...f208be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1df427...477179` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e5ed8...5ce8cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ea9c7...e9e52f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ec62f...9062de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1fe31e...d89b97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x207505...1a831f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20dce4...1777bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x211a39...d4ef63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x214520...b22c6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21d1cd...6be8ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x227dda...5d9733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22f340...862a46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2437e2...68a457` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x256f25...2ac50e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x257950...b2da83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x265820...87db4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26804f...785308` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26b93f...04e0fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x280073...024f29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28e8fb...c9bb9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29001e...27a0bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2906c8...be1a95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a842e...3c7373` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2adabd...4a92a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b878c...066c2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ccacc...1d8574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fedaf...332eaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x303f12...b86a3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30bce7...aefecf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30d698...44a402` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x316702...f04282` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x317f3b...8f936e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3294be...1ac197` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x349fff...743864` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35b555...074e65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35d8f3...ef0eae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x374e9f...3af13a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x375d70...a62914` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37d9d2...0fcbd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x381144...b617cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3894f7...7c01f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38bfa7...d6bd1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a6ec7...de2020` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d8b8d...b4ef71` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3dd098...a6a9f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x429ede...4975bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42b524...f72b7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x437928...740db5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4446e4...bd0c6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4628d8...e0847f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x468a0f...03619f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47a156...46a49b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x485e17...bd183d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x496372...022972` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49ba5e...1176d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4aec06...78b87c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c5d19...55f4f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cd20c...554ab9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d12ae...3881e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d70d7...bb42b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4deb14...7e63e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f0de3...6f1376` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x504027...76d393` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50dcb0...389dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50ef42...0d3328` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52fe2d...c3c21b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x535b96...31ab1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53c9ca...4c675b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x580961...2553fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x581aed...088a76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x599d92...19f193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b4cd8...914762` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d0ea9...a09427` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d0fc0...e3c02a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ec477...85a9fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f315a...12ea15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f6207...4da6b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fa520...bb9266` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60ae12...ab3cf5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61318c...3c1b3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x618794...95e09e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62055d...01fe23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6354e7...102a36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x635eb2...e115a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x652065...526d3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65ebc2...6be78e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x663efc...d9e895` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x676428...3c625e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6847a1...480a79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x687094...a9d748` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68bfc0...868716` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a0f4a...8f339b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b004d...ac3726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c3171...100897` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6dc573...f143b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f7bf5...1840e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fb5bd...8ffdc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fe46f...f558ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ffb81...6d2a79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7093e0...9d3a3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70aa88...690889` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72adb5...f0e7a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72c5e7...b87297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x746fac...6d4475` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x747ea3...3c33be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75e90d...2d448e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77b4aa...92508a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7864ba...920b3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78dddc...dbcd0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a20ee...e36b24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a7443...8dd7ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dd26f...4c33a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ff964...eed12a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8016fa...02dd26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x808e25...899c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x812f04...59b050` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85e1ca...43c61c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x861468...d8059a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86f772...71e9c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87c171...188d3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88c6aa...85f1bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x892e01...611c96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89c416...26f593` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89c5a4...1b4c46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8abbcf...ef5511` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aec9a...eca989` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b3b94...57d3c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c26c8...79bc3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c4983...ac916e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d2cdc...f98b48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dafe1...1e6b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ddf22...ab1d9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ef7d0...05ca09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92f605...64923f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9551ba...6a33d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95713d...124852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x961a67...9c85c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96d15d...53acd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96e0e1...e515b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x989f62...62c233` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98dd0c...56261a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ab3fd...881b42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ab60e...37d41c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e343b...c1f05e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f1d08...da7bde` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f7968...03a76f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa04d02...8ab96e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2dfa5...2dd7a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa3bf87...74d93b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4ca55...c1b999` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa56061...75e99f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5d7f1...799838` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6827f...328c22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7187a...06ff0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa71ebb...63860d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa85391...765e67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8a07c...b3deb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaafb61...006ad2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab4bf7...d2621a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad31a9...cc8fe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaeaa3d...fc4a77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaed29d...fd879d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf2283...0e8032` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb176e0...f6a921` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb18d0b...3dcaec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1a14f...e162af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb31a8c...2b8d5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb45f49...c4341d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb473cf...1122fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb590e9...f018c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5f6f3...b1c0dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb68c54...9de7d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb69752...ce7481` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6b01f...fc8883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb760c9...b48b8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7a103...44c393` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7cf07...45581c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7cf24...1de822` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb82d97...2ccd73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba77f6...28faa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba89fe...d3fda1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbaa935...a2dc06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb6121...331fc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb910e...d8f3d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdcb71...583112` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe838a...3184dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbef14c...b1c9a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf3e46...4d9f89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1060d...fa5439` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc17b78...3736be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2bc5f...5609cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4431d...2696b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce0eaf...95b9ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce789f...b555be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd10051...5ff860` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1f5e0...d2e779` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd20e33...634ad0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd28128...8c4866` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3c7f1...965366` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7d486...5ad709` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8a18e...01b72d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb0c31...f37c9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc11d4...926a6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc2d66...f2cd51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcc1d3...16cf2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd2f89...eafee5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd7e7a...0cedca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde905e...9c288f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdef2b3...0dc044` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf5adc...809a26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfff87...3de01e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe0cd92...4a266d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3d0d4...72abb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4ae30...a258a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5eb0b...e0b562` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe74e9f...50a7ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe774d1...4f632d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7a848...6151ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe83a79...5bf5f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8e7d0...d1786c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe91713...bae18d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea8567...378961` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb4891...fc1c8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec15d1...a95270` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecb083...058f69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed3fb7...188dfc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed75fa...1ca123` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee589b...ef8bce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef1f3f...276f16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef2c65...3b05cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xefc66a...212663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1df85...a1cfd0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf26dee...325293` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf279ad...f0621f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf28510...7ec7b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf46df4...ef17aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6bc36...87d178` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf77752...1563e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa92f7...51c251` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb86ae...6a1b0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfbdb72...cba094` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Badger Vaults 1.5 - Quantstamp - Jan 2022.pdf](https://github.com/Badger-Finance/badger-vaults-1.5/blob/main/security/audits/Badger%20Vaults%201.5%20-%20Quantstamp%20-%20Jan%202022.pdf) | Quantstamp | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2021-10-badgerdao](https://code4rena.com/reports/2021-10-badgerdao) | Code4rena | Contest | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/reports/2021-09-bvecvx](https://code4rena.com/reports/2021-09-bvecvx) | Code4rena | Contest | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [quantstamp-badger-ib-btc.pdf](https://badger.com/images/uploads/quantstamp-badger-ib-btc.pdf) | Quantstamp | Audit | 2021-08 | stale | Direct | contract_name | 4 | n/a |
| [defi-yield-badger-finance.pdf](https://badger.com/images/uploads/defi-yield-badger-finance.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [zokyo-badger-sc-audit.pdf](https://badger.com/images/uploads/zokyo-badger-sc-audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2022-06-badger-vested-aura-contest](https://code4rena.com/audits/2022-06-badger-vested-aura-contest) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2022-06-badger](https://code4rena.com/reports/2022-06-badger) | Code4rena | Contest | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x660802...6d787a`](./contracts/ethereum-1/0x660802fc641b154aba66a62137e71f331b6d787a/) | BadgerTreeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd366e0...022ad0`](./contracts/ethereum-1/0xd366e016ae0677cdce93472e603b75051e022ad0/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1862a1...ef24a5`](./contracts/ethereum-1/0x1862a18181346ebd9edaf800804f89190def24a5/) | SettV1_1h | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19d97d...dffc28`](./contracts/ethereum-1/0x19d97d8fa813ee2f51ad4b4e04ea08baf4dffc28/) | SettV1h | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x459189...f7ddeb`](./contracts/arbitrum-42161/0x4591890225394bf66044347653e112621af7ddeb/) | SettV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 5 |
| standard_library | 2 |
| needs_review | 921 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Zero-match audit list:

- [3362] Badger Vaults 1.5 - Quantstamp - Jan 2022.pdf
- [3364] code4rena.com/reports/2021-09-bvecvx
- [3366] defi-yield-badger-finance.pdf
- [3367] zokyo-badger-sc-audit.pdf
- [12497] code4rena.com/audits/2022-06-badger-vested-aura-contest
- [12498] code4rena.com/reports/2022-06-badger

Fork inheritance lineage and inherited audits are included when available.
