# Agentic Audit Brief: Elk

## Project Overview

- Project: Elk (`elk`)
- Website: [https://elk.finance](https://elk.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.753Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, metis, moonriver, optimism, polygon
- Contract surface: 41 unique implementations (41 raw deployments)
- DeFi Llama TVL: $157,260.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 40 project-authored contract(s) across 10 chain(s); 4 ERC20 tokens, 5 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 19 common project-authored base contract(s) (accesscontrolenumerable, erc165, immutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (39 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/34 (8.8%)
- Deployed-live implementations: 39 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/41
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 3 | 7.3% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ElkFactory | unknown | avalanche | n/a | [`0x091d35d7f63487909c863001ddca481c6de47091`](./contracts/avalanche-43114/0x091d35d7f63487909c863001ddca481c6de47091/) | ✅ Audited |
| ElkPair | unknown | bsc | n/a | [`0x00ad7f72a98e222c6f2680f312037e41690e242e`](./contracts/bsc-56/0x00ad7f72a98e222c6f2680f312037e41690e242e/) | ✅ Audited |
| ElkRouter | unknown | arbitrum | n/a | [`0x0a2e5a3dc2f74e5bfaf0bf90685a5a899f379cb0`](./contracts/arbitrum-42161/0x0a2e5a3dc2f74e5bfaf0bf90685a5a899f379cb0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraInterfaceMulticall | unknown | optimism | n/a | [`0xf3295f2178762aa96edf5e3e30178e60c79b6ff8`](./contracts/optimism-10/0xf3295f2178762aa96edf5e3e30178e60c79b6ff8/) | ⚠️ Unaudited |
| AtletaInterfaceMulticall | unknown | metis | n/a | [`0xf3295f2178762aa96edf5e3e30178e60c79b6ff8`](./contracts/metis-1088/0xf3295f2178762aa96edf5e3e30178e60c79b6ff8/) | ⚠️ Unaudited |
| DonaswapInterfaceMulticall | unknown | moonriver | n/a | [`0xf3295f2178762aa96edf5e3e30178e60c79b6ff8`](./contracts/moonriver-1285/0xf3295f2178762aa96edf5e3e30178e60c79b6ff8/) | ⚠️ Unaudited |
| Elk | unknown | ethereum | n/a | [`0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c`](./contracts/ethereum-1/0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c/) | ⚠️ Unaudited |
| ElkDexOracle | unknown | optimism | n/a | [`0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4`](./contracts/optimism-10/0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4/) | ⚠️ Unaudited |
| ElkDexV3Factory | unknown | optimism | n/a | [`0xc05a5aa56df0dc97d6b9849a06627a079790014f`](./contracts/optimism-10/0xc05a5aa56df0dc97d6b9849a06627a079790014f/) | ⚠️ Unaudited |
| ElkSeasonNFT | unknown | polygon | n/a | [`0x28d606535d18471bf7c966c0157895a9f613d995`](./contracts/polygon-137/0x28d606535d18471bf7c966c0157895a9f613d995/) | ⚠️ Unaudited |
| ElkTeamNFT | unknown | avalanche | n/a | [`0x3e75edd8d85c059ad8e365908d807f361c8844c2`](./contracts/avalanche-43114/0x3e75edd8d85c059ad8e365908d807f361c8844c2/) | ⚠️ Unaudited |
| ElkUpgrade | unknown | polygon | n/a | [`0x1fbd13af146cf0857fd47db7fbb1441bde5ffaf8`](./contracts/polygon-137/0x1fbd13af146cf0857fd47db7fbb1441bde5ffaf8/) | ⚠️ Unaudited |
| ElkV2FactoryHelper | unknown | bsc | n/a | [`0x28462f0898120db3138e5dbbe83f2f6206624722`](./contracts/bsc-56/0x28462f0898120db3138e5dbbe83f2f6206624722/) | ⚠️ Unaudited |
| ElkV2FactoryHelperPermissioned | unknown | bsc | n/a | [`0x0b921fc8b84656157f5b7ddbf385205d1873a72c`](./contracts/bsc-56/0x0b921fc8b84656157f5b7ddbf385205d1873a72c/) | ⚠️ Unaudited |
| ElkV2FarmFactory | unknown | polygon | n/a | [`0x3ada56e04ddd5cad6dfd6ed80de6fde2ce3118fd`](./contracts/polygon-137/0x3ada56e04ddd5cad6dfd6ed80de6fde2ce3118fd/) | ⚠️ Unaudited |
| ElkV2FarmManager | unknown | optimism | n/a | [`0x28462f0898120db3138e5dbbe83f2f6206624722`](./contracts/optimism-10/0x28462f0898120db3138e5dbbe83f2f6206624722/) | ⚠️ Unaudited |
| FarmingRewards | unknown | gnosis | n/a | [`0x019d4b975287b7b27ac4ce4fc0538a4a7f305b91`](./contracts/gnosis-100/0x019d4b975287b7b27ac4ce4fc0538a4a7f305b91/) | ⚠️ Unaudited |
| MooseNFT | unknown | avalanche | n/a | [`0x1fa5409d159f6b8be52ac89531124761df21d393`](./contracts/avalanche-43114/0x1fa5409d159f6b8be52ac89531124761df21d393/) | ⚠️ Unaudited |
| Multicall | unknown | metis | n/a | [`0xde7258b4c27a958d6a212d04280002cbe3a1c16b`](./contracts/metis-1088/0xde7258b4c27a958d6a212d04280002cbe3a1c16b/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | optimism | n/a | [`0x5ad267449556588cbfc5eec5d7fc4057b278e6e2`](./contracts/optimism-10/0x5ad267449556588cbfc5eec5d7fc4057b278e6e2/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | optimism | n/a | [`0x9831c93f3024e06db9eee6a5add6e122d18465be`](./contracts/optimism-10/0x9831c93f3024e06db9eee6a5add6e122d18465be/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | ethereum | n/a | [`0x26bab438d10ac10a5f1747a53ff1fa3af984e68f`](./contracts/ethereum-1/0x26bab438d10ac10a5f1747a53ff1fa3af984e68f/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | [`0x4b094aecf5598ca868c4470dc2c99425da6256f8`](./contracts/optimism-10/0x4b094aecf5598ca868c4470dc2c99425da6256f8/) | ⚠️ Unaudited |
| Quoter | unknown | ethereum | n/a | [`0x87affd43ed21b0d73b080fd5d0b90a46f10a80b7`](./contracts/ethereum-1/0x87affd43ed21b0d73b080fd5d0b90a46f10a80b7/) | ⚠️ Unaudited |
| QuoterV2 | unknown | ethereum | n/a | [`0x5f01387f0c5c1aed7b86edd9da3932984e06999d`](./contracts/ethereum-1/0x5f01387f0c5c1aed7b86edd9da3932984e06999d/) | ⚠️ Unaudited |
| Reservoir | unknown | ethereum | n/a | [`0x42424242b0c0d8a19dcd0df362815e242586354a`](./contracts/ethereum-1/0x42424242b0c0d8a19dcd0df362815e242586354a/) | ⚠️ Unaudited |
| SingleStakingRewards | unknown | ethereum | n/a | [`0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa`](./contracts/ethereum-1/0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa/) | ⚠️ Unaudited |
| StakeFactory | unknown | optimism | n/a | [`0x0b921fc8b84656157f5b7ddbf385205d1873a72c`](./contracts/optimism-10/0x0b921fc8b84656157f5b7ddbf385205d1873a72c/) | ⚠️ Unaudited |
| StakeManager | unknown | polygon | n/a | [`0x6c21e50fb9c592d5427d790fe424ae4acc24338f`](./contracts/polygon-137/0x6c21e50fb9c592d5427d790fe424ae4acc24338f/) | ⚠️ Unaudited |
| StakingRewards | unknown | polygon | n/a | [`0x0106acef3106a417f1dd83fe543999c8b5637452`](./contracts/polygon-137/0x0106acef3106a417f1dd83fe543999c8b5637452/) | ⚠️ Unaudited |
| StakingRewardsILP | unknown | polygon | n/a | [`0x04c25ab761f9518c6c43d6835e76736f06696dfe`](./contracts/polygon-137/0x04c25ab761f9518c6c43d6835e76736f06696dfe/) | ⚠️ Unaudited |
| StakingRewardsILPV2 | unknown | polygon | n/a | [`0x0137ddc034562f854cc3232b805d50d52effce66`](./contracts/polygon-137/0x0137ddc034562f854cc3232b805d50d52effce66/) | ⚠️ Unaudited |
| SwapRouter | unknown | optimism | n/a | [`0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221`](./contracts/optimism-10/0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | optimism | n/a | [`0x7740c2ee0051e275323feb42521ca1161925c2f2`](./contracts/optimism-10/0x7740c2ee0051e275323feb42521ca1161925c2f2/) | ⚠️ Unaudited |
| TeamCompensationVester | unknown | polygon | n/a | [`0x05f37c1fb49eda6cd2656de4365da45e58cac3a6`](./contracts/polygon-137/0x05f37c1fb49eda6cd2656de4365da45e58cac3a6/) | ⚠️ Unaudited |
| TickLens | unknown | optimism | n/a | [`0x430638b0710eb36ec68bbf2fca97085339470701`](./contracts/optimism-10/0x430638b0710eb36ec68bbf2fca97085339470701/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x965991775da1a3550445f76b2aa799eac0a05434`](./contracts/polygon-137/0x965991775da1a3550445f76b2aa799eac0a05434/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | ethereum | n/a | [`0x352d8f40cd62ffd82d98210ffe2d75584387de05`](./contracts/ethereum-1/0x352d8f40cd62ffd82d98210ffe2d75584387de05/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xc146c9b9ce89fe9ee472470395a4cc4e73b7a825`](./contracts/polygon-137/0xc146c9b9ce89fe9ee472470395a4cc4e73b7a825/) | ⚠️ Unaudited |
| V3Migrator | unknown | optimism | n/a | [`0xb50575ac3a84cd7510a10f52db43adfaccff23be`](./contracts/optimism-10/0xb50575ac3a84cd7510a10f52db43adfaccff23be/) | ⚠️ Unaudited |
| WarpDefiV3InterfaceMulticall | unknown | base | n/a | [`0x6cc2738fa0c8ce397872bc0dc51140936d3a6b12`](./contracts/base-8453/0x6cc2738fa0c8ce397872bc0dc51140936d3a6b12/) | ⚠️ Unaudited |

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
| [blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b](https://blog.hashex.org/elk-finance-smart-contracts-audit-report-a18deaa5890b?gi=1d70ac6a5ea2) | HashEx | Audit | 2021-07 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xf3295f2178762aa96edf5e3e30178e60c79b6ff8`](./contracts/optimism-10/0xf3295f2178762aa96edf5e3e30178e60c79b6ff8/) | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xf3295f2178762aa96edf5e3e30178e60c79b6ff8`](./contracts/metis-1088/0xf3295f2178762aa96edf5e3e30178e60c79b6ff8/) | AtletaInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xf3295f2178762aa96edf5e3e30178e60c79b6ff8`](./contracts/moonriver-1285/0xf3295f2178762aa96edf5e3e30178e60c79b6ff8/) | DonaswapInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c`](./contracts/ethereum-1/0xe1c110e1b1b4a1ded0caf3e42bfbdbb7b5d7ce1c/) | Elk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4`](./contracts/optimism-10/0x62dfb99c4d0ac8764b75a132ce0c4c433af46cf4/) | ElkDexOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc05a5aa56df0dc97d6b9849a06627a079790014f`](./contracts/optimism-10/0xc05a5aa56df0dc97d6b9849a06627a079790014f/) | ElkDexV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x28d606535d18471bf7c966c0157895a9f613d995`](./contracts/polygon-137/0x28d606535d18471bf7c966c0157895a9f613d995/) | ElkSeasonNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3e75edd8d85c059ad8e365908d807f361c8844c2`](./contracts/avalanche-43114/0x3e75edd8d85c059ad8e365908d807f361c8844c2/) | ElkTeamNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1fbd13af146cf0857fd47db7fbb1441bde5ffaf8`](./contracts/polygon-137/0x1fbd13af146cf0857fd47db7fbb1441bde5ffaf8/) | ElkUpgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28462f0898120db3138e5dbbe83f2f6206624722`](./contracts/bsc-56/0x28462f0898120db3138e5dbbe83f2f6206624722/) | ElkV2FactoryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b921fc8b84656157f5b7ddbf385205d1873a72c`](./contracts/bsc-56/0x0b921fc8b84656157f5b7ddbf385205d1873a72c/) | ElkV2FactoryHelperPermissioned | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3ada56e04ddd5cad6dfd6ed80de6fde2ce3118fd`](./contracts/polygon-137/0x3ada56e04ddd5cad6dfd6ed80de6fde2ce3118fd/) | ElkV2FarmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x28462f0898120db3138e5dbbe83f2f6206624722`](./contracts/optimism-10/0x28462f0898120db3138e5dbbe83f2f6206624722/) | ElkV2FarmManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x019d4b975287b7b27ac4ce4fc0538a4a7f305b91`](./contracts/gnosis-100/0x019d4b975287b7b27ac4ce4fc0538a4a7f305b91/) | FarmingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1fa5409d159f6b8be52ac89531124761df21d393`](./contracts/avalanche-43114/0x1fa5409d159f6b8be52ac89531124761df21d393/) | MooseNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5ad267449556588cbfc5eec5d7fc4057b278e6e2`](./contracts/optimism-10/0x5ad267449556588cbfc5eec5d7fc4057b278e6e2/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9831c93f3024e06db9eee6a5add6e122d18465be`](./contracts/optimism-10/0x9831c93f3024e06db9eee6a5add6e122d18465be/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26bab438d10ac10a5f1747a53ff1fa3af984e68f`](./contracts/ethereum-1/0x26bab438d10ac10a5f1747a53ff1fa3af984e68f/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87affd43ed21b0d73b080fd5d0b90a46f10a80b7`](./contracts/ethereum-1/0x87affd43ed21b0d73b080fd5d0b90a46f10a80b7/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f01387f0c5c1aed7b86edd9da3932984e06999d`](./contracts/ethereum-1/0x5f01387f0c5c1aed7b86edd9da3932984e06999d/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42424242b0c0d8a19dcd0df362815e242586354a`](./contracts/ethereum-1/0x42424242b0c0d8a19dcd0df362815e242586354a/) | Reservoir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa`](./contracts/ethereum-1/0x57a1ce7686f3b2ab61f5191c76361f985b57e0fa/) | SingleStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b921fc8b84656157f5b7ddbf385205d1873a72c`](./contracts/optimism-10/0x0b921fc8b84656157f5b7ddbf385205d1873a72c/) | StakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6c21e50fb9c592d5427d790fe424ae4acc24338f`](./contracts/polygon-137/0x6c21e50fb9c592d5427d790fe424ae4acc24338f/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0106acef3106a417f1dd83fe543999c8b5637452`](./contracts/polygon-137/0x0106acef3106a417f1dd83fe543999c8b5637452/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04c25ab761f9518c6c43d6835e76736f06696dfe`](./contracts/polygon-137/0x04c25ab761f9518c6c43d6835e76736f06696dfe/) | StakingRewardsILP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0137ddc034562f854cc3232b805d50d52effce66`](./contracts/polygon-137/0x0137ddc034562f854cc3232b805d50d52effce66/) | StakingRewardsILPV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221`](./contracts/optimism-10/0x283f87d2d4a401aa4b31fe60597bd8ba7bde2221/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7740c2ee0051e275323feb42521ca1161925c2f2`](./contracts/optimism-10/0x7740c2ee0051e275323feb42521ca1161925c2f2/) | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05f37c1fb49eda6cd2656de4365da45e58cac3a6`](./contracts/polygon-137/0x05f37c1fb49eda6cd2656de4365da45e58cac3a6/) | TeamCompensationVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x430638b0710eb36ec68bbf2fca97085339470701`](./contracts/optimism-10/0x430638b0710eb36ec68bbf2fca97085339470701/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb50575ac3a84cd7510a10f52db43adfaccff23be`](./contracts/optimism-10/0xb50575ac3a84cd7510a10f52db43adfaccff23be/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6cc2738fa0c8ce397872bc0dc51140936d3a6b12`](./contracts/base-8453/0x6cc2738fa0c8ce397872bc0dc51140936d3a6b12/) | WarpDefiV3InterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
