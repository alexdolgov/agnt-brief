# Agentic Audit Brief: Impermax Finance

⚠️ Lifecycle status: DEAD - TVL dropped 22.4% over 90 days

## Project Overview

- Project: Impermax Finance (`impermax-finance`)
- Website: [https://impermax.finance/](https://impermax.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T15:28:06.906Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, avalanche, base, blast, canto, ethereum, fantom, linea, moonriver, optimism, polygon, scroll, sonic, unichain, zksync-era
- Contract surface: 52 unique implementations (95 raw deployments)
- DeFi Llama TVL: $735,866.00
- On-chain TVL (included contracts): $76,826.08
- TVL by chain: Arbitrum $47,546.48 | Polygon $29,228.51 | Avalanche $51.09

## Project Description

Impermax Finance is a decentralized lending protocol that enables users to borrow and lend assets across multiple chains. It uses liquidity pool tokens as collateral and provides leveraged yield farming through its lending pools. The protocol operates through factory-deployed lending pairs and staked LP tokens, with oracles for price feeds.

### Architecture

Impermax V2 and V3 are the core lending protocol versions, with V2 being the most widely deployed across chains. They share infrastructure like oracles (SimpleUniswapOracle) and routers (Router01/02/03) for interacting with liquidity pools. The IBEX token system is separate but may be used for governance or incentives across the protocol. Blast Points and Gold is a chain-specific module that likely integrates with V2 or V3 on Blast.

## Contract Surface Quality

- Indexed contracts: 568; live-surface contracts included: 95 (86 live, 9 unknown).
- Excluded by liveness: 473 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Dependencies extracted: 21; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/36 (13.9%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 52
- Raw deployments: 95
- Audits discovered: 9
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $76,826.08
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 2 aging, 3 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $76,826.08 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 4 | 11.1% | 2024-04 |
| unknown | Tier 2 | 3 | 8.3% | 2024-01 |
| Guardian | Tier 2 | 1 | 2.8% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BDeployer | unknown | unichain | n/a | [`0x5ed5b9...90f133`](./contracts/unichain-130/0x5ed5b923e84eb005b48463ae07f3b1c84f90f133/) | ✅ Audited |
| CDeployer | unknown | unichain | n/a | [`0x8921c4...bf5ba9`](./contracts/unichain-130/0x8921c45382698295c4f7a6c753ef2799d0bf5ba9/) | ✅ Audited |
| Factory | registry | sonic | n/a | 5 deployments: polygon `0x7f7ad5...febcd3`; sonic [`0x26fca5...112b91`](./contracts/sonic-146/0x26fca5916c20d252feef7a58e39886d3d3112b91/); base `0x66ca66...7c2d9f`; avalanche `0xc7f24f...492739`; linea `0x7a9212...8ee746` | ✅ Audited |
| ImpermaxV3Factory | registry | unichain | n/a | 2 deployments: unichain [`0x50e711...c15e14`](./contracts/unichain-130/0x50e7116c4a9624a2d562ee0ab5209f3834c15e14/); base `0x870fd2...9fc120` | ✅ Audited |
| InitializedDistributor | operational_periphery | ethereum | n/a | [`0xaf82ee...8a87ab`](./contracts/ethereum-1/0xaf82ee9246a608484e8567fadbef64ac1b8a87ab/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-42963 | [`0x566592...a2d57b`](./contracts/arbitrum-42161/0x56659245931cb6920e39c189d2a0e7dd0da2d57b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-42962 | [`0xf972da...b298f6`](./contracts/polygon-137/0xf972daced7c6b03223710c11413036d17eb298f6/) | ⚠️ Unaudited |
| StakedLPToken0212 | token | avalanche | n/a | 2 deployments: avalanche [`0x677dce...4821a6`](./contracts/avalanche-43114/0x677dce0683e6db30325cd97e8d04d138f34821a6/); avalanche `0xc532a2...bad1b1` | ⚠️ Unaudited |
| BridgedToken | operational_periphery | linea | unit-42964 | [`0xcf0f95...7c3841`](./contracts/linea-59144/0xcf0f95e34f25d1bb3d9cad3cbb2eb40dab7c3841/) | ⚠️ Unaudited |
| FactoryStable | registry | linea | n/a | 2 deployments: sonic `0x6e1e98...062564`; linea [`0x0d5433...130675`](./contracts/linea-59144/0x0d5433fee91fb2db9dd6a74267dd900ec2130675/) | ⚠️ Unaudited |
| IBEX | unknown | blast | n/a | 2 deployments: ethereum `0xf655c8...161dc6`; blast [`0x9f04b6...188e6a`](./contracts/blast-81457/0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a/) | ⚠️ Unaudited |
| ImpermaxChef | unknown | moonriver | n/a | [`0xd299d5...4a7caa`](./contracts/moonriver-1285/0xd299d53fc3b09038765af2091a0647e2304a7caa/) | ⚠️ Unaudited |
| ImpermaxConfigManager | governance | sonic | n/a | 3 deployments: sonic [`0x1a3e33...73b37e`](./contracts/sonic-146/0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e/); base `0x9acafc...5dce7c`; linea `0x3a65e7...f1796a` | ⚠️ Unaudited |
| ImpermaxV2SolidlyRouter01 | adapter | blast | n/a | 4 deployments: sonic `0xb3b140...129331`; base `0x98b55c...8b78cd`; linea `0x6e658a...5caf31`; blast [`0x4891a7...5732fb`](./contracts/blast-81457/0x4891a732098084dc4bc7290775ffdd23ec5732fb/) | ⚠️ Unaudited |
| ImpermaxV2UniV2Router01 | adapter | base | n/a | 3 deployments: base [`0x46b9b1...b699df`](./contracts/base-8453/0x46b9b1a483f5e64a20bbbeecbf54224167b699df/); arbitrum `0x8f4065...0970fb`; arbitrum `0xf09d8f...1c2232` | ⚠️ Unaudited |
| ImpermaxV3UniV3Router01 | adapter | unichain | n/a | 2 deployments: unichain [`0x58c5ca...c822c5`](./contracts/unichain-130/0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5/); arbitrum `0xe8cd0d...ac8459` | ⚠️ Unaudited |
| LendingVaultV2Factory | registry | base | n/a | 2 deployments: unichain `0xb0771d...59377c`; base [`0x77fb0f...dd9c8d`](./contracts/base-8453/0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d/) | ⚠️ Unaudited |
| LendingVaultWatcher01 | core_logic | unichain | n/a | [`0x638855...70d1ed`](./contracts/unichain-130/0x638855078c2190118cc8228e62ec4781e970d1ed/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | polygon | n/a | [`0x9c7213...984aba`](./contracts/polygon-137/0x9c7213207b5f8726164c96a76a4b9c0fbf984aba/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | avalanche | n/a | [`0x089d3d...f0c824`](./contracts/avalanche-43114/0x089d3daf549f99553c2182db24bc4336a4f0c824/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xb8a9a9...dec24f`](./contracts/base-8453/0xb8a9a92dfe1303728394dd0f8362a09962dec24f/) | ⚠️ Unaudited |
| PoolTokenRouter01 | adapter | linea | n/a | 4 deployments: unichain `0xe3fe59...34e4ec`; arbitrum `0x544dac...690cd8`; linea [`0x1c44fd...30aad0`](./contracts/linea-59144/0x1c44fd7514525e1669f6e316d66dcbb42930aad0/); blast `0xe0ea1c...27a9ff` | ⚠️ Unaudited |
| Router01 | adapter | ethereum | n/a | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | ⚠️ Unaudited |
| Router02 | adapter | avalanche | n/a | 3 deployments: polygon `0x7c79a1...a83ba0`; moonriver `0x3271cc...fa05d5`; avalanche [`0x3039c2...9f461f`](./contracts/avalanche-43114/0x3039c26f9126833baca8edbf61c761cd909f461f/) | ⚠️ Unaudited |
| Router03 | adapter | base | n/a | 14 deployments: ethereum `0x6271c6...d44e4f`; optimism `0x6c2198...3b776a`; polygon `0x697673...a06333`; polygon `0xf117a3...40a9c2`; sonic `0xac72b4...cc87c8`; sonic `0xcbdf79...f09654`; base [`0x21d9d4...281ebf`](./contracts/base-8453/0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf/); base `0xc5d6cb...bc58f7`; arbitrum `0x58d966...f076d3`; arbitrum `0x9655c5...8b60b7`; avalanche `0xa8567d...11e4cf`; linea `0xc8bbc4...b468bc`; linea `0xeb81da...58926f`; blast `0x447b4e...713a02` | ⚠️ Unaudited |
| Router03Solidly | adapter | base | n/a | 4 deployments: polygon `0xd7f63a...956ac9`; base [`0x1ebc3b...bdb49f`](./contracts/base-8453/0x1ebc3b5911b99adde07944c75d9e03958abdb49f/); arbitrum `0x3b0368...97dd56`; avalanche `0xd18d2b...f5b8b8` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | n/a | [`0x78ab77...1ead5b`](./contracts/scroll-534352/0x78ab77f7d590fb101aa18affc238cbfea31ead5b/) | ⚠️ Unaudited |
| SimpleUniswapOracle | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x3271cc...fa05d5`](./contracts/polygon-137/0x3271cc175577465691e48196955e09d638fa05d5/); avalanche `0xc12e00...47fb6c` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase1 | registry | base | n/a | [`0x2a3221...0b62e8`](./contracts/base-8453/0x2a32215ba106039f5a96b6366338bdb9fb0b62e8/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase4 | registry | base | n/a | [`0x5b0694...00e86b`](./contracts/base-8453/0x5b06941953f97c13465f6b6e76e4f5b9f800e86b/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase5 | registry | sonic | n/a | [`0x543cc9...355d83`](./contracts/sonic-146/0x543cc9542314e0bec710eccd03586006df355d83/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase7 | registry | sonic | n/a | [`0x032bea...e1c92e`](./contracts/sonic-146/0x032bea464973692fe7d9b016232166356de1c92e/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyStable5 | registry | sonic | n/a | [`0x0e5f23...3fe70f`](./contracts/sonic-146/0x0e5f23675abab707d9f17da2ee883a77e13fe70f/) | ⚠️ Unaudited |
| StakedLPTokenSolidlyBase1 | token | avalanche | n/a | [`0x96f1f1...440ec1`](./contracts/avalanche-43114/0x96f1f13865f11e2ec0e15051415f420dac440ec1/) | ⚠️ Unaudited |
| StakingRouter | adapter | arbitrum | n/a | [`0xb323c5...0679b0`](./contracts/arbitrum-42161/0xb323c5bcb066ea69d90ac21d74b714b52f0679b0/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08650b...5b3293`](./contracts/ethereum-1/0x08650bb9dc722c9c8c62e79c2bafa2d3fc5b3293/); ethereum `0x8dcba0...79dd13`; ethereum `0xa00d47...847c91`; polygon `0x5f819f...26f8f5`; arbitrum `0xb7e5e7...6cc6c5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | unichain | n/a | `0x367c0f...5d5694` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3ee621...9e684f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x732113...fc0448` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xdaa6ea...671f0c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf0b166...9e334d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x60ae5f...624556` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x877a33...73eb1c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x958876...211256` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9b4ae9...7a945b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb97b6e...e6c696` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb9f341...cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbe9f8c...47991d` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x6ce1a2...b46e36` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x9708e0...d898e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c7910...b2beda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8b6f1...28e774` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-02-08_Impermax.pdf](https://github.com/GuardianAudits/Audits/blob/main/Impermax/2025-02-08_Impermax.pdf) | Guardian | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [Bailsec - Impermax - V3 Core - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Impermax%20-%20V3%20Core%20-%20Final%20Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 4 | high |
| [CertiK Audit Report for impermax-x-uniswapv2-core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/CertiK%20Audit%20Report%20for%20impermax-x-uniswapv2-core.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | 7 | high |
| [SC_impermax_core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/SC_impermax_core.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2FQLbxcYMLJhQNoWJKXQo6%2FImpermax%20Tokenized%20Aerodrome%20Report.pdf?alt=media) | Guardian | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2Fc5KfXIpov0BrQvrkHSFU%2FImpermax-Report.pdf?alt=media) | Guardian, Bailsec, Cantina | Audit | 2025-06 | aging | Direct | contract_name | 0 | n/a |
| [Token audit by Certik](https://github.com/Impermax-Finance/IMX/blob/main/audit/CertiK%20Audit%20Report%20for%20IMX.pdf) | CertiK | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Periphery audit by Cyber Unit](https://github.com/Impermax-Finance/impermax-x-uniswapv2-periphery/blob/main/audit/SC_impermax_periphery.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Oracle audit by Cyber Unit](https://github.com/Impermax-Finance/simple-uniswap-oracle/blob/main/audit/SC_impermax_oracle.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x677dce...4821a6`](./contracts/avalanche-43114/0x677dce0683e6db30325cd97e8d04d138f34821a6/) | StakedLPToken0212 | token | $51.09 | Verified native implementation with $51.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0d5433...130675`](./contracts/linea-59144/0x0d5433fee91fb2db9dd6a74267dd900ec2130675/) | FactoryStable | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x9f04b6...188e6a`](./contracts/blast-81457/0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a/) | IBEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xd299d5...4a7caa`](./contracts/moonriver-1285/0xd299d53fc3b09038765af2091a0647e2304a7caa/) | ImpermaxChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a3e33...73b37e`](./contracts/sonic-146/0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e/) | ImpermaxConfigManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4891a7...5732fb`](./contracts/blast-81457/0x4891a732098084dc4bc7290775ffdd23ec5732fb/) | ImpermaxV2SolidlyRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46b9b1...b699df`](./contracts/base-8453/0x46b9b1a483f5e64a20bbbeecbf54224167b699df/) | ImpermaxV2UniV2Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x58c5ca...c822c5`](./contracts/unichain-130/0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5/) | ImpermaxV3UniV3Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77fb0f...dd9c8d`](./contracts/base-8453/0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d/) | LendingVaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x638855...70d1ed`](./contracts/unichain-130/0x638855078c2190118cc8228e62ec4781e970d1ed/) | LendingVaultWatcher01 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1c44fd...30aad0`](./contracts/linea-59144/0x1c44fd7514525e1669f6e316d66dcbb42930aad0/) | PoolTokenRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3039c2...9f461f`](./contracts/avalanche-43114/0x3039c26f9126833baca8edbf61c761cd909f461f/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21d9d4...281ebf`](./contracts/base-8453/0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ebc3b...bdb49f`](./contracts/base-8453/0x1ebc3b5911b99adde07944c75d9e03958abdb49f/) | Router03Solidly | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3271cc...fa05d5`](./contracts/polygon-137/0x3271cc175577465691e48196955e09d638fa05d5/) | SimpleUniswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a3221...0b62e8`](./contracts/base-8453/0x2a32215ba106039f5a96b6366338bdb9fb0b62e8/) | StakedLPTokenFactorySolidlyBase1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b0694...00e86b`](./contracts/base-8453/0x5b06941953f97c13465f6b6e76e4f5b9f800e86b/) | StakedLPTokenFactorySolidlyBase4 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x543cc9...355d83`](./contracts/sonic-146/0x543cc9542314e0bec710eccd03586006df355d83/) | StakedLPTokenFactorySolidlyBase5 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x032bea...e1c92e`](./contracts/sonic-146/0x032bea464973692fe7d9b016232166356de1c92e/) | StakedLPTokenFactorySolidlyBase7 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0e5f23...3fe70f`](./contracts/sonic-146/0x0e5f23675abab707d9f17da2ee883a77e13fe70f/) | StakedLPTokenFactorySolidlyStable5 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x96f1f1...440ec1`](./contracts/avalanche-43114/0x96f1f13865f11e2ec0e15051415f420dac440ec1/) | StakedLPTokenSolidlyBase1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb323c5...0679b0`](./contracts/arbitrum-42161/0xb323c5bcb066ea69d90ac21d74b714b52f0679b0/) | StakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 2 |
| standard_library | 6 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=184

Zero-match audit list:

- [16480] SC_impermax_core.pdf
- [16483] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf
- [16484] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf
- [16486] Periphery audit by Cyber Unit
- [16487] Oracle audit by Cyber Unit

Fork inheritance lineage and inherited audits are included when available.
