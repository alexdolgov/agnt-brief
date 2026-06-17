# Agentic Audit Brief: Pickle

⚠️ Lifecycle status: DECLINING - TVL dropped 27.7% over 90 days

## Project Overview

- Project: Pickle (`pickle`)
- Website: [https://pickle.finance/](https://pickle.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T23:20:58.036Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: arbitrum, ethereum, metis, optimism, polygon
- Contract surface: 31 unique implementations (72 raw deployments)
- DeFi Llama TVL: $4,057,526.41
- On-chain TVL (included contracts): $2,872,557.11
- TVL by chain: Ethereum $2,872,557.11

## Project Description

Pickle is an auto-compounding yield aggregator for DeFi and LP positions. PICKLE can be locked or staked as DILL, which is used for governance, revenue sharing, and farm APY boosts.

### Architecture

The Timelocks & Multisig family governs the Pickle family by controlling parameters like gauge weights and reward emissions. The MasterChef contract likely distributes PICKLE rewards to stakers, bridging governance decisions to user incentives.

## Contract Surface Quality

- Indexed contracts: 669; live-surface contracts included: 72 (68 live, 4 unknown).
- Excluded by liveness: 597 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 55; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/31 (6.5%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 31
- Raw deployments: 72
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $2,872,557.11
- Latest audit: 2021-03 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,872,557.11 represents exposure in a protocol with declining activity.

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
| yVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/); ethereum `0x2f0811...9faf18`; ethereum `0x37d19d...eda74a`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x7ff566...e9d0f6`; ethereum `0xacd43e...a6f952`; ethereum `0xba2e7f...b94fe1`; ethereum `0xe1237a...4d16c7` | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | n/a | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | ⚠️ Unaudited |
| yWBTC | token | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| PickleToken | token | ethereum | n/a | [`0x429881...891ca5`](./contracts/ethereum-1/0x429881672b9ae42b8eba0e26cd9c73711b891ca5/) | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| yUSDT | token | ethereum | n/a | 3 deployments: ethereum [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/); ethereum `0xa17872...a1dd14`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
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
| StableAMM | unknown | ethereum | n/a | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xdc9855...32a819`](./contracts/ethereum-1/0xdc98556ce24f007a5ef6dc1ce96322d65832a819/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2c6c87...bb2a1b`](./contracts/ethereum-1/0x2c6c87e7e6195ab7a4f19d3cf31d867580bb2a1b/); ethereum `0x74c6ca...e4bdcc`; ethereum `0xbbcf16...8b29cf`; ethereum `0xed4064...ff5c4d` | ⚠️ Unaudited |
| xVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/); ethereum `0x67c472...06c365` | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0xc2cb10...24ce32` | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0xd6ad7a...a3436e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_All_Strategies.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [here (also discovered via alternate URL)](https://raw.githubusercontent.com/pickle-finance/protocol/master/audits/Haechi_Audit.pdf) | Haechi | Audit | 2020-11 | stale | Direct | contract_name | 1 | high |
| [here](https://github.com/pickle-finance/protocol/blob/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 1 | high |
| [MixBytes_Audit_Curve_Strategy.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_Curve_Strategy.pdf) | MixBytes | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | yDelegatedVault | core_logic | $480,765.49 | Verified native implementation with $480,765.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x429881...891ca5`](./contracts/ethereum-1/0x429881672b9ae42b8eba0e26cd9c73711b891ca5/) | PickleToken | token | $75,396.00 | Verified native implementation with $75,396.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | core_logic | $3,014.26 | Verified native implementation with $3,014.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xd55601...98127f`](./contracts/metis-1088/0xd556018e7b37e66f618a65737144a2ae2b98127f/) | ControllerV4 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e5762...19e74f`](./contracts/ethereum-1/0x2e57627acf6c1812f99e274d0ac61b786c19e74f/) | GaugeProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef0881...b4ec5d`](./contracts/ethereum-1/0xef0881ec094552b2e128cf945ef17a6752b4ec5d/) | MasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f7fa...0f465b`](./contracts/ethereum-1/0x45f7fa97bd0e0c212a844baea35876c7560f465b/) | MasterDill | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bb74b...538e33`](./contracts/ethereum-1/0x1bb74b5ddc1f4fc91d6f9e7906cf68bc93538e33/) | PickleJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x74dc9c...67c3ce`](./contracts/polygon-137/0x74dc9cdca9a96fd0b7900e6eb953d1ea8567c3ce/) | PickleJarDepositFeeInitializable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc33574...51aec6`](./contracts/optimism-10/0xc335740c951f45200b38c5ca84f0a9663b51aec6/) | PickleJarUniV3Optimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/) | xVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ySUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 9 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=26

Zero-match audit list:

- [3374] here
- [3378] MixBytes_Audit_Curve_Strategy.pdf

Fork inheritance lineage and inherited audits are included when available.
