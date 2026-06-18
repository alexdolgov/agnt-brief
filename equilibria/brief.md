# Agentic Audit Brief: Equilibria

⚠️ Lifecycle status: DECLINING - TVL dropped 40.6% over 90 days

## Project Overview

- Project: Equilibria (`equilibria`)
- Website: [https://equilibria.fi/home](https://equilibria.fi/home)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T12:00:52.965Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-a45b
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma, sonic
- Contract surface: 68 unique implementations (117 raw deployments)
- DeFi Llama TVL: $12,923,882.38
- On-chain TVL (included contracts): $12,609,211.10
- TVL by chain: Ethereum $6,521,482.66 | Arbitrum $4,624,188.33 | Berachain $859,535.49 | Plasma $368,397.67 | Sonic $181,564.40 | Bsc $51,385.80 | Mantle $2,232.13 | Optimism $424.17 | Hyperliquid $0.45

## Project Description

Equilibria is a yield optimization protocol built on top of Pendle Finance, focused on ePENDLE/Pendle-related boosted yield strategies. Broader LRT, governance, bribe, and cross-chain veTokenomics claims should be treated as contract-surface observations unless supported by current public documentation.

### Architecture

The Equilibria Core on Ethereum issues EQB and vlEQB, which are bridged to sidechain deployments via XEqbToken and EPendleOFT tokens. Sidechain deployments replicate the booster/proxy/vault pattern and use shared infrastructure like BaseRewardPool and EqbZap, while the LRT family operates independently with its own set of oracles and deposit/withdrawal contracts.

## Contract Surface Quality

- Indexed contracts: 833; live-surface contracts included: 117 (115 live, 2 unknown).
- Excluded by liveness: 171 inactive, 545 singleton, 0 uninitialized.
- Deployment units: 37/228 live.
- Detected codebases: none
- Unverified dependencies: 2/9.

## Audit Coverage Summary

- Verified implementations audited: 11/56 (19.6%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 5
- Unverified implementations: 12
- Unique implementations: 68
- Raw deployments: 117
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $11,050,032.51
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 3 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $11,050,032.51 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 11 | 19.6% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EPendleVaultSidechain | core_logic | arbitrum | unit-36896 | [`0x4250ea...654a92`](./contracts/arbitrum-42161/0x4250ea96f880c5725931a72a87dcbe01fc654a92/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | bsc | unit-36792 | [`0x89a4e4...63186b`](./contracts/bsc-56/0x89a4e4044bdb53e00e40c1b2e1005bd61663186b/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | optimism | unit-36778 | [`0xf19fbc...e94cec`](./contracts/optimism-10/0xf19fbc1d3693ecca9979ea31272e422903e94cec/) | ✅ Audited |
| VaultEPendle | core_logic | ethereum | unit-36753 | [`0xd30d6f...968059`](./contracts/ethereum-1/0xd30d6fd662c0d92b49f3c3e478e125ba1d968059/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | sonic | unit-36811 | [`0x9f1453...ca341a`](./contracts/sonic-146/0x9f14535a90bc7ca72739a73c1d382bd272ca341a/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | hyperliquid | unit-36823 | [`0x7700eb...ed33b1`](./contracts/hyperliquid-999/0x7700eb46bb40163985c5337de39704482aed33b1/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | mantle | unit-36844 | [`0x9f1453...ca341a`](./contracts/mantle-5000/0x9f14535a90bc7ca72739a73c1d382bd272ca341a/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | base | unit-36853 | [`0x6ee066...01b923`](./contracts/base-8453/0x6ee066b813cd8c2586d86f79ed0025e81801b923/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | berachain | unit-36928 | [`0x5e73e7...ea4531`](./contracts/berachain-80094/0x5e73e741b0b15e10789a30a91953794e44ea4531/) | ✅ Audited |
| VaultDepositToken | core_logic | hyperliquid | n/a | [`0x03b86b...c88e4e`](./contracts/hyperliquid-999/0x03b86b5b4f49fd2059c813b3f928c0b276c88e4e/) | ✅ Audited |
| VaultDepositTokenFactory | registry | ethereum | n/a | [`0x05eaaa...10f7a0`](./contracts/ethereum-1/0x05eaaa615f01ab1b8a0bd1e6a487d80c8910f7a0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EPendleProxyOFT | core_logic | ethereum | n/a | [`0x6ae382...45c577`](./contracts/ethereum-1/0x6ae382814e24b6ddf588901c597f26a9e945c577/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-36882 (3 proxies) | 3 deployments: arbitrum [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/); arbitrum `0xbfbcfe...bbad9c`; arbitrum `0xd48482...242ac3` | ⚠️ Unaudited |
| WOFT | token | berachain | n/a | 3 deployments: berachain [`0x88bb2b...289032`](./contracts/berachain-80094/0x88bb2bf040fa5bf2bd3b79ff9dfa035ed1289032/); berachain `0xf9ee98...7e2037`; berachain `0xff9c59...88aef6` | ⚠️ Unaudited |
| PendleOFT | token | plasma | n/a | [`0x17bac5...831f24`](./contracts/plasma-9745/0x17bac5f906c9a0282ac06a59958d85796c831f24/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | unit-36803 (3 proxies) | 3 deployments: sonic [`0x48540d...6fc335`](./contracts/sonic-146/0x48540d1140331277b9157a096e40e6f5506fc335/); sonic `0x9cacb5...7e8c6b`; sonic `0xf1ef7d...71a74b` | ⚠️ Unaudited |
| TokenImplementation | token | bsc | unit-36787 (2 proxies) | 2 deployments: bsc [`0x374ca3...468609`](./contracts/bsc-56/0x374ca32fd7934c5d43240e1e73fa9b2283468609/); bsc `0x5fec85...5bd6bc` | ⚠️ Unaudited |
| L2StandardERC20 | token | mantle | n/a | 2 deployments: mantle [`0x3e7ef8...276747`](./contracts/mantle-5000/0x3e7ef8f50246f725885102e8238cbba33f276747/); mantle `0x9e1028...6840e0` | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | bsc | unit-36789 | [`0x646279...f1e6e3`](./contracts/bsc-56/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3/) | ⚠️ Unaudited |
| EQBOFT | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x3ce842...ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/); hyperliquid `0x73e247...4cac8c`; hyperliquid `0xb4484a...2cefd1` | ⚠️ Unaudited |
| VaultEPendleArbi | core_logic | arbitrum | unit-36894 | [`0x372277...b8319f`](./contracts/arbitrum-42161/0x37227785a1f4545ed914690e395e4cfe96b8319f/) | ⚠️ Unaudited |
| EPendleOFT | token | bsc | n/a | 8 deployments: optimism `0x8a5a43...bbd36c`; bsc [`0x06fd8e...534f37`](./contracts/bsc-56/0x06fd8e5dae63afcbfdf10604efca3143df534f37/); sonic `0x7700eb...ed33b1`; hyperliquid `0x6408d9...d16005`; hyperliquid `0xb2d167...4264c8`; mantle `0x7700eb...ed33b1`; base `0x2350ea...709913`; arbitrum `0x8c9b5b...0029f5` | ⚠️ Unaudited |
| EpendleVault | core_logic | hyperliquid | unit-36822 | [`0x5e73e7...ea4531`](./contracts/hyperliquid-999/0x5e73e741b0b15e10789a30a91953794e44ea4531/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-36726 | [`0x397aa0...51afa0`](./contracts/ethereum-1/0x397aa01343b89f18934979824c3ad227f251afa0/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-36891 (2 proxies) | 2 deployments: arbitrum [`0x29828f...6f0444`](./contracts/arbitrum-42161/0x29828f442c98aaa71a853594fec7c0c3806f0444/); arbitrum `0xfda441...2724e4` | ⚠️ Unaudited |
| MerkleDistributorV2 | operational_periphery | sonic | n/a | 3 deployments: ethereum `0x5be392...254886`; sonic [`0x4abc7c...6eadd2`](./contracts/sonic-146/0x4abc7c5f0445d847e1d4544dd15f049e996eadd2/); hyperliquid `0xbda88a...f6035b` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 6 deployments: optimism `0x76c37f...858481`; optimism `0xaf3a6f...dca2a0`; optimism `0xbc7b1f...6e66e1`; base [`0x010cd9...80a50a`](./contracts/base-8453/0x010cd9b9be7e416e07793dc6ce2f45868a80a50a/); base `0xa99f6e...9eeb3e`; base `0xc6e669...f239f0` | ⚠️ Unaudited |
| PendleBoosterMainchain | core_logic | ethereum | unit-36730 | [`0x4d32c8...0c26bf`](./contracts/ethereum-1/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | optimism | unit-36764 | [`0x18c616...e2b356`](./contracts/optimism-10/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | bsc | unit-36788 | [`0x4d32c8...0c26bf`](./contracts/bsc-56/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | sonic | unit-36808 | [`0x920873...56a3b8`](./contracts/sonic-146/0x920873e5b302a619c54c908adfb77a1c4256a3b8/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | hyperliquid | unit-36825 | [`0xad2995...53421c`](./contracts/hyperliquid-999/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | mantle | unit-36842 | [`0x920873...56a3b8`](./contracts/mantle-5000/0x920873e5b302a619c54c908adfb77a1c4256a3b8/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | base | unit-36851 | [`0x2583a2...b4821d`](./contracts/base-8453/0x2583a2538272f31e9a15dd12a432b8c96ab4821d/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | plasma | unit-36875 | [`0xd6ecfd...4fd54f`](./contracts/plasma-9745/0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | arbitrum | unit-36898 | [`0x4d32c8...0c26bf`](./contracts/arbitrum-42161/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | berachain | unit-36921 | [`0x18c616...e2b356`](./contracts/berachain-80094/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | ⚠️ Unaudited |
| PendleDepositor | core_logic | ethereum | unit-36708 | [`0x0140de...91d3bc`](./contracts/ethereum-1/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/) | ⚠️ Unaudited |
| PendleProxyMainchain | core_logic | ethereum | unit-36736 | [`0x646279...f1e6e3`](./contracts/ethereum-1/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3/) | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | optimism | unit-36768 | [`0x4d32c8...0c26bf`](./contracts/optimism-10/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | sonic | unit-36802 | [`0x479603...9e218d`](./contracts/sonic-146/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d/) | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | hyperliquid | unit-36815 | [`0x18c616...e2b356`](./contracts/hyperliquid-999/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | mantle | unit-36837 | [`0x479603...9e218d`](./contracts/mantle-5000/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d/) | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | base | unit-36857 | [`0x920873...56a3b8`](./contracts/base-8453/0x920873e5b302a619c54c908adfb77a1c4256a3b8/) | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | arbitrum | unit-36901 | [`0x646279...f1e6e3`](./contracts/arbitrum-42161/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3/) | ⚠️ Unaudited |
| PendleProxySidechain | core_logic | berachain | unit-36924 | [`0x4d32c8...0c26bf`](./contracts/berachain-80094/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| RestakeStrategy | core_logic | ethereum | n/a | [`0x16c72b...5ae2c6`](./contracts/ethereum-1/0x16c72bbc1dd1b5ba766c4d2d1466efa2845ae2c6/) | ⚠️ Unaudited |
| StakingPoolManager | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x473e84...8a713b`](./contracts/ethereum-1/0x473e8407f2ad24148ac1fe18873b8a22aa8a713b/); ethereum `0x50c6f7...da5e97`; ethereum `0xbf6871...8b372c` | ⚠️ Unaudited |
| TimelockController | governance | arbitrum | n/a | 2 deployments: ethereum `0xe2a634...c11d03`; arbitrum [`0x5c249a...e21886`](./contracts/arbitrum-42161/0x5c249a5f396638253470c4eae7bc5092dde21886/) | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | operational_periphery | ethereum | n/a | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | ⚠️ Unaudited |
| XEPendleVester | operational_periphery | arbitrum | unit-36883 | [`0x0f9492...ac45e6`](./contracts/arbitrum-42161/0x0f9492931cdd612ece9f7bbbe786490238ac45e6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (5)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPoolV2 | unknown | plasma | n/a | 2 deployments: hyperliquid `0x9cb59c...cc7353`; plasma [`0x00807f...3966f5`](./contracts/plasma-9745/0x00807f12343a039acce6c9446696c818b53966f5/) | ⚠️ Unaudited (bytecode match) |
| BaseRewardPoolV2_1 | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1679fe...46723b`](./contracts/hyperliquid-999/0x1679fe95b11959c694af8627e5360267e146723b/); plasma `0x183b30...b75e78` | ⚠️ Unaudited (bytecode match) |
| DepositTokenV2 | unknown | plasma | n/a | 2 deployments: hyperliquid `0xf7498d...052981`; plasma [`0xb0d718...78eb7a`](./contracts/plasma-9745/0xb0d7182ba15ed02326590f033f72c393c978eb7a/) | ⚠️ Unaudited (bytecode match) |
| ProxyAdmin | unknown | plasma | n/a | 6 deployments: sonic `0x646279...f1e6e3`; hyperliquid `0x920873...56a3b8`; mantle `0x646279...f1e6e3`; base `0x4d32c8...0c26bf`; plasma [`0x0cf6ab...80e139`](./contracts/plasma-9745/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); berachain `0x479603...9e218d` | ⚠️ Unaudited (bytecode match) |
| UpgradeableBeacon | registry | hyperliquid | n/a | 14 deployments: ethereum `0xca5d2c...c60968`; ethereum `0xccf949...5dc593`; sonic `0x187520...84b0ab`; hyperliquid [`0x00807f...3966f5`](./contracts/hyperliquid-999/0x00807f12343a039acce6c9446696c818b53966f5/); hyperliquid `0x183b30...b75e78`; hyperliquid `0x2386f0...a56cdf`; hyperliquid `0x245f1d...37a960`; hyperliquid `0x26ae16...186f5c`; hyperliquid `0x55f140...0433a8`; hyperliquid `0xb0d718...78eb7a`; hyperliquid `0xf2d038...f7ca80`; plasma `0x03b86b...c88e4e`; plasma `0x1679fe...46723b`; plasma `0x245f1d...37a960` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1e511a...f0f6e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5fa7e...bdfeed` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe0e1c3...83f343` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x017778...29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x36ff28...c3d32f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x647316...482ee9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x77b777...d65973` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8d9467...a50ba7` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xd51d25...86aef1` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf7498d...052981` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1b1af...d04e55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd76ca...728567` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf) | WatchPug | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2Fb8B3TscrPCJ1YmEeCb4Q%2FEquilibria_Continuous_Audit_May_21%2C_25_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FmmHtThc39pihExxQM3Jx%2FEquilibria_%232__Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2024-11 | aging | Direct | contract_name | 8 | high |
| [Rendered PDF capture](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FT7caQbKvLq6KPy2IRcuY%2FEquilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield-Audit-Report-Equilibria-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6ae382...45c577`](./contracts/ethereum-1/0x6ae382814e24b6ddf588901c597f26a9e945c577/) | EPendleProxyOFT | core_logic | $6,521,423.96 | Verified native implementation with $6,521,423.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3ce842...ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/) | EQBOFT | token | $0.45 | Verified native implementation with $0.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1679fe...46723b`](./contracts/hyperliquid-999/0x1679fe95b11959c694af8627e5360267e146723b/) | BaseRewardPoolV2_1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0xb0d718...78eb7a`](./contracts/plasma-9745/0xb0d7182ba15ed02326590f033f72c393c978eb7a/) | DepositTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06fd8e...534f37`](./contracts/bsc-56/0x06fd8e5dae63afcbfdf10604efca3143df534f37/) | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4abc7c...6eadd2`](./contracts/sonic-146/0x4abc7c5f0445d847e1d4544dd15f049e996eadd2/) | MerkleDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x010cd9...80a50a`](./contracts/base-8453/0x010cd9b9be7e416e07793dc6ce2f45868a80a50a/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16c72b...5ae2c6`](./contracts/ethereum-1/0x16c72bbc1dd1b5ba766c4d2d1466efa2845ae2c6/) | RestakeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x473e84...8a713b`](./contracts/ethereum-1/0x473e8407f2ad24148ac1fe18873b8a22aa8a713b/) | StakingPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 3 |
| standard_library | 22 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=506

Zero-match audit list:

- [3550] Rendered PDF capture
- [3553] Rendered PDF capture
- [3554] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
