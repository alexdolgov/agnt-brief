# Agentic Audit Brief: sDAI

## Project Overview

- Project: sDAI (`sdai`)
- Lifecycle: active (Tier 0, 40.8% below peak)
- Generated: 2026-05-27T14:05:57.028Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: gnosis
- Contract surface: 93 unique implementations (178 raw deployments)
- DeFi Llama TVL: $71,997,196.51
- On-chain TVL (included contracts): $3,819.17
- TVL by chain: Gnosis $3,819.17

## Project Description

sDAI is a yield-bearing token that represents deposits into the Savings xDAI contract, allowing users to earn interest on their xDAI holdings on the Gnosis chain.

### Architecture

The SavingsXDai contract is the core savings pool, while the StaticATokenLM implementations serve as upgradeable proxies that likely wrap the underlying aToken logic to provide the sDAI token interface.

## Audit Coverage Summary

- Verified implementations audited: 0/48 (0.0%)
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 93
- Raw deployments: 178
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,819.17
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StaticATokenLM | token | gnosis | 19 deployments: gnosis [`0x01ac90...c5f6e2`](./contracts/gnosis-100/0x01ac9005f8446af28b065af87216b85faac5f6e2/); gnosis `0x110e2d...3ec78b`; gnosis `0x13f2b8...9de3fb`; gnosis `0x20e5eb...43461f`; gnosis `0x248ce8...2acc13`; gnosis `0x365d2e...f35322`; gnosis `0x3d938f...5a9bbc`; gnosis `0x4a0c32...7e8adb`; gnosis `0x6d9dc1...949f22`; gnosis `0x858227...fcb2f0`; gnosis `0x8e0dbc...2bc339`; gnosis `0x9a4dcb...8631ea`; gnosis `0x9ae6d6...5c97ed`; gnosis `0xa357ef...0ae61e`; gnosis `0xa95027...25cc68`; gnosis `0xc15933...19d314`; gnosis `0xce02a2...d8daff`; gnosis `0xd28490...ce4ed2`; gnosis `0xe22b9b...e0ef13` | ⚠️ Unaudited |
| AgaveBuybackOrder | unknown | gnosis | [`0x5d1e9f...5befb4`](./contracts/gnosis-100/0x5d1e9fa09ed123660775c395beac281f405befb4/) | ⚠️ Unaudited |
| AgaveHoldingsOracle | operational_periphery | gnosis | 2 deployments: gnosis [`0xa671d7...ec8791`](./contracts/gnosis-100/0xa671d7d0c571e5b92510de6c5d0b5c1635ec8791/); gnosis `0xbe76f3...f615ef` | ⚠️ Unaudited |
| AgaveIncentivesBulkClaimer | operational_periphery | gnosis | [`0xc777eb...913277`](./contracts/gnosis-100/0xc777eb53b224ab27dd348d2a678bfd20ce913277/) | ⚠️ Unaudited |
| AgaveOracle | operational_periphery | gnosis | [`0x062b9d...85db7a`](./contracts/gnosis-100/0x062b9d1d3f5357ef399948067e93b81f4b85db7a/) | ⚠️ Unaudited |
| AgaveProtocolDataProvider | unknown | gnosis | 3 deployments: gnosis [`0x57cba8...bdb2cb`](./contracts/gnosis-100/0x57cba82270fd0eeb3fc76b7c97480a8720bdb2cb/); gnosis `0x8cc3f9...1ab097`; gnosis `0xe67293...b51329` | ⚠️ Unaudited |
| AgaveReimbursementReclaimer | operational_periphery | gnosis | [`0xec8baf...ca9620`](./contracts/gnosis-100/0xec8baf09eb04a0e820c80967d2eab0980fca9620/) | ⚠️ Unaudited |
| AgaveswapInterfaceMulticall | periphery | gnosis | [`0x466df2...a7b1d7`](./contracts/gnosis-100/0x466df21ffb4b1ca195abf59dfc41a0c98da7b1d7/) | ⚠️ Unaudited |
| AgaveswapV3Factory | registry | gnosis | 2 deployments: gnosis [`0x0cf086...55b66f`](./contracts/gnosis-100/0x0cf086e8714571c85b3e88b541fcac763555b66f/); gnosis `0xa98c2e...d047c3` | ⚠️ Unaudited |
| AgaveTreasuryRedeemer | operational_periphery | gnosis | [`0x33805e...bbc457`](./contracts/gnosis-100/0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457/) | ⚠️ Unaudited |
| AgaveTreasuryWithdrawer | operational_periphery | gnosis | [`0x91ed56...890018`](./contracts/gnosis-100/0x91ed5609e5b9d6991f024570025c872382890018/) | ⚠️ Unaudited |
| AToken | token | gnosis | 6 deployments: gnosis [`0x223fe0...2c7ac2`](./contracts/gnosis-100/0x223fe000fc6ef0ed36576d912e506b5f572c7ac2/); gnosis `0x3e2081...9ec2d2`; gnosis `0x8f0563...b9ee40`; gnosis `0x8f40f6...3a27ba`; gnosis `0xc8270d...e23725`; gnosis `0xdc77a0...92f381` | ⚠️ Unaudited |
| BridgeInterestReceiver | operational_periphery | gnosis | 2 deployments: gnosis [`0x17780d...625122`](./contracts/gnosis-100/0x17780d40287eb6d9605ec8b324605cf98a625122/); gnosis `0x670dae...059088` | ⚠️ Unaudited |
| BulkMerkleClaimer | operational_periphery | gnosis | [`0xb22935...f644b1`](./contracts/gnosis-100/0xb229353e8d34349e8e2951d06642902c87f644b1/) | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | operational_periphery | gnosis | [`0xae27e6...7b48c3`](./contracts/gnosis-100/0xae27e63307963850c4d30bfba78fc1116d7b48c3/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | gnosis | 13 deployments: gnosis [`0x0514ba...d599b1`](./contracts/gnosis-100/0x0514ba56e9efb43583b02aa91e38c295f7d599b1/); gnosis `0x103a06...5ee672`; gnosis `0x152fe5...40927f`; gnosis `0x1707a7...2046be`; gnosis `0x23c551...265126`; gnosis `0x5f539a...e0aba4`; gnosis `0x629a80...c6ee47`; gnosis `0x64bdf6...8628c3`; gnosis `0x794da8...254aa7`; gnosis `0x8c41d5...f0c254`; gnosis `0xa32b57...e6558d`; gnosis `0xe25309...a430e0`; gnosis `0xf7f880...386edc` | ⚠️ Unaudited |
| Erc20AMBOracle | operational_periphery | gnosis | [`0xb7f600...65f4ea`](./contracts/gnosis-100/0xb7f600845e4649ee5b8ee16d44d91bc0ee65f4ea/) | ⚠️ Unaudited |
| ERC4626SynchronicityPriceAdapter | operational_periphery | gnosis | 2 deployments: gnosis [`0x2cd349...449042`](./contracts/gnosis-100/0x2cd3494bb70a30f042fcfccab4d192f6b7449042/); gnosis `0x732958...6fa0ee` | ⚠️ Unaudited |
| GenericLogic | unknown | gnosis | [`0x985323...ce20a7`](./contracts/gnosis-100/0x985323cd58346d83e0a90ab6b8fec7025fce20a7/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | gnosis | 5 deployments: gnosis [`0x1437f1...4eadfe`](./contracts/gnosis-100/0x1437f115bd1d206c1c0955ac70debafd964eadfe/); gnosis `0x315a82...ba0553`; gnosis `0x39ce83...48a050`; gnosis `0x65efaf...474c47`; gnosis `0xf1dc94...8cb26f` | ⚠️ Unaudited |
| LendingPool | core_logic | gnosis | 4 deployments: gnosis [`0x1881dd...1a6bec`](./contracts/gnosis-100/0x1881dd4589447aaa1d8fd0515878fbed971a6bec/); gnosis `0x73280c...d024fd`; gnosis `0xbd804a...054921`; gnosis `0xe183c7...fd1e2d` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | gnosis | 2 deployments: gnosis [`0x9bc06e...60ac2b`](./contracts/gnosis-100/0x9bc06ed9cd3c15eee13b05ce52442d22f060ac2b/); gnosis `0xd7e650...db949f` | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | gnosis | [`0x4e7dfd...9304ca`](./contracts/gnosis-100/0x4e7dfd59060e2c91495b006617f7e429439304ca/) | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | gnosis | [`0xa83a29...22c5c1`](./contracts/gnosis-100/0xa83a29e98b0177138dddcc3a4b6536442d22c5c1/) | ⚠️ Unaudited |
| MerkleClaimERC20 | operational_periphery | gnosis | 3 deployments: gnosis [`0x15b7bd...241a95`](./contracts/gnosis-100/0x15b7bd2686650eadb6feb1be6e9134c1f9241a95/); gnosis `0xb88d66...7399ba`; gnosis `0xc21a7b...72edf7` | ⚠️ Unaudited |
| NFTDescriptor | token | gnosis | [`0xedc96c...a05cf1`](./contracts/gnosis-100/0xedc96ca776c0336cf3924dbfd1d0a54fbba05cf1/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | gnosis | [`0x1f7810...dd2f75`](./contracts/gnosis-100/0x1f78108fdd0cb4bb0475fc9ce9e9a92688dd2f75/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | gnosis | [`0x5ad434...137bed`](./contracts/gnosis-100/0x5ad43460308287189cf7207f7750373649137bed/) | ⚠️ Unaudited |
| Quoter | periphery | gnosis | [`0x96f4bf...18f57c`](./contracts/gnosis-100/0x96f4bf695ed277aecd44fc176d4f2643ba18f57c/) | ⚠️ Unaudited |
| ReserveLogic | unknown | gnosis | [`0x1b0348...ae9966`](./contracts/gnosis-100/0x1b0348c67d01a46627ce1d8f9e2e218c9eae9966/) | ⚠️ Unaudited |
| SavingsXDai | unknown | gnosis | 2 deployments: gnosis [`0x4ab77f...a171d1`](./contracts/gnosis-100/0x4ab77f4883d099992c69d417ff8708220da171d1/); gnosis `0xaf2047...483701` | ⚠️ Unaudited |
| SavingsXDaiAdapter | adapter | gnosis | 3 deployments: gnosis [`0x02ae11...f63907`](./contracts/gnosis-100/0x02ae11dc9783467e0830041399a2d48251f63907/); gnosis `0xd499b5...591a94`; gnosis `0xfae3a9...fd7b9c` | ⚠️ Unaudited |
| StableDebtToken | token | gnosis | 6 deployments: gnosis [`0x059c47...9bf73a`](./contracts/gnosis-100/0x059c47cdad2c96ca5551921124b75b82119bf73a/); gnosis `0x100bd9...7ec7c3`; gnosis `0x3eb706...ddfdf4`; gnosis `0x5d9a99...c7dc09`; gnosis `0xeb5767...658af6`; gnosis `0xfcdd91...cd3d23` | ⚠️ Unaudited |
| StakedAgave | token | gnosis | [`0x2e91cd...ec2695`](./contracts/gnosis-100/0x2e91cd1bf5ab2104633112ef35a7eb6998ec2695/) | ⚠️ Unaudited |
| Swapper_Coordinator | adapter | gnosis | 3 deployments: gnosis [`0xba51d0...896eb4`](./contracts/gnosis-100/0xba51d09224e14caef5ab6f3c9e8f3b9d7f896eb4/); gnosis `0xdd4945...99ca42`; gnosis `0xf429c5...a621e9` | ⚠️ Unaudited |
| Swapper_Helper | adapter | gnosis | 4 deployments: gnosis [`0x7ffc86...13d1a0`](./contracts/gnosis-100/0x7ffc86c7a61a8874d3819c32b12618235613d1a0/); gnosis `0x8b707c...e9af64`; gnosis `0xb45016...0ce5b7`; gnosis `0xb62488...f89489` | ⚠️ Unaudited |
| Swapper_UserProxyFactory | adapter | gnosis | 3 deployments: gnosis [`0x0f0a02...a6efa0`](./contracts/gnosis-100/0x0f0a02d56708e01af559f7d80b916c178ca6efa0/); gnosis `0x19bfaf...1abd10`; gnosis `0x456844...9179ff` | ⚠️ Unaudited |
| Swapper_UserProxyImplementation | adapter | gnosis | 10 deployments: gnosis [`0x2869b6...87145f`](./contracts/gnosis-100/0x2869b62af774fe012de271de6dc7bca0cd87145f/); gnosis `0x412573...b0b078`; gnosis `0x475506...27ff7b`; gnosis `0x5668e5...8fe99a`; gnosis `0x98216d...e3b385`; gnosis `0xb0b0f7...2a08b8`; gnosis `0xdb8e23...f419ea`; gnosis `0xea45ce...4d5636`; gnosis `0xf7da8f...e63284`; gnosis `0xfd4283...8ac91d` | ⚠️ Unaudited |
| Swapper_Utils | adapter | gnosis | [`0xac942b...519bdb`](./contracts/gnosis-100/0xac942b1acbbb080d30421c8a3ab20a73fa519bdb/) | ⚠️ Unaudited |
| SwapRouter | adapter | gnosis | [`0x662a92...869728`](./contracts/gnosis-100/0x662a928e66a7f874ee06e94eb82d4ede73869728/) | ⚠️ Unaudited |
| TickLens | periphery | gnosis | [`0x76bbec...787ed9`](./contracts/gnosis-100/0x76bbec1b0d287169d102ca985aaad8deac787ed9/) | ⚠️ Unaudited |
| UiPoolDataProvider | core_logic | gnosis | 4 deployments: gnosis [`0x169eb8...1744c5`](./contracts/gnosis-100/0x169eb836bd947670d2d26b64157a8723b61744c5/); gnosis `0x46ad11...512e8f`; gnosis `0x569358...d2075e`; gnosis `0x606a84...dbfe88` | ⚠️ Unaudited |
| V3Migrator | periphery | gnosis | [`0x53ba4b...16921f`](./contracts/gnosis-100/0x53ba4b2ed945e1eba48056ac02e610d10616921f/) | ⚠️ Unaudited |
| ValidationLogic | unknown | gnosis | [`0x09bf5d...25e678`](./contracts/gnosis-100/0x09bf5d4dff196c000fb735f94e4b22340b25e678/) | ⚠️ Unaudited |
| VariableDebtToken | token | gnosis | 6 deployments: gnosis [`0x0d2335...1e81dd`](./contracts/gnosis-100/0x0d23359086cbdda2f49e29de370ab85b451e81dd/); gnosis `0x25fa1d...376471`; gnosis `0x563062...a35789`; gnosis `0x954632...7325b0`; gnosis `0xa476a5...034fd7`; gnosis `0xf63736...f3a2c4` | ⚠️ Unaudited |
| WETHGateway | token | gnosis | [`0x4e1461...2e52c0`](./contracts/gnosis-100/0x4e1461882e72232807f7a65081321b543e2e52c0/) | ⚠️ Unaudited |
| WrappedAgTokenFactory | registry | gnosis | [`0x6c1878...d434d2`](./contracts/gnosis-100/0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2/) | ⚠️ Unaudited |
| WrappedAgTokenUpgradeable | token | gnosis | 3 deployments: gnosis [`0x78eb5d...9c304b`](./contracts/gnosis-100/0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b/); gnosis `0xa1d0ad...a6bdc5`; gnosis `0xfc4c44...b0d716` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | `0x02e2e6...c6eef5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x071bf5...8b73c3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x109f6f...8d23fa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x17dce5...d55c71` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1964b0...3ceff2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1c5b8d...ecf942` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x201959...9437a6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x22df53...3b02c4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2ac1f9...4f1904` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2ffaba...775aab` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x35dd00...b85db6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x40d2e7...c67b39` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x46eb3f...cd581c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4c8b99...bfb961` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4da5be...3eaae2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x562e49...9ec2bc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x5be5d4...c20dc3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x678b93...1cc69c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6a0614...fc387a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6c8ae5...7beb75` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7057a9...9c2e23` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7b81e0...b93dc1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7eb44b...651fd4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x832cd1...6c4ca2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8677a7...e27136` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x88be51...2ecb49` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8b1fcd...15da34` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8d43d5...0905b9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x8eb798...46d250` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9065d6...6e56a2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x912824...0e7570` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x921571...5f89d4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9380d8...7f368f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x95d0e8...470b3a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9f1837...4ae99b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xae8988...50b423` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb69aa1...188dde` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb6f20b...679725` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbc07ce...152f0e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xbd5690...17ef81` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc1529e...830986` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc66e94...babc42` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd99d9d...e2f10e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe7728d...3861e8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xed1d03...473a5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0xec8baf...ca9620`](./contracts/gnosis-100/0xec8baf09eb04a0e820c80967d2eab0980fca9620/) | AgaveReimbursementReclaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x17780d...625122`](./contracts/gnosis-100/0x17780d40287eb6d9605ec8b324605cf98a625122/) | BridgeInterestReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xb22935...f644b1`](./contracts/gnosis-100/0xb229353e8d34349e8e2951d06642902c87f644b1/) | BulkMerkleClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4ab77f...a171d1`](./contracts/gnosis-100/0x4ab77f4883d099992c69d417ff8708220da171d1/) | SavingsXDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x02ae11...f63907`](./contracts/gnosis-100/0x02ae11dc9783467e0830041399a2d48251f63907/) | SavingsXDaiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xba51d0...896eb4`](./contracts/gnosis-100/0xba51d09224e14caef5ab6f3c9e8f3b9d7f896eb4/) | Swapper_Coordinator | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x7ffc86...13d1a0`](./contracts/gnosis-100/0x7ffc86c7a61a8874d3819c32b12618235613d1a0/) | Swapper_Helper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0f0a02...a6efa0`](./contracts/gnosis-100/0x0f0a02d56708e01af559f7d80b916c178ca6efa0/) | Swapper_UserProxyFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xac942b...519bdb`](./contracts/gnosis-100/0xac942b1acbbb080d30421c8a3ab20a73fa519bdb/) | Swapper_Utils | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 36 |
| standard_library | 1 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
