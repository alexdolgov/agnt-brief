# Agentic Audit Brief: Pickle

## Project Overview

- Project: Pickle (`pickle`)
- Website: [https://pickle.finance/](https://pickle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.124Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, ethereum, metis, optimism, polygon
- Contract surface: 605 unique implementations (646 raw deployments)
- DeFi Llama TVL: $3,984,310.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 39 project-authored contract(s) across 5 chain(s); 27 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 5 common project-authored base contract(s) (erc20detailed, structs, boringownabledata). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 646; live-surface contracts included: 646 (67 live, 579 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/28 (7.1%)
- Deployed-live implementations: 29 of 605 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/31
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 574
- Unique implementations: 605
- Raw deployments: 646
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Haechi | Tier 2 | 1 | 3.2% | 2020-11 |
| PeckShield | Tier 2 | 1 | 3.2% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Gauge | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x4731cd...c16912`](./contracts/ethereum-1/0x4731cd18ffff2c2a43f72eae1b598dc3c0c16912/); ethereum `0xf5bd1a...5147f6`; ethereum `0xfaa267...fd3fd8` | ✅ Audited |
| MasterChef | unknown | ethereum | n/a | [`0xbd17b1...394b0d`](./contracts/ethereum-1/0xbd17b1ce622d73bd438b9e658aca5996dc394b0d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ControllerV4 | governance | metis | n/a | [`0xd55601...98127f`](./contracts/metis-1088/0xd556018e7b37e66f618a65737144a2ae2b98127f/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/); ethereum `0xd77c2a...9ee175`; ethereum `0xd9194d...ab029d`; ethereum `0xe4ffd6...02830e`; ethereum `0xed3519...b095bf` | ⚠️ Unaudited |
| GaugeProxy | operational_periphery | ethereum | n/a | [`0x2e5762...19e74f`](./contracts/ethereum-1/0x2e57627acf6c1812f99e274d0ac61b786c19e74f/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| MasterChefV2 | unknown | ethereum | n/a | [`0xef0881...b4ec5d`](./contracts/ethereum-1/0xef0881ec094552b2e128cf945ef17a6752b4ec5d/) | ⚠️ Unaudited |
| MasterDill | unknown | ethereum | n/a | [`0x45f7fa...0f465b`](./contracts/ethereum-1/0x45f7fa97bd0e0c212a844baea35876c7560f465b/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | polygon | n/a | 4 deployments: optimism `0x849c28...306b7b`; polygon [`0x20b2a3...6e8749`](./contracts/polygon-137/0x20b2a3fc7b13ca0ccf7af81a68a14cb3116e8749/); metis `0x22ce2f...81a150`; arbitrum `0x7ecc71...0ace24` | ⚠️ Unaudited |
| PickleJar | unknown | ethereum | n/a | 14 deployments: ethereum [`0x1bb74b...538e33`](./contracts/ethereum-1/0x1bb74b5ddc1f4fc91d6f9e7906cf68bc93538e33/); ethereum `0x2385d3...997ffd`; ethereum `0x2e3539...af22ec`; ethereum `0x3a41ab...0e94d8`; ethereum `0x46206e...79258b`; ethereum `0x55282d...c89135`; ethereum `0x65b253...118bbb`; ethereum `0x68d14d...e66a89`; ethereum `0x77c8a5...4239ad`; ethereum `0xf79ae8...95d55b`; polygon `0x261b56...2cc221`; metis `0xadd50d...e9ba93`; arbitrum `0x94fead...dd3bca`; arbitrum `0x973b66...977504` | ⚠️ Unaudited |
| PickleJarDepositFeeInitializable | unknown | polygon | n/a | [`0x74dc9c...67c3ce`](./contracts/polygon-137/0x74dc9cdca9a96fd0b7900e6eb953d1ea8567c3ce/) | ⚠️ Unaudited |
| PickleJarUniV3Optimism | unknown | optimism | n/a | [`0xc33574...51aec6`](./contracts/optimism-10/0xc335740c951f45200b38c5ca84f0a9663b51aec6/) | ⚠️ Unaudited |
| PickleToken | token | ethereum | n/a | [`0x429881...891ca5`](./contracts/ethereum-1/0x429881672b9ae42b8eba0e26cd9c73711b891ca5/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xdc9855...32a819`](./contracts/ethereum-1/0xdc98556ce24f007a5ef6dc1ce96322d65832a819/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2c6c87...bb2a1b`](./contracts/ethereum-1/0x2c6c87e7e6195ab7a4f19d3cf31d867580bb2a1b/); ethereum `0x74c6ca...e4bdcc`; ethereum `0xbbcf16...8b29cf`; ethereum `0xed4064...ff5c4d` | ⚠️ Unaudited |
| xVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/); ethereum `0x67c472...06c365` | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0xc2cb10...24ce32` | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | n/a | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0xd6ad7a...a3436e` | ⚠️ Unaudited |
| yUSDT | token | ethereum | n/a | 3 deployments: ethereum [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/); ethereum `0xa17872...a1dd14`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/); ethereum `0x2f0811...9faf18`; ethereum `0x37d19d...eda74a`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x7ff566...e9d0f6`; ethereum `0xacd43e...a6f952`; ethereum `0xba2e7f...b94fe1`; ethereum `0xe1237a...4d16c7` | ⚠️ Unaudited |
| yWBTC | token | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (574)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0040e0...278416` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00896c...eb3cd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x008b61...60e2d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0185ee...2f1e30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01ffa5...b4695b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02e56e...f7243f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02ecde...d31a39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x035663...381002` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0697d0...252912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0989a2...8936f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09b5ed...c77631` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09fc57...3ec6ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c2884...46f195` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c7825...1ba589` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e439d...a2bc38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e5a5b...d8d32a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f4603...dba733` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14c025...1bc442` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14d7f2...6f9f6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x153d01...8668af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19c599...d53d4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ae993...790591` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bf62a...faee06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c5dbb...859648` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cadca...7d3f21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cf137...70323a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d92e1...3e101d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dae15...caf7f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dd7f3...0ba660` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1de1d1...cf0308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ed1fd...104c07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x202a64...13102e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x209507...d9de57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x209a68...40e78f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22636c...ff6615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x228b40...f98612` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x234224...df3a48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2350fc...47505d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x259994...7a2ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26b62c...454a78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28a21d...0c2376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a7ffb...beed4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cd8e0...a81c18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fe2d0...e237d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff3e6...b0ea90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff4f4...e9e78f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30a8e9...faf442` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3158bc...6b115b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x315925...dae47a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3191be...43b7f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3261d9...26ffed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x345a89...b915ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x357779...8dd80d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36b57d...f7b882` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x388424...585eb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3930d2...6ca999` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3842...afc3d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bcd97...f01cac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d5044...23c2df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ec617...3c48ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ed6a1...74e3d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41afe3...1ad252` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x439923...5262ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x439bd6...be1654` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43b078...a1d957` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x441f36...ef0cb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4645c5...b18efd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b637...6f1996` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b7b0...8af191` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f581...403fe5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x498227...502172` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49f67c...60d2cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a6918...44bd6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a9744...9bcf8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b9850...25ad7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bd411...ad0e0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c1906...bb0485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cac56...fed2a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cc122...c152ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d08ff...68d2dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e9806...019ba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ea551...0af680` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f1f43...024cb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f5eb4...e38c7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f8aac...0c422d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ffe73...9166d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x506748...975b14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53bf2e...b352c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54d17c...38469d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55af41...bfb356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x571e53...376bc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58635c...c57aa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5904ff...a42146` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x596cb1...6b75e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59b99c...0e8f77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b33a7...280217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bbfce...92039e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d8b44...406f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5da34d...114d5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dfce8...d73c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e2029...ec01a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5eff6d...6b1f48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f6219...f9d523` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61e2ae...fd2620` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65e115...ddb98f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66006c...b6e595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x667610...23a2f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66a13e...f3f8cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x671683...9e891f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67a0e7...80a625` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x684725...ba5210` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6949bb...2f3f87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x698e66...e90a12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69cc22...714370` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a1414...77a568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c0b1e...936df3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cb797...559893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cbc1d...128dc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d8fdc...220726` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dfcdd...9ab968` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f4a70...a4973b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x729c62...b32dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72e031...3354e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73fbf7...e411d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x741033...d236ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x748712...dc5944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7519e7...1adacf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x760013...d40edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x763c3c...5b43c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x764640...255c7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78837b...80097b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x797172...46f598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7985a7...5000a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79cf7c...5f1562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79fbf3...a07c2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a09f0...3a6949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b5001...5e9ad1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b5916...ce3637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c0d85...f3a15a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c3b79...18b81a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c8de3...5fee9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ce1d7...807a7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7dad15...8a914c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f501e...8025dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f8541...9e2856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80e22d...8da007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x822ba8...729afd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x824951...cefb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x826870...e05d0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x836344...8bc016` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842f7c...b2e966` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x867b83...594d86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x874201...54ed1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x874230...e44f3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88dfc0...6c8c01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c2d16...504e43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c5814...20cf60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ce13e...cf8225` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f14fd...ae7455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f9676...5a2809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fbe15...ec8dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x905b8f...f27af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90a670...948991` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90e1ad...f034db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x927e3b...b227c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9299c5...42966a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x931f5e...fd9180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93bb0d...694923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94c76c...380cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x959da2...ef5dbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x993f35...87126c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99e71a...8441bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a9ee0...4f72ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bea06...3e7990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c2ac1...090c93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c8600...f34eaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9eb0aa...60adf9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa07a30...2943ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa17a88...dab66f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa28217...5d201d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa39412...ac4520` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7a37a...4d6bce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7edc2...4348f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa84b67...e8fcaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaba044...c5a69e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabf964...293acb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac0854...bda154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadce16...2ad480` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf3090...e19ae8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafb2fe...497230` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0ed2c...c7d97c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1243d...cc68a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb168ff...a899cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb231f9...369afa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb24528...030b2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb48b92...da7727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4ebc2...159c69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5208a...ae78a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb66485...37583f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb782e6...f76445` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba500d...5b6fe9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb4013...a5abcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc5729...1a414f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd7000...7ce9c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf4cce...7c040c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0cf2c...6dbe82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0f976...c572e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1513c...38768b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1de19...e5b369` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc27d07...5137f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2b58e...0bd967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2d82a...467bc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc450af...f0b652` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc46925...fb68d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc66583...f5fd30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc732a2...940747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc80090...cbc562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc83d3a...99df98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc931c4...8da369` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc97f3f...afe5ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc995ee...fd75f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb6c15...17da36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb9e10...7135aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbecd4...34303c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbf174...8db4ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcca4cf...9b2265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd6784...32e300` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd7f5f...91814f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd892a...1f829d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0248...bda767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0c98...f368c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xced67a...99e378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf4556...00df45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcffa06...bb5162` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd18169...1e8361` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1dd70...00d759` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd21e13...e39448` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2efff...bee51a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd33d3d...6858b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd373f6...496a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38a7e...2b7c33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3b37e...e3310f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3b646...fdcb57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd639c2...0008df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6ca50...ca64c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7054d...afe355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8614d...9b2e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd86f33...04dc0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8de54...f974d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd92c7f...eaa0d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda7a3f...03bb8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab2d8...2d8955` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb76cd...a788aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb84a6...8498ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb9fd6...eeb2e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcba1a...17b341` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcfae4...9cf24f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde74b6...041525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe04849...594a0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe106db...d9f47e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2376e...529cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe276be...73f6ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe33540...add453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe59244...805781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe64870...bd1484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6669e...0a3173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeade12...506d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb6044...fd7ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb6ec6...873ef4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb801a...8f4c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec0dd1...8d4af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecb520...ad61ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedee8f...d126c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee6113...dfcf50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef386d...59ce2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf06ffe...3bb3cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1478a...af5e74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf191f6...da0fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf272ea...768037` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf303b3...ec0ebd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf64419...63b5b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6d463...fef0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf76586...23d76a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf78f8f...058514` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7b0af...709aba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7b8a9...d948e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf92a43...0f9bec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf92b09...c0cabe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa36c9...0f295e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb4ad6...9da00f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfba546...0d5bc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc0ff...ccba69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcdbb0...3fd2d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd113b...3848b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff26fe...a5913d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff5c95...0d9277` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x082be6...6d5ba8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0a04d1...768e2a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0bea75...17ee03` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x12e674...7c0bb0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x143bf0...9f884e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1570b5...b41a49` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1634e1...207468` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1ac33f...5681f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1bb404...7bde34` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1d9073...55c303` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x229207...90b8a8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x24f8b3...13ae5e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x27811a...51a0d2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x29020d...da6c2c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2dd866...74e56b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x30ad09...ee9194` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x317d6e...792e4d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3360a6...8d45c2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x359d30...c1440a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x37cc6c...89df23` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x387c98...6812af` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3ba3f8...dfd5f7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3c7825...071e40` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x49da51...dac302` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4c29bc...bdf8ca` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4d7841...912da8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4ffe01...2968b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x555839...7e54c1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x59fb62...c62c40` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a3429...989665` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x62b007...a4a7d9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x637bbf...8d3ce5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x64ed97...d4f624` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x704616...11b7c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7513a8...d63ee5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x754ece...b8e00b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7553b5...089dad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x76ffb6...121302` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x782275...5eb029` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x86d36e...b4fa8d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8cc2f2...07d45d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x907393...35775a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x90cf23...b7ac13` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9fc985...60d7e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa0eb2b...303e4c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa1f13c...3798b2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa526bb...be34be` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa58d59...fe6587` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa93651...bd3f42` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa99e8a...00e849` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaa50bc...5907f0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xae2a28...49f234` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb091a2...adc1fd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbbf823...713550` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbe27c2...2636f8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc1ccc9...23555e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc2d003...d013bc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcaae85...207807` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcade0c...94f58a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcca059...4548b9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcdd081...5ab502` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd0a77b...33e621` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd5c959...32c4a9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe039f8...99ada7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe40be0...b17d68` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe5eee8...36d647` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe99368...0a954d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeb4813...973aea` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xec50bb...af4d94` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeda1f6...3906db` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeedef9...13cdb7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf279f3...d6f44b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf66b6a...5675a2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfc9e70...0247df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x051984...e20d8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x094e59...8eded9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a2279...3755a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c3969...12390b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0f7c6b...0808e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x10a4cb...c43e28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x186ed5...3ae336` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a602e...d299d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1ccdb8...45e37f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d35e4...7cb427` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2096f0...cba848` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x254825...d162dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ad8c3...5f373d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2e5762...19e74f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32b565...72cfe4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33dd8a...ae669f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x376653...159bff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b81df...bb323e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e5c82...c5892e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a19c4...ec2371` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x518136...d85e7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51cf19...edca25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x520764...e4b01d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a63b1...ab9209` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c5a17...363b3a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e5d77...180923` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5fd03e...7254f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x633351...4668df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x63a991...9b0d6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65c65b...b8ac90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c551c...741b82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d6d66...120650` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f8b4d...e54cc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7127e6...25475f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x72a8e9...5c9fe6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x737bb3...44724f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x738e65...5bf518` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x751210...3a23fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x770cdc...e2fa09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7749fb...0aa647` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7799...a9bc69` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c187d...d6424b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f2c98...3cc5a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x80ab65...11ac95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82efbf...a3ecdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83074f...092d09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x835804...407f63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a2e10...e98db7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b4a32...83649c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91bcc0...a7012c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95a1fb...f08589` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9976a2...b51fb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9cae10...fa85e2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ed7e3...12556c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0b1cd...20602c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa19d14...d12bdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa547fc...6b07c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6c8aa...f97a6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaa96c2...1f872c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac7c04...a248c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf3181...530d10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb27182...efa87b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb35c8e...36cf05` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5f930...f29446` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbcded1...c0bf6b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfc340...2898d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc24f7e...bac0dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc84509...5353a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca1212...a0b691` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcd276d...40dea0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd06a56...0c848d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd170f0...c09675` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd20206...662ad1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd438ba...aac75a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe118e7...5ceb85` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe28287...ef5749` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe484ed...f7a1d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5bd49...1cc6d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe75c88...3d7b94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8bf26...440a88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9ed3d...502770` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea23eb...49e153` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0fd3e...623f74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf12bb9...1e6f83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf34514...89ac7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6baf3...42ca28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf75f93...2c0f78` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc42a9...4fe60b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x024f4d...fc213e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b4a6f...546304` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x14645c...dc2d7c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x17c3cc...a592af` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x26ffb3...e6cc74` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3657de...10541f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3864b6...e2f8a3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3d30b4...eda993` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4484f7...e629a0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4e220e...a0ce17` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x50aaea...5a57dc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x511859...6cf2de` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x55f2b9...5490ad` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x57a319...8c639f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6279e6...13eab2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x627c32...53d8b3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x690940...e4bf02` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6a0f35...84f53c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6d6fc6...8e3b40` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7ecc71...0ace24` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7f6d8c...7540db` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8cd9e4...6fc7d7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8d6901...857ca2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8ebe84...8035fb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8f161e...c0b714` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x970723...2c98d3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9b2c9d...211230` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa18523...b1a945` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa28c72...475980` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa99850...34028f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xadb5e5...5628a3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xae94c0...157c5e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xae95d1...441e93` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb0c5e2...57661b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb6da04...7639e3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc3f393...fac9e9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc5da9e...fdbfd5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcefaab...52a83a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd46998...4115ee` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdc99ba...471e98` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe04901...06be0b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xeaf2a4...c4431e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xeb83b8...3edca2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xebbd22...a571ab` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xef0b1f...b1d65d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf00bfc...739be5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf1703c...be496b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf911c5...cfb79c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfa601b...eb23fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x024f4d...fc213e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x075732...4d0496` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b651d...70c039` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0be790...7aae69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c0288...b2d4c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ed223...164213` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1212dd...a87b88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2096f0...cba848` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x297231...f63034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b3bf4...bb9b92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e7f3c...b0cd2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3145a9...e3b958` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41a610...13790d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49e161...7a03e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d622c...1e7dd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55d5bc...26bd03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ba345...26ed39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bdad9...d8c505` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ccc77...bb6205` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62ebe0...a6959d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63292a...ca910c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6779eb...cc9540` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x682da5...393ff7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fe9d2...e23db9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7677b7...405bb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f6d8c...7540db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x801a9c...8a8c43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81d80f...24e762` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81e5d4...897201` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x858d7f...d72f9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87a757...be6a5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e7691...cabe81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e93d8...33a07c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ee424...b52edc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x934737...1ba7f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9365af...6e6264` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93afb7...1fe0a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95ca45...96d165` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c485a...7cf512` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cae10...fa85e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa23d9e...ab5404` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa26a38...b751cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6a7b9...978504` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xabcad3...976bfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb06031...a8f165` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0c5e2...57661b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc3e28...010894` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc05dec...e3356e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc50a7a...ea9756` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6ef93...03823c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc2458...a1274f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce9075...1516e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf05d9...7fdcc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd91038...447d7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdefbed...8ea8d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe02ca5...b954de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5bd49...1cc6d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea7322...3ff5cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebefb8...049c4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecaf31...2ea78b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecfd13...bc7acb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf15cf4...faa1d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf53aa8...55f449` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf968f1...a455dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9e3a0...6473f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc14fc...e4c3ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffe17a...07ac8d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [MixBytes_Audit_All_Strategies.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_All_Strategies.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Haechi_Audit.pdf](https://raw.githubusercontent.com/pickle-finance/protocol/master/audits/Haechi_Audit.pdf) | Haechi | Audit | 2020-11 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 1 | n/a |
| [MixBytes_Audit_Curve_Strategy.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_Curve_Strategy.pdf) | MixBytes | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0xd55601...98127f`](./contracts/metis-1088/0xd556018e7b37e66f618a65737144a2ae2b98127f/) | ControllerV4 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/) | EminenceCurrency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e5762...19e74f`](./contracts/ethereum-1/0x2e57627acf6c1812f99e274d0ac61b786c19e74f/) | GaugeProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | Keep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | Keep3rV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef0881...b4ec5d`](./contracts/ethereum-1/0xef0881ec094552b2e128cf945ef17a6752b4ec5d/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f7fa...0f465b`](./contracts/ethereum-1/0x45f7fa97bd0e0c212a844baea35876c7560f465b/) | MasterDill | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20b2a3...6e8749`](./contracts/polygon-137/0x20b2a3fc7b13ca0ccf7af81a68a14cb3116e8749/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bb74b...538e33`](./contracts/ethereum-1/0x1bb74b5ddc1f4fc91d6f9e7906cf68bc93538e33/) | PickleJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x74dc9c...67c3ce`](./contracts/polygon-137/0x74dc9cdca9a96fd0b7900e6eb953d1ea8567c3ce/) | PickleJarDepositFeeInitializable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc33574...51aec6`](./contracts/optimism-10/0xc335740c951f45200b38c5ca84f0a9663b51aec6/) | PickleJarUniV3Optimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x429881...891ca5`](./contracts/ethereum-1/0x429881672b9ae42b8eba0e26cd9c73711b891ca5/) | PickleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | StableYieldCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6c87...bb2a1b`](./contracts/ethereum-1/0x2c6c87e7e6195ab7a4f19d3cf31d867580bb2a1b/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/) | xVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | yDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | yDelegatedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | yInsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ySUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | yTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | yUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/) | yUSDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/) | yVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | yWBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 574 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [3374] MixBytes_Audit_All_Strategies.pdf
- [3378] MixBytes_Audit_Curve_Strategy.pdf

Fork inheritance lineage and inherited audits are included when available.
