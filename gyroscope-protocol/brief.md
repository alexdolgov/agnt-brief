# Agentic Audit Brief: Gyroscope Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 72.3% over 90 days

## Project Overview

- Project: Gyroscope Protocol (`gyroscope-protocol`)
- Website: [https://app.gyro.finance/](https://app.gyro.finance/)
- Lifecycle: declining (Tier 0, 99.1% below peak)
- Generated: 2026-06-18T07:45:15.521Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, polygon-zkevm, sei, sonic
- Contract surface: 55 unique implementations (100 raw deployments)
- DeFi Llama TVL: $406,905.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gyroscope Protocol is a decentralized exchange (DEX) and stablecoin infrastructure project. It provides automated market maker (AMM) pools with concentrated liquidity (ECLP, 2CLP, 3CLP) and a stablecoin (GYD) backed by diversified reserves, governed by a system of vaults, oracles, and config contracts.

### Architecture

All contracts are part of a single integrated protocol. Pool factories create AMM pools that interact with the Balancer vault; the GYD stablecoin is minted via vaults and reserves, governed by GyroConfig and GovernanceProxy, with routers facilitating user interactions. Proxies are used extensively for upgradeability and access control.

## Contract Surface Quality

- Indexed contracts: 513; live-surface contracts included: 100 (97 live, 3 unknown).
- Excluded by liveness: 322 inactive, 91 singleton, 0 uninitialized.
- Deployment units: 7/54 live.
- Detected codebases: balancer-v2
- Unverified dependencies: 11/35.

## Audit Coverage Summary

- Verified implementations audited: 6/51 (11.8%)
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 55
- Raw deployments: 100
- Audits discovered: 10
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 3 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 6 | 11.8% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceRoleManager | governance | sei | n/a | [`0x78898a...b3a4b9`](./contracts/sei-1329/0x78898a5cdf6d1eb009277c744cb2241eacb3a4b9/) | ✅ Audited |
| GydDistributor | operational_periphery | ethereum | n/a | [`0xc1024e...b0561d`](./contracts/ethereum-1/0xc1024e475e357375e16c7f86fe46cbc6ffb0561d/) | ✅ Audited |
| L2GydDistributor | operational_periphery | arbitrum | n/a | [`0x4dfdad...6ba299`](./contracts/arbitrum-42161/0x4dfdad359bd4c154dd307350582c4bff636ba299/) | ✅ Audited |
| sGYD | unknown | ethereum | unit-35940 | [`0xea50f4...f37816`](./contracts/ethereum-1/0xea50f402653c41cadbafd1f788341db7b7f37816/) | ✅ Audited |
| sGYD | unknown | arbitrum | unit-35969 | [`0xea50f4...f37816`](./contracts/arbitrum-42161/0xea50f402653c41cadbafd1f788341db7b7f37816/) | ✅ Audited |
| UpdatableRateProviderBalV2 | unknown | sonic | n/a | 10 deployments: optimism `0x32f6fc...c41041`; sonic [`0x13024f...50a05d`](./contracts/sonic-146/0x13024ff3879ce1d3a827958ab1e5fdf29250a05d/); sonic `0x20a7e5...04bc89`; sonic `0x218cb3...a7bd9f`; sonic `0x4881ef...99ec83`; sonic `0x5b5c4b...1f2048`; sonic `0xb7b5d2...f5f144`; sei `0x27ce6a...8d7bb0`; base `0x2a803c...fd4025`; base `0x42d9b3...4aadc0` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveRateProvider | unknown | sonic | n/a | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | ⚠️ Unaudited |
| BatchRouter | adapter | optimism | n/a | [`0xad8905...f8a85e`](./contracts/optimism-10/0xad89051bed8d96f045e8912ae1672c6c0bf8a85e/) | ⚠️ Unaudited |
| BatchRouter | adapter | sonic | unit-35956 | [`0x776165...968daf`](./contracts/sonic-146/0x7761659f9e9834ad367e4d25e0306ba7a4968daf/) | ⚠️ Unaudited |
| Beets | unknown | sonic | n/a | [`0x2d0e08...66e4f0`](./contracts/sonic-146/0x2d0e0814e62d80056181f5cd932274405966e4f0/) | ⚠️ Unaudited |
| BeetsOFTV2 | unknown | sonic | n/a | [`0x1e5fe9...626795`](./contracts/sonic-146/0x1e5fe95fb90ac0530f581c617272cd0864626795/) | ⚠️ Unaudited |
| BufferRouter | adapter | sonic | n/a | [`0x532da9...3a721b`](./contracts/sonic-146/0x532da919d3eb5606b5867a6f505969c57f3a721b/) | ⚠️ Unaudited |
| Child Liquidity Gauge | operational_periphery | base | n/a | [`0x9f7e65...b37013`](./contracts/base-8453/0x9f7e65887413a8497b87ba2058ce6e4ef4b37013/) | ⚠️ Unaudited |
| ChildChainGaugeFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xa523f4...4612dc`](./contracts/optimism-10/0xa523f47a933d5020b23629ddf689695aa94612dc/); sonic `0xe6338d...33bd7c`; base `0xb1a4fe...d9021f` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | optimism | n/a | 3 deployments: optimism [`0x56c8d8...864aeb`](./contracts/optimism-10/0x56c8d8f7f926e0fb04a2cf05f18b44b2c5864aeb/); optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | optimism | n/a | [`0xc9b360...d5988f`](./contracts/optimism-10/0xc9b36096f5201ea332db35d6d195774ea0d5988f/) | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | optimism | n/a | [`0x4eff2d...ff4cb5`](./contracts/optimism-10/0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5/) | ⚠️ Unaudited |
| DistributionManager | governance | ethereum | n/a | [`0x4d9c76...0e6586`](./contracts/ethereum-1/0x4d9c765d7431ff354d208cf9a37e7186180e6586/) | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | optimism | n/a | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | ⚠️ Unaudited |
| ERC4626RateProviderFactory | registry | optimism | n/a | 6 deployments: ethereum `0xfc541f...c259ec`; optimism [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/); gnosis `0x15e86b...574cec`; sonic `0xc9a0e6...50e487`; base `0xefd3af...d7ff1a`; arbitrum `0xe548a2...915f31` | ⚠️ Unaudited |
| FoundingFrog | unknown | ethereum | n/a | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | ⚠️ Unaudited |
| FoundingMemberVault | core_logic | ethereum | n/a | [`0x7783b7...9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | ⚠️ Unaudited |
| FreezableTransparentUpgradeableProxy | unknown | sei | n/a | [`0xb438ea...baf7fa`](./contracts/sei-1329/0xb438ea246cefa9241305ad62e5d307d014baf7fa/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-35931 | [`0xa8d612...b5f9e9`](./contracts/ethereum-1/0xa8d612739354a4106072a91aa4ca1458e1b5f9e9/) | ⚠️ Unaudited |
| GydTokenPaused | token | ethereum | unit-35938 | [`0xe07f9d...491e8a`](./contracts/ethereum-1/0xe07f9d810a48ab5c3c914ba3ca53af14e4491e8a/) | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | registry | optimism | n/a | [`0x99364f...c52c58`](./contracts/optimism-10/0x99364f84d1c68d87aead0ce92eb47409a0c52c58/) | ⚠️ Unaudited |
| Gyro3CLPPoolFactory | registry | sei | n/a | [`0x4ac500...9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | ⚠️ Unaudited |
| GyroECLPPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x8d93b8...66ee91`](./contracts/ethereum-1/0x8d93b853849b9884e2bb413444ec23eb5366ee91/); ethereum `0xfbfad5...a64c63` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | optimism | n/a | 5 deployments: optimism [`0x22625e...86b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/); optimism `0x53eff5...c479ef`; sonic `0xf02373...7775a9`; sei `0x66d89d...6c0c93`; base `0x5f6848...f082e3` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | polygon | unit-35947 | [`0x1a79a2...05926b`](./contracts/polygon-137/0x1a79a24db0f73e9087205287761fc9c5c305926b/) | ⚠️ Unaudited |
| GyroTokenPaused | token | sei | n/a | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | ⚠️ Unaudited |
| L2Gyfi | unknown | sei | n/a | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | ⚠️ Unaudited |
| LegendsOfMaBeets | unknown | sonic | n/a | 2 deployments: sonic [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/); sonic `0xefd42b...f66fef` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | optimism | n/a | 2 deployments: optimism [`0x136f1e...1778d1`](./contracts/optimism-10/0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1/); optimism `0x16b50f...7ae5db` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | optimism | n/a | 3 deployments: optimism [`0x1cd776...b1d608`](./contracts/optimism-10/0x1cd776897ef4f647bf8241ec69549e4a9cb1d608/); optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1` | ⚠️ Unaudited |
| ProtocolFeeController | governance | base | n/a | [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | optimism | n/a | 2 deployments: optimism [`0x774cb6...17eb94`](./contracts/optimism-10/0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94/); optimism `0xcc267d...3a7a4e` | ⚠️ Unaudited |
| QuotientRateProvider | unknown | sonic | n/a | 2 deployments: sonic [`0x10e0b3...245587`](./contracts/sonic-146/0x10e0b3db47dbdb9b38a4657881d3769263245587/); sonic `0x79a88b...c40447` | ⚠️ Unaudited |
| ReClammPoolFactory | registry | optimism | n/a | 2 deployments: optimism [`0x891ec9...017e0d`](./contracts/optimism-10/0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d/); sonic `0x99c13b...310de0` | ⚠️ Unaudited |
| Reliquary | unknown | sonic | n/a | [`0x973670...941684`](./contracts/sonic-146/0x973670ce19594f857a7cd85ee834c7a74a941684/) | ⚠️ Unaudited |
| Router | adapter | sonic | unit-35954 | [`0x6077b9...d1a71c`](./contracts/sonic-146/0x6077b9801b5627a65a5eee70697c793751d1a71c/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: optimism `0xe2fa4e...9e285b`; sonic [`0x93db46...a8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | ⚠️ Unaudited |
| SonicBeetsMigrator | periphery | sonic | n/a | [`0x5f9a5c...05e386`](./contracts/sonic-146/0x5f9a5cd0b77155ac1814ef6cd9d82da53d05e386/) | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/); optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468` | ⚠️ Unaudited |
| StablePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x1780e8...d943ab`](./contracts/optimism-10/0x1780e8185199dac45284039bb3e3b64060d943ab/); optimism `0x268e2e...d9af42`; sonic `0x482ee5...48affb`; base `0xc49ca9...97950c` | ⚠️ Unaudited |
| StableSurgeHook | unknown | sonic | n/a | 2 deployments: optimism `0xf39ca6...ab9015`; sonic [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x3beb05...429ace`](./contracts/optimism-10/0x3beb058de1a25dd24223fd9e1796df8589429ace/); optimism `0xfd2142...f3128f`; sonic `0x3d9319...0f0bad`; sonic `0x6187f6...e6776e` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | optimism | n/a | [`0x03cbcc...dff36f`](./contracts/optimism-10/0x03cbccbe8d2073a1dc186ae6bcd95390fcdff36f/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xfc7d96...55c467`](./contracts/ethereum-1/0xfc7d964f1676831d8105506b1f0c3b3e2b55c467/) | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x6ee18f...e3cb3f`](./contracts/optimism-10/0x6ee18fbb1bbcc5cf700cd75ea1aef2bb21e3cb3f/); optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | optimism | n/a | 4 deployments: optimism [`0x0f08ee...347b7c`](./contracts/optimism-10/0x0f08eef2c785aa5e7539684af04755dec1347b7c/); optimism `0x254f3a...5f83b0`; sonic `0x4726eb...d60fc3`; base `0x4c32a8...d6a1c4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x9cde25...521867` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x5d56ea...324f0c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32acb4...2a23f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e9ac...4d946a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Security Review: Dynamic E-CLP](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM_0526_Gyroscope-dynamic-eclp.pdf) | Nethermind | Audit | 2025-06 | aging | Direct | contract_name | 11 | high |
| [Security Review: GYFI](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0440_GYFI_FINAL.pdf) | Nethermind | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Security Review: Bridges](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0255_GYROSCOPE%20_FINAL.pdf) | Nethermind | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Security Review: sGYD](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0264_GYRO_SGYD.pdf) | Nethermind | Audit | 2024-07 | aging | Direct | contract_name | 4 | high |
| [Security Review: Protocol](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0094-GYROSCOPE-PROTOCOL-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Security Review: Governance](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM0076-GYROSCOPE-GOVERNANCE-FINAL.pdf) | Nethermind | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Security Review: E-CLP (previously called CEMM)](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0055%20Security%20Review%20-%20Gyroscope%20CEMM.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Security Review: Protocol, 2-CLP and 3-CLP](https://github.com/gyrostable/audit-reports/blob/main/Nethermind/NM-0051%20Security%20Review%20Gyroscope.pdf) | Nethermind | Audit | 2022-08 | stale | Direct | contract_name | 0 | n/a |
| [Security Review](https://github.com/gyrostable/audit-reports/blob/main/Trail%20of%20Bits/Summary%20Report%20%26%20Fix%20Review%20-%20Gyroscope.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Security Review: Mathematical Model Implementation](https://github.com/gyrostable/audit-reports/blob/main/Runtime%20Verification/Gyroscope_Protocol_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xc23542...fade44`](./contracts/sonic-146/0xc23542cd402fe4f7c7539fc0929b010992fade44/) | AdaptiveRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa523f4...4612dc`](./contracts/optimism-10/0xa523f47a933d5020b23629ddf689695aa94612dc/) | ChildChainGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d9c76...0e6586`](./contracts/ethereum-1/0x4d9c765d7431ff354d208cf9a37e7186180e6586/) | DistributionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc00ff7...e5426d`](./contracts/optimism-10/0xc00ff743b73346c9a4c40509e0550ffc18e5426d/) | EclpLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02a569...e75c33`](./contracts/optimism-10/0x02a569eea6f85736e2d63c59e60d27d075e75c33/) | ERC4626RateProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e56f1...de07ec`](./contracts/ethereum-1/0x4e56f19235ff2a14c76332877a35d6af5bde07ec/) | FoundingFrog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7783b7...9d2754`](./contracts/ethereum-1/0x7783b7eb719aa2d27f01e10c0b0ee747ab9d2754/) | FoundingMemberVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x99364f...c52c58`](./contracts/optimism-10/0x99364f84d1c68d87aead0ce92eb47409a0c52c58/) | Gyro2CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4ac500...9c6c24`](./contracts/sei-1329/0x4ac5000fa00e31b587f1b50d596b40b52e9c6c24/) | Gyro3CLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d93b8...66ee91`](./contracts/ethereum-1/0x8d93b853849b9884e2bb413444ec23eb5366ee91/) | GyroECLPPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x22625e...86b017`](./contracts/optimism-10/0x22625eedd92c81a219a83e1dc48f88d54786b017/) | GyroECLPPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7cd75b...218d23`](./contracts/sei-1329/0x7cd75be2af9bb0279f2445f08ec7590643218d23/) | GyroTokenPaused | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xf7f808...ffa38c`](./contracts/sei-1329/0xf7f808e3ea7e7ab00938db17c622b07c40ffa38c/) | L2Gyfi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ae2ce...d6fe37`](./contracts/sonic-146/0x5ae2ce196f039a968997528adcdcb0c69cd6fe37/) | LegendsOfMaBeets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ff226...4e5363`](./contracts/base-8453/0x2ff226cd12c80511a641a6101f071d853a4e5363/) | ProtocolFeeController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x93db46...a8dae5`](./contracts/sonic-146/0x93db4682a40721e7c698ea0a842389d10fa8dae5/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa0de07...b7c883`](./contracts/optimism-10/0xa0de078cd5cfa7088821b83e0bd7545ccfb7c883/) | StableLPOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x049919...c6f1b3`](./contracts/sonic-146/0x049919ae32e50aee5ea1a0998a841d175ec6f1b3/) | StableSurgeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 4 |
| standard_library | 5 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=163

Zero-match audit list:

- [2963] Security Review: GYFI
- [2964] Security Review: Bridges
- [2966] Security Review: Protocol
- [2967] Security Review: Governance
- [2968] Security Review: E-CLP (previously called CEMM)
- [2969] Security Review: Protocol, 2-CLP and 3-CLP
- [2970] Security Review
- [2971] Security Review: Mathematical Model Implementation

Fork inheritance lineage and inherited audits are included when available.
